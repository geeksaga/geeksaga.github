---
layout: post
title: "git 설정"
description: "git 환경 설정 방법과 예제."
category: index
tags: [git, 개발환경]
published: false
---

{% highlight ruby %}
git config
git config --global user.name "name"
git config --global user.email "email address"
{% endhighlight %}

~/.gitconfig
{% highlight ruby %}
[user]
	name = name
	email = email address
[core]
	autocrlf = input
	eol = native
[color]
	ui = auto
[alias]
	tree = log --oneline --decorate --all --graph
{% endhighlight %}
