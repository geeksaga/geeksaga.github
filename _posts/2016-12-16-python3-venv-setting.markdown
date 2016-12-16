---
layout: post
title: "파이썬3 가상환경(venv) 설정"
description: "파이썬3 가상환경(venv) 설정."
category: index
tags: [python, venv, 개발환경]
published: true
---

Linux 계열 환경에서 Python3 이 설치 되어있을 경우 가상환경 설정은 다음과 같은 순서로 진행한다.
설정은 사용자 홈 디렉토리 밑에 설정하는 것으로 한다.

{% highlight ruby %}
$> cd ~
$> mkdir dev_env
$> python3 -m venv dev_env
{% endhighlight %}

설치된 가상환경을 이용하려면 해당 가상환경을 활성화해야 한다. 

{% highlight ruby %}
$> source ~/dev_env/bin/activate
{% endhighlight %}

가상환경을 종료하려면 가상머신을 비활성화 한다.

{% highlight ruby %}
$> source ~/dev_env/bin/deactivate
{% endhighlight %}
