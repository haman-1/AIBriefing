# 커버 이미지 생성 — Gemini API (gemini-3.1-flash-image)
# 사용법: .\scripts\gen_cover.ps1 -OutPath "static\covers\<파일명>.jpg" -Prompt "장면 설명"
# 키: F:\GlmWork\gemini-api-key.txt (저장소 밖 — 절대 커밋 금지)
# 생성 후 자동 후처리: 가로 1200px 리사이즈 + JPEG 품질 82 (목표 200KB 이하)
param(
    [Parameter(Mandatory = $true)][string]$OutPath,
    [Parameter(Mandatory = $true)][string]$Prompt
)

# --- 상투 구도 가드: "노트북 앞 사람" 장면 남발 방지 (경고만, 강제 X) ---
if ($Prompt -match '노트북|랩탑|laptop' -and $Prompt -match '사람|남자|여자|직장인|사용자|person') {
    Write-Warning "상투 구도 감지: '노트북 앞 사람' 장면이 이미 여러 커버에 사용됨 — 클로즈업·사물·배경 중심 등 다른 구도를 고려하세요."
}

# --- 실사(포토리얼) 가드: 평면 일러스트 계열 키워드 차단 ---
$forbidden = @('일러스트', '플랫', '평면', '2D', '2d', '드로잉', '만화', '카툰', 'cartoon', 'flat', 'illustration', 'vector', '아이콘', '라인아트')
$hit = $forbidden | Where-Object { $Prompt -match [regex]::Escape($_) }
if ($hit -and $Prompt -notmatch '3D\s*렌더|3d render') {
    Write-Error "프롬프트에 비실사 키워드 포함: $($hit -join ', ') — 실사 장면 설명으로 다시 작성하세요. 그래픽이 꼭 필요하면 '3D 렌더 스타일'을 명시하세요."
    exit 1
}

$key = (Get-Content "F:\GlmWork\gemini-api-key.txt" -Raw).Trim()
$model = "gemini-3.1-flash-image"  # 장당 $0.067 — 화질 필요 시 pro

$style = @"
$Prompt
스타일: 실사(포토리얼리스틱) 사진 톤, 자연스러운 조명, 깔끔한 구도.
가로 16:9 비율 커버 이미지. 글자·텍스트·워터마크는 넣지 않는다.
"@

$body = @{
    contents = @(@{ parts = @(@{ text = $style }) })
    generationConfig = @{ responseModalities = @("IMAGE") }
} | ConvertTo-Json -Depth 5

$resp = Invoke-RestMethod -Method Post -Uri "https://generativelanguage.googleapis.com/v1beta/models/${model}:generateContent" `
    -Headers @{ "x-goog-api-key" = $key } -ContentType "application/json; charset=utf-8" -Body ([System.Text.Encoding]::UTF8.GetBytes($body))

$img = $resp.candidates[0].content.parts | Where-Object { $_.inlineData } | Select-Object -First 1
if (-not $img) { Write-Error "이미지 응답 없음: $($resp | ConvertTo-Json -Depth 3)"; exit 1 }

$full = if ([IO.Path]::IsPathRooted($OutPath)) { $OutPath } else { Join-Path (Split-Path $PSScriptRoot -Parent) $OutPath }
[IO.File]::WriteAllBytes($full, [Convert]::FromBase64String($img.inlineData.data))

# --- 후처리: 가로 1200px 리사이즈 + 품질 82 재인코딩 (용량 절감) ---
Add-Type -AssemblyName System.Drawing
$maxW = 1200
$src = [System.Drawing.Image]::FromFile($full)
try {
    if ($src.Width -gt $maxW) {
        $newH = [int]($src.Height * $maxW / $src.Width)
        $bmp = New-Object System.Drawing.Bitmap($maxW, $newH)
        $g = [System.Drawing.Graphics]::FromImage($bmp)
        $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
        $g.DrawImage($src, 0, 0, $maxW, $newH)
        $g.Dispose()
        # 품질 82로 임시 저장 후 교체
        $codec = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | Where-Object { $_.MimeType -eq 'image/jpeg' }
        $ep = New-Object System.Drawing.Imaging.EncoderParameters(1)
        $ep.Param[0] = New-Object System.Drawing.Imaging.EncoderParameter([System.Drawing.Imaging.Encoder]::Quality, [long]82)
        $tmp = "$full.tmp.jpg"
        $bmp.Save($tmp, $codec, $ep)
        $bmp.Dispose()
        $src.Dispose()
        Move-Item $tmp $full -Force
    } else {
        $src.Dispose()
    }
} catch {
    try { $src.Dispose() } catch {}
    Write-Warning "후처리 실패(원본 유지): $_"
}

$kb = [math]::Round((Get-Item $full).Length / 1KB)
Write-Output "생성 완료: $OutPath (${kb}KB)"
