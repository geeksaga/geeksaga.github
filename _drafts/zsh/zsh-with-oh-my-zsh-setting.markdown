---
layout: post
title: "Zsh & Oh My Zsh 설치하기"
description: "Zsh & Oh My Zsh 설치하기."
category: index
tags: [Zsh, oh-my-zsh, 개발환경]
published: false
---

## Zsh 설치하기

많은 경우 Zsh 은 이미 설치가 되어 있지만 그렇지 않은 경우 설치 한다.

Debian based distros(Debian, Ubuntu, Linux Mint, etc.)

    sudo apt-get install zsh

MAC

    $brew install zsh

Fedora

    sudo yum install zsh

Arch linux

    sudo pacman -S zsh


## MAC 에서 brew 를 이용하여 설치하기

MAC 에는 터미널 기본 쉘로 Bash(Bourne Again Shell) 를 사용하며 최신 MAC 버전에는 Zsh 이 같이 설치되어 있다.

    $zsh --version
    zsh 5.3.1 (x86_64-apple-darwin16.6.0)

    $brew upgrade zsh
    $zsh --version
    zsh 5.4.2 (x86_64-apple-darwin17.3.0)


## Oh My Zsh 설치하기

curl 또는 wget 으로 설치할 수 있다.

  **via curl**

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  **via wget**

    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

설치를 진행하면 다음과 같이 설치가 진행된다.

    $curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

    % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100   146  100   146    0     0    191      0 --:--:-- --:--:-- --:--:--   191
    100  4019  100  4019    0     0   3677      0  0:00:01  0:00:01 --:--:--  3677
    Cloning Oh My Zsh...
    Cloning into '/Users/geeksaga/.oh-my-zsh'...
    remote: Counting objects: 847, done.
    remote: Compressing objects: 100% (712/712), done.
    remote: Total 847 (delta 16), reused 765 (delta 10), pack-reused 0
    Receiving objects: 100% (847/847), 578.12 KiB | 3.61 MiB/s, done.
    Resolving deltas: 100% (16/16), done.
    Looking for an existing zsh config...
    Found ~/.zshrc. Backing up to ~/.zshrc.pre-oh-my-zsh
    Using the Oh My Zsh template file and adding it to ~/.zshrc
    Time to change your default shell to zsh!
    Changing shell for geeksaga.
    Password for geeksaga:
             __                                     __
      ____  / /_     ____ ___  __  __   ____  _____/ /_
     / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \
    / /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / /
    \____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/
                            /____/                       ....is now installed!


    Please look over the ~/.zshrc file to select plugins, themes, and options.

    p.s. Follow us at https://twitter.com/ohmyzsh.

    p.p.s. Get stickers and t-shirts at https://shop.planetargon.com.


## 테마 설정

## 문제 해결

최신 버전 설치시에 기본 쉘은 설치 과정에서 기본으로 변경된다.
만약 기본 쉘이 변경되지 않았을 경우 다음과 같은 명령어로 변경할 수 있다.

    $ chsh -s `which zsh`


### 참고링크
[터미널 초보의 필수품인 Oh My ZSH!를 사용하자](https://nolboo.kim/blog/2015/08/21/oh-my-zsh/)
