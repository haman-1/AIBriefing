---
title: "ChatGPT vs Gemini vs Claude 비교 총정리 — 2026년 9월 요금제·성능·한국 가격"
date: 2026-09-11T22:10:00+09:00
draft: false
description: ChatGPT·Gemini·Claude를 2026년 9월 기준으로 비교했다. API 단가는 13배 벌어졌고 한국 요금제는 월 1만 원대까지 내려왔다. 용도별 선택 기준과 한국 가격을 표로 정리했다.
summary: 2026년 9월 현재 세 서비스의 최상위 모델은 Claude Fable 5.1, GPT-6 Astra, Gemini 3.8 Flash다. 최상위 두 모델이 독립 평가 지능지수 53점으로 동점인 가운데 API 단가는 13배 차이다. 한국 요금제, API 가격, 용도별 선택 기준을 표로 비교한다.
categories: ['모델']
tags: ['ChatGPT', 'Gemini', '가이드']
cover:
  image: covers/chatgpt-gemini-claude.jpg
  alt: ChatGPT·Gemini·Claude 비교 가이드 커버 이미지
images: ['covers/chatgpt-gemini-claude.jpg']
---

> **2026년 9월 11일 기준** — 요금제와 모델 라인업은 자주 바뀝니다. 변경을 확인하면 이 글을 업데이트합니다.

## 빠른 답

- **가장 똑똑한 건?** 독립 평가기관 Artificial Analysis의 지능지수에서 **Claude Fable 5.1과 GPT-6 Astra가 53점으로 공동 1위**, Claude Opus 5가 51점으로 뒤를 이었다. 세 모델 모두 최고 추론 설정 기준이다.
- **가장 싼 건?** **Gemini 3.8 Flash**다. API 기준 100만 토큰당 입력 $0.75·출력 $3.75로 GPT-6 Astra($10/$50)의 **약 13분의 1**이다.
- **그럼 뭘 써야 하나?** 하나만 고른다면 범용·이미지·음성은 ChatGPT, 긴 글쓰기와 코딩은 Claude, 비용과 구글 연동은 Gemini다. 세 서비스 모두 무료 요금제가 있어 직접 겪어보고 정하는 편이 빠르다.

## 2026년 9월, 세 회사의 최신 모델

9월 첫 주에 세 회사가 사흘 간격으로 신모델을 쏟아냈다. 지금 비교의 출발점은 이 모델들이다.

| 서비스 | 최신 모델 | 출시 | 내세우는 강점 |
|---|---|---|---|
| OpenAI | **GPT-6 Astra** | 2026-09-03 | 컴퓨터를 직접 조작하는 에이전트 작업, 사이버보안, 수학 |
| Anthropic | **Claude Fable 5.1** (Opus 5는 7월 24일) | 2026-09-01 | 코딩과 장시간 지식 노동 |
| Google | **Gemini 3.8 Flash** | 2026-09-02 | 가격 대비 성능, 구글 서비스 연동 |

세 모델의 성격은 뚜렷하게 갈린다. GPT-6 Astra는 터미널과 브라우저를 직접 다루는 쪽에 무게를 뒀고, Claude Fable 5.1은 코딩과 과학 추론에서 강세를 보였다. Gemini 3.8 Flash는 경량 라인인데도 장기 소프트웨어 엔지니어링 과제에서 대형 모델에 근접한다는 평가를 받는다.

## 요금제 비교 — 한국에서 실제로 내는 돈

세 서비스의 유료 요금제는 모두 비슷한 계단식 구조다. 한국 가격까지 정리하면 이렇다.

| 요금제 | ChatGPT | Gemini | Claude |
|---|---|---|---|
| 무료 | 있음 | 있음 | 있음 |
| 저가 | Go 월 $8 (한국 약 15,000원) | **AI Plus 월 11,000원** | 없음 |
| 표준 | Plus 월 $20 | **AI Pro 월 29,000원** | Pro 월 $20 (앱스토어 33,000원) |
| 상위 | Pro 월 $100 | AI Ultra (최상위) | Max 월 $100 |
| 최상위 | Pro 월 $200 (앱스토어 29만 9,000원) | — | Max 월 $200 |

몇 가지 짚어둘 점이 있다.

- **ChatGPT는 앱스토어 결제가 더 비싸다.** Pro 요금제는 웹 결제가 월 $200(약 28만 8,000원)인데 애플 앱스토어에서는 29만 9,000원, 구글 플레이는 31만 원이다. 플랫폼 수수료와 부가세가 붙기 때문이다. 반대로 Plus는 환율이 1,320원을 넘으면 앱스토어 고정가가 유리해진다.
- **Claude는 올해 8월 22일부터 앱스토어 구독료가 33,000원으로 올랐다.** 종전 3만 원에서 10% 인상이다. Anthropic은 한국만 올린 게 아니라 환율 변동을 반영해 전 세계 앱스토어 가격을 달러 기준으로 다시 맞춘 결과라고 설명했다.
- **Gemini가 가장 낮은 문턱을 만들었다.** AI Plus 월 11,000원은 세 서비스 중 가장 싼 유료 요금제다. SK텔레콤 T 우주를 거치면 AI Pro를 월 26,900원에 쓸 수 있고, LG유플러스는 같은 29,000원에 YouTube 프리미엄을 묶어준다.

## API 가격 비교 — 지능지수는 2점, 가격은 13배

개발자나 사내 자동화에 붙일 거라면 구독료가 아니라 토큰 단가가 기준이 된다. 여기서 격차가 크게 벌어진다.

| 모델 | 입력 (100만 토큰) | 출력 (100만 토큰) | 비고 |
|---|---|---|---|
| GPT-6 Astra | $10 | $50 | 입력 27만 2천 토큰 초과 시 $20 / $75 |
| Claude Fable 5.1 | $10 | $50 | 캐시 읽기 $0.25 — 75% 인하 |
| Claude Opus 5 | $5 | $25 | |
| Claude Sonnet 5 | $2 | $10 | |
| **Gemini 3.8 Flash** | **$0.75** | **$3.75** | 2026년 12월 31일까지, 2027년부터 2배 |

최상위 모델 두 개(GPT-6 Astra, Claude Fable 5.1)가 같은 가격대를 형성한 게 눈에 띈다. 반면 Gemini 3.8 Flash는 입력 기준 13분의 1 수준이다. 같은 작업을 하루 수만 건 돌린다면 이 차이가 곧 예산이 된다.

다만 Gemini의 도입가는 **2026년 12월 31일까지만** 유효하고, 2027년 1월 1일부터 $1.50/$7.50으로 두 배가 된다. 장기 서비스를 설계한다면 정가 기준으로 예산을 잡아야 한다.

## 성능 — 평가 기준이 흔들린 한 주

Artificial Analysis가 2026년 9월 현재 공개한 지능지수 최상위권은 이렇다.

| 모델 | 지능지수 |
|---|---|
| Claude Fable 5.1 (max) | **53** |
| GPT-6 Astra (max) | **53** |
| Claude Opus 5 (max) | 51 |

여기엔 주의할 점이 있다. Artificial Analysis는 9월 첫째 주에 평가 체계를 두 차례 손봤다. GPT-6 Astra가 나온 날 종전 기준으로는 Claude Fable 5.1이 66점, Astra가 61점으로 5점 차였는데, 개정된 기준에서는 두 모델이 53점 동점이 됐다. 모델이 아니라 **평가표가 바뀐 결과**다.

세 회사가 각자 발표한 벤치마크 수치도 서로 직접 비교하기 어렵다. OpenAI는 자체 하네스(평가 도구)로 측정한 값을 내세우고, Anthropic과 Google도 각자의 환경에서 잰 값을 쓴다. 같은 이름의 벤치마크라도 설정이 다르면 점수가 달라진다. 그래서 아래처럼 **각 사가 공개한 값 중 성격이 분명한 것**만 골라 보는 편이 안전하다.

| 벤치마크 | GPT-6 Astra | Claude Fable 5.1 |
|---|---|---|
| 터미널·컴퓨터 조작 (Terminal-Bench 4.0) | 57.7% | 55.8% |
| 과학 추론 (Terminal-Bench Science 0.1) | 64.6% | 52.6% |
| 일반 추론 (HLE, 도구 사용) | 57.2% | 65.0% |
| 사이버보안 (ExploitBench) | 100% | — |

Gemini 3.8 Flash는 이 표에 넣을 숫자를 공개하지 않았다. 구글은 "대형 프런티어 모델 대부분을 능가한다"는 상대 평가만 내놨다. 대신 값을 13분의 1로 낮춘 것이 이 모델의 논지다.

정리하면 **GPT-6 Astra는 컴퓨터를 다루는 작업과 보안, Claude Fable 5.1은 일반 추론과 과학·코딩**에서 앞선다. Gemini 3.8 Flash는 무거운 에이전트 작업에서 이들과 겨루기보다, 성능을 조금 양보하고 물량을 돌리는 쪽에 맞는 선택이다.

## 어떤 걸 골라야 하나 — 용도별

| 이런 작업이라면 | 추천 | 이유 |
|---|---|---|
| 보고서·기획서·번역 등 긴 글쓰기 | **Claude** | 장문 일관성과 문체 유지가 강점 |
| 자료 조사, 최신 정보 확인 | **Gemini** | 검색 연동과 구글 워크스페이스 통합 |
| 이미지 생성, 음성 대화, 범용 잡무 | **ChatGPT** | 기능 폭이 가장 넓다 |
| 대량 자동화 (API) | **Gemini 3.8 Flash** | 같은 예산으로 13배 많은 토큰 처리 |
| 최고 난도 추론·에이전트 | **GPT-6 Astra** 또는 **Claude Fable 5.1** | 지능지수 공동 1위 |

세 개를 다 구독할 필요는 없다. 대부분은 무료 요금제로 며칠 써보고 하나를 고른 뒤, 부족한 영역이 생기면 그때 추가하는 편이 낫다.

## 지금 ChatGPT Pro 200달러는 신규 가입이 막혀 있다

가장 최근 변동이다. OpenAI는 **2026년 9월 10일부터 월 200달러 Pro 요금제(Pro 20X)의 신규 가입과 업그레이드를 일시 중단**했다. GPT-6 Astra 수요가 몰리면서 이 요금제가 시스템에 가장 큰 부담을 주기 때문이다.

- 기존 200달러 구독자는 영향이 없다
- 월 100달러 Pro와 Go·Plus, 종량제 API는 정상적으로 쓸 수 있다
- 재개 시점은 공개되지 않았다
- 200달러 요금제를 해지하거나 낮추면, 중단이 풀릴 때까지 다시 가입할 수 없다

지금 최상위 요금제로 갈아타려던 사람이라면, 100달러 Pro로 먼저 쓰거나 재개를 기다리는 편이 낫다. 관련 배경은 [OpenAI, GPT-6 Astra 공개 — 컴퓨터를 직접 쓰는 AI의 시대](/posts/openai-gpt-6-astra-launch/)에서 정리했다.

## 자주 묻는 질문

**Q. 세 개를 다 구독해야 하나요?**
아니다. 무료 요금제로 각각 며칠씩 써보고 주력 하나를 정하는 게 합리적이다. 유료 세 개를 합치면 월 5만 원을 넘는다.

**Q. 한국어는 어느 게 가장 자연스러운가요?**
세 모델의 한국어 실력을 같은 기준으로 잰 공개 벤치마크는 아직 없다. 정성 평가는 조사마다 순위가 엇갈린다. 다만 세 서비스 모두 한국어를 공식 지원하고, 체감 품질은 작업 종류에 따라 갈리는 편이다. 자기 업무에서 쓰는 실제 문서로 시험해보는 것이 가장 정확하다.

**Q. 무료로도 최신 모델을 쓸 수 있나요?**
모델마다 다르다. ChatGPT는 무료·Go 요금제에서 GPT-6 Astra 같은 프런티어 모델을 쓸 수 없다. Gemini는 무료 요금제에도 기본 모델과 제한적 추론 모델이 열려 있다. 개발자라면 세 서비스 모두 API 무료 티어가 있어 비용 없이 시험할 수 있다.

**Q. 유료 요금제는 웹 결제가 유리한가요, 앱스토어가 유리한가요?**
환율에 따라 갈린다. 앱스토어는 원화 고정가라 환율이 오르면 유리하고, 웹 결제는 원/달러 환율이 낮을 때 유리하다. 다만 Pro처럼 고가 요금제는 앱스토어 가격이 웹보다 눈에 띄게 비싸다.

**Q. 모델이 자꾸 바뀌는데 계속 확인해야 하나요?**
요금제와 모델명이 바뀌는 주기가 짧아진 건 사실이다. 이 글은 분기마다 기준일을 갱신한다. 특정 모델의 세부 가격은 [GPT-6 아스트라 가격·사용법 총정리](/posts/gpt-6-astra-guide/)와 [Gemini 3.8 Flash 가격·사용법 총정리](/posts/gemini-3-8-flash-guide/)에 더 자세히 정리해 두었다.

## 관련 글

- [GPT-6 아스트라 가격·사용법 총정리 — 플랜별 요금과 아스트라 프로 차이](/posts/gpt-6-astra-guide/)
- [Gemini 3.8 Flash 가격·사용법 총정리 — API 도입가와 무료 티어, 2027년 인상 전망](/posts/gemini-3-8-flash-guide/)
- [OpenAI, GPT-6 Astra 공개 — 컴퓨터를 직접 쓰는 AI의 시대](/posts/openai-gpt-6-astra-launch/)
- [클로드가 쓴 글에는 흔적이 남는다 — Anthropic 워터마킹의 원리와 한계](/posts/anthropic-claude-text-watermark-detection-api/)
- [ChatGPT 엑셀 수식 만들기 총정리 — 프롬프트 패턴과 =COPILOT 폐지 대안](/posts/chatgpt-excel-formulas-guide/)

## 출처

- [OpenAI API 가격 문서 (GPT-6 Astra)](https://developers.openai.com/api/docs/pricing)
- [Anthropic Claude 요금제·API 가격](https://claude.com/pricing)
- [Anthropic 뉴스룸 — Claude Fable 5.1·Mythos 5.1 발표](https://www.anthropic.com/news)
- [Gemini API 공식 가격 문서](https://ai.google.dev/gemini-api/docs/pricing)
- [Artificial Analysis 모델 리더보드](https://artificialanalysis.ai/leaderboards/models)
- [The Decoder — OpenAI rolls out GPT-6 Astra to top-tier ChatGPT plans](https://the-decoder.com/openai-rolls-out-gpt-6-astra-to-top-tier-chatgpt-plans-at-half-the-rate-of-gpt-5-6-sol/)
- [Google 공식 블로그 — Gemini 3.8 Flash, 3.8 Flash Cyber](https://blog.google/innovation-and-ai/models-and-research/gemini-models/3-8-flash-and-3-8-flash-cyber/)
- [연합뉴스 — 아스트라 수요 폭주에…오픈AI, 월200달러 요금제 신규가입 중단](https://www.yna.co.kr/view/AKR20260911022000091)
- [연합뉴스 — 구글, 월 1만원선 저가 AI요금제 한·미 등 전세계로 확대](https://www.yna.co.kr/view/AKR20260128026500091)
- [디지털투데이 — 앤트로픽, 클로드 국내 구독료 10% 인상](https://www.digitaltoday.co.kr/news/articleView.html?idxno=686939)
- [헤럴드경제 — 구글도 '월 1만원'대 AI요금제 출시](https://biz.heraldcorp.com/article/10665492)
- [Google AI 요금제(한국)](https://one.google.com/intl/ko_kr/about/google-ai-plans/)
