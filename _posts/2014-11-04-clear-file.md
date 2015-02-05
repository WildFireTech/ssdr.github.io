---
layout: post
title: "Linux几种快速清空文件内容的方法"
description: "清空文件"
category: 专业
tags: [linux]
---
##Linux几种快速清空文件内容的方法
	$ : > filename #其中的 : 是一个占位符, 不产生任何输出.
	$ > filename
	$ echo "" > filename
	$ echo /dev/null > filename
	$ echo > filename
	$ cat /dev/null > filename
