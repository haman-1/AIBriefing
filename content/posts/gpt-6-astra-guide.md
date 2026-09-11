---
title: "GPT-6 아스트라 가격·사용법 총정리 — 플랜별 요금과 아스트라 프로 차이"
date: 2026-09-08T10:00:00+09:00
draft: false
description: GPT-6 Astra 가격 총정리. API는 100만 토큰당 입력 $10·출력 $50이고 GPT-5.6 Sol의 절반 수준. ChatGPT Plus(월 $20)·Pro(월 $200) 순차 제공 중. 아스트라 프로 차이까지 표로 정리했다.
summary: GPT-6 Astra는 지금 Pro·Enterprise·Business에 먼저 풀리고 Plus는 며칠 내 확대 중이다. API 가격은 100만 토큰당 $10/$50로 이전 모델의 절반 수준. 플랜별 요금과 아스트라 프로 차이를 표로 정리한다.
categories: ['모델']
tags: ['GPT-6', 'OpenAI', '가이드']
cover:
  image: covers/astra.jpg
  alt: GPT-6 아스트라 가이드 커버 이미지
images: ['covers/astra.jpg']
---

> **2026년 9월 8일 기준** — 배포 상황과 가격은 변동될 수 있어 변경 확인 시 이 글을 업데이트합니다.

## 빠른 답

- **지금 쓸 수 있나?** Pro·Enterprise·Business 사용자에게 우선 배포됐고 **Plus는 지금 점진적으로 풀리고 있다**. 며칠 내 모든 유료 플랜으로 확대 예정이다.
- **가격은?** 구독은 기존 그대로 — Plus 월 $20(약 3만 원), Pro 월 $200(약 29만 원). **API는 100만 토큰당 입력 $10·출력 $50**으로 The Decoder 보도 기준 GPT-5.6 Sol의 절반 수준이다.
- **아스트라 프로(Astra Pro)는 따로 돈 내나?** 아니다. Pro·Business·Enterprise 구독에 포함되며 구독 한도 내에서 쓰고, 추가 크레딧만 살 수 있다.

## 지금 쓸 수 있나 — 배포 현황

OpenAI는 9월 3일 발표 당시 "일부 조직에 즉시 배포, 며칠 내 Plus·Pro·Business·Enterprise 전체 확대"라고 밝혔다. 이후 The Decoder 보도와 OpenAI 커뮤니티 현황을 종합하면:

1. **Pro·Enterprise·Business Premium** — 배포 완료
2. **Plus** — 점진적(graduate) rollout 진행 중. 모델 선택기에 보이지 않아도 며칠 내 활성화된다
3. 모델명이 환경에 따라 **'GPT-6 Pro'로 표시**될 수 있다는 사용자 보고가 있다

배포 안전 시스템 카드는 Astra를 "OpenAI가 광범위하게 배포한 모델 중 가장 강력한 모델"로 소개했다 — 사이버 역량 평가 'Critical' 등급 충족 후 출시된 첫 사례라 일부러 단계를 나눠 푸는 중이라는 해석이 있다.

## 가격 — 구독과 API

**구독(ChatGPT 앱)**:

| 플랜 | 월 요금 | GPT-6 Astra |
|---|---|---|
| Free | 무료 | 이번 발표에서 언급 없음 |
| Plus | $20 (약 3만 원) | 점진 배포 중 |
| Pro | $200 (약 29만 원) | 사용 가능 + Astra Pro 포함 |
| Business | 1인당 월 요금制 | 사용 가능 |
| Enterprise | 계약제 | 사용 가능 (기본 비활성, 관리자 활성화) |

**API**:

| 항목 | 가격 |
|---|---|
| 입력 100만 토큰 | $10 |
| 출력 100만 토큰 | $50 |
| Fast mode (2배 속도) | 2배 가격 |
| Zero Data Retention | 지원 |

API 모델명은 `gpt-6-astra`이며 Azure·AWS Bedrock에서도 제공된다. 참고로 이전 세대 GPT-5.6 Sol의 가격이 입력 $20/출력 $100이었으니 **정확히 절반**이다.

## 아스트라 프로(Astra Pro)가 뭐가 다른가

OpenAI 공식 발표에서 Astra Pro는 Pro·Business·Enterprise 플랜 사용자에게 제공되는 상위 구성이다. 구독 한도에 포함되고 추가 크레딧을 살 수 있다. 일반 Astra와의 정확한 성능·속도 차이는 OpenAI가 별도 수치를 공개하지 않았다 — 첫 실측 리뷰가 나오면 이 섹션을 업데이트하겠다.

## 성능은 얼마나 좋아졌나

주요 벤치마크만 추리면:

| 벤치마크 | GPT-6 Astra | GPT-5.6 Sol |
|---|---|---|
| OSWorld 2.0 (컴퓨터 사용) | **72.6%** | 65.7% |
| Terminal-Bench 4.0 (코딩) | **57.9%** | 37.3% |
| Agents' Last Exam (실무 작업) | **59.3%** | 53.6% |
| ExploitBench (보안) | **100%** | 78.5% |

컴퓨터를 직접 조작하는 작업이 빨라진 게 가장 체감될 부분이다 — 같은 과제를 GPT-5.6 Sol이 약 75분 걸리던 걸 Astra는 약 40분에 끝낸다(약 47% 단축). 발표 내용 전체는 [GPT-6 Astra 공개 — 발표 상세 정리](/posts/openai-gpt-6-astra-launch/)에서 볼 수 있다.

## 자주 묻는 질문

**Q. 무료 사용자도 쓸 수 있나요?**
이번 발표에서 무료 플랜 언급은 없었다. 유료 구독 또는 API·Azure·Bedrock으로만 가능하다.

**Q. Plus인데 모델 선택기에 안 보여요.**
정상이다. 점진 배포 중이며 며칠 내 활성화된다. 커뮤니티에서는 'GPT-6 Pro'라는 이름으로 표시될 수 있다는 보고도 있다.

**Q. 한국어도 되나요?**
ChatGPT의 한국어 UI·한국어 대화 사용에 영향을 주는 변경은 발표되지 않았다. API에서도 한국어 프롬프트를 그대로 쓸 수 있다.

**Q. GPT-5.6 Sol/Terra/Luna는 어떻게 되나요?**
GPT-6부터 성능별 3티어 네이밍을 단일 모델 체계로 전환했다. 기존 모델의 지원 종료 일정은 아직 공개되지 않았다.

**Q. 기업 데이터가 학습에 쓰이나요?**
Zero Data Retention(데이터 보존 없음) 옵션을 지원한다. 엔터프라이즈는 기본 비활성 상태로 배포된다.

## 출처

- [OpenAI — GPT-6 Astra 공식 발표](https://openai.com/index/gpt-6-astra/)
- [ChatGPT 요금제 공식 페이지](https://chatgpt.com/ko-KR/pricing/)
- [The Decoder — GPT-6 배포 현황·가격 보도](https://the-decoder.com/)
- [OpenAI 커뮤니티 — Plus 배포 관련 문의](https://community.openai.com/t/clarification-needed-gpt-6-astra-was-announced-for-all-chatgpt-plus-users-but-plus-access-is-currently-limited-to-work-codex/1395038)
- [OpenAI 배포 안전 시스템 카드](https://deploymentsafety.openai.com/)
