---
title: "Electron Setting"
description: "Electron 설치 및 환경 구성."
category:
  - electron
tags:
  - Electron
  - JavaScript
  - TypeScript

toc: true
toc_labe: "Electron 설정"
published: true 
comments: true
---

작성중

## 준비사항

다음 프로그램들이 설치되어 있어야 한다.
  - [Node](https://nodejs.org/ "NodeJs.org"){:target="blank"}
  - [Yarn](https://classic.yarnpkg.com/en/ "Yarn"){:target="blank"}


다음 명령으를 통해 확인할 수 있다.

```shell
❯ node -v
v12.14.1

❯ npm -v
6.13.7

❯ yarn -v
1.21.1
```

## 설치

Electron을 설치할 때는 개발 의존성 모드로 설치할 것을 권장한다.

```shell
npm install electron --save-dev
```
or
```shell
yarn add electron --dev
yarn install
```

## 전역 설치
```shell
sudo npm install electron -g 
```

## Electron 둘러보기

Electron 앱은 자바스크립트로 개발한다.

먼저 디렉터리를 하나 만든후에 프로젝트를 초기화 한다.
```shell
npm init
```

```shell
first-app/
├── package.json
├── main.js
└── index.html
```

```javascript
const electron = require('electron')
```

electron 모듈은 네임 스페이스 안에서 기능을 제공한다.

https://www.electronjs.org/docs/tutorial/first-app

```javascript
const { app, BrowserWindow } = require('electron')

function createWindow () {
    let win = new BrowserWindow({
        width: 800,
        height: 600,
        webPreferences: {
            nodeIntegration: true
        }
    });

    win.setMenuBarVisibility(false);
    win.loadFile('index.html');

    win.webContents.openDevTools();

    win.once('closed', () => window = null);
}

app.whenReady().then(createWindow)

app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') {
        app.quit()
    }
})

app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
        createWindow()
    }
})
```

### 개발용 패키지

### 배포

```shell
npm install electron-builder --save-dev
```
or
```shell
yarn add electron-builder --dev
yarn install
```

참고링크

* [Electron Install][1]
* [Electron Quick Setup Guide][2]
* [Electron Boilerplates][3]
* [Electron Docs][4]

[1]: https://www.electronjs.org/docs/tutorial/installation "Electron Install"
{:target="blank"}
[2]: https://github.com/electron-userland/electron-builder#quick-setup-guide "Electron Quick Setup Guide"
{:target="blank"}
[3]: https://www.electron.build/#boilerplates "Electron boilerplates"
{:target="blank"}
[4]: https://www.electronjs.org/docs "Electron 문서"
