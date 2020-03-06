---
title: "Straw Agent init"
description: "Straw Agent 프로젝트 시작."
category:
  - project
tags:
  - Electron
  - JavaScript
  - TypeScript
  - Go

toc: true
toc_labe: "Straw Agent 설정"
published: true 
comments: true
---

토이 프로젝트를 여럿 만들어 보지만 항상 프로젝트의 재미있는 부분이 끝나면 그대로 마무리된다.

조금 부족하겠지만 프로젝트의 완성을 위해 초기 설정부터 배포까지 진행하도록 한다.

이것 역시 이대로 끝날 수도 있겠지...

# STRAW
STRAW의 목표는 데이터를 수집하는 에이전트 프로그램이다.

전부 처음 사용하는 기술셋으로 작업을 하기 때문에 [Telegraf](https://github.com/influxdata/telegraf "Telegraf"){:target="blank"}라는 오픈소스를 참고 하기로 했다.

Telegraf는 시계열 DB인 [InfluxDB](https://github.com/influxdata/influxdb "InfluxDB"){:target="blank"}를 만든 [influxdata](https://www.influxdata.com/ "influxdata"){:target="blank"}에서 만든 오픈소스 프로그램이다.

Telegraf를 선택한 이유는 시스템 모니터링과 메트릭스 수집 에이전트 이기도 하지만 언어가 [Go](https://golang.org/ "Go"){target="blank"}로 되어 있어서다.

## 프로젝트 준비 

### C


