#!/bin/sh

LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

#jekyll serve --watch --drafts

#bundle exec jekyll serve --trace --watch --drafts --unpublished
bundle exec jekyll serve --host 192.168.9.134 --port 17908 --trace --watch --drafts --unpublished
