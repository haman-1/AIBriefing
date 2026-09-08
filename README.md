# AI 브리핑 — Hugo 블로그

매일의 AI 뉴스와 트렌드를 정리하는 한국어 블로그. Hugo + PaperMod + GitHub Pages.

## 로컬에서 미리보기

```powershell
hugo server -b http://localhost:1313/
# 브라우저에서 http://localhost:1313 열기
```

## 글 쓰는 법

`content/posts/`에 마크다운 파일을 만듭니다. 파일명이 URL 슬러그가 됩니다.

```powershell
hugo new content posts/my-new-post.md
```

front matter(파일 맨 위 `---` 사이)에서 `draft: true`를 지우면 발행됩니다.

```markdown
---
title: "글 제목"
date: 2026-09-08
description: "검색 결과에 표시될 요약 (150자 내외)"
categories: ["AI 활용"]
tags: ["ChatGPT"]
---
```

발행(푸시)하면 GitHub Actions가 자동으로 빌드·배포합니다. (약 1~2분 소요)

## 최초 배포 절차 (한 번만)

1. **GitHub에서 새 저장소 생성** — 이름: `AIBriefing` (빈 저장소, README 생성 안 함)
2. 원격 연결 및 푸시:
   ```powershell
   git remote add origin https://github.com/haman-1/AIBriefing.git
   git push -u origin main
   ```
3. **저장소 Settings → Pages → Source를 "GitHub Actions"로 변경** ← 필수!
4. **커스텀 도메인 연결** — 도메인 Registrar(판매사) DNS 설정에서:
   - `devsoo.com` (A 레코드 4개): `185.199.108.153` / `185.199.109.153` / `185.199.110.153` / `185.199.111.153`
   - `www.devsoo.com` (CNAME): `haman-1.github.io`
   - 저장소 **Settings → Pages → Custom domain**에 `devsoo.com` 입력 → 저장
   - 인증서 발급 후 **Enforce HTTPS** 체크
5. Actions 탭에서 "Deploy Hugo site to Pages" 워크플로가 초록불인지 확인
6. `https://devsoo.com/` 접속 확인

> 커스텀 도메인은 `static/CNAME` 파일(devsoo.com)로 유지되며, `hugo.toml`의
> `baseURL`도 `https://devsoo.com/`으로 설정돼 있다.

## 다음 단계 로드맵

- [ ] 구글 Search Console + 네이버 서치어드바이저 등록 (사이트맵 제출: `/sitemap.xml`)
- [ ] 글 20~30개 축적 (하루 1~2편)
- [ ] About/개인정보처리방침의 `[플레이스홀더]` 실제 값으로 교체
- [ ] AdSense 신청 → 승인 후 광고 코드 삽입
- [ ] (선택) 커스텀 도메인 연결
