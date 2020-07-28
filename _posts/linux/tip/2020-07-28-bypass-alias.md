---
title: "shell에 설정된 alias를 우회하는 방법들"
description: "Shell Tip"
category: linux 
tags: [command, linux, shell]
date: Tue Jul 28 14:12:45 KST 2020

toc: true
toc_label: "목록"
#toc_icon: "cog"
toc_sticky: true

published: true
---

## Shell에 설정된 alias 대신 원래 명령어를 실행하는 여러가지 방법들.

```shell
$> alias ls=ext
```

`ls` alias가 설정되어 있을 경우 `ls` 명령어를 입력하면 `ext` 명령어가 실행된다.

이를 alias 설정 이전 `ls` 명령어로 실행할 수 있는 방법은 다음과 같다.


### 절대 경로를 이용하는 방법.
```shell
$> whereis ls
ls: /bin/ls /usr/share/man/man1/ls.1.gz

$> /bin/ls
```

### command 명령을 이용하는 방법.
```shell
$> command ls
```

### "(double quotation)을 이용하는 방법.
```shell
$> "ls"
```

### '(single quotation)을 이용하는 방법.
```shell
$> 'ls'
```

### \\(backslash)를 이용하는 방법.
```shell
$> \ls
```
