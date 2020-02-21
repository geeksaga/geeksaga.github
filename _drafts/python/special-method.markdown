---
title: "Python Special Method"
description: "Python Special Method. Double UNDERScore Method(DUNDER)"
category: index
tags: [python, special_method, dunder]
published: true
---

## Special Method
[Sepcial Method][1](https://docs.python.org/3/reference/datamodel.html#special-method-names "스페셜 메소드")

### 객체

* `object.__new__(cls[, ...])`
	클래스의 새로운 인스턴스를 만들때 호출된다.
	__new__() 은 인스턴스가 요청된 클래스를 첫 번째 인수로 사용하는 정적 메서드 이다.
	(특별한 사례이므로 선언 할 필요는 없다.)
	나머지 인수는 객체 생성자에 전달되는 인수이다.
	__new__() 의 반환 값은 새 객체 인스턴스여야 한다.(일반적으로 cls 의 인스턴스).

* `object.__init__(self[, ...])`

* `object.__del__(self)`


{% highlight python %}
class SomeClass:
  def __new__(cls, *args, **kwargs):
    if len(args) < 2:
      return None
    return super(SpecialMethodTest, cls).__new__(cls, *args, **kwargs)

{% endhighlight %}
