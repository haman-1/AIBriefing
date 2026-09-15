# 커버 이미지 생성 — Gemini API (gemini-3.1-flash-image)
# 사용법: .\scripts\gen_cover.ps1 -OutPath "static\covers\<파일명>.jpg" -Prompt "장면 설명"
# 키: F:\GlmWork\gemini-api-key.txt (저장소 밖 — 절대 커밋 금지)
param(
    [Parameter(Mandatory = $true)][string]$OutPath,
    [Parameter(Mandatory = $true)][string]$Prompt
)

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
Write-Output "생성 완료: $OutPath"
