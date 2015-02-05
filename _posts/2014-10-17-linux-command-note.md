---
layout: post
title: "Linux相关命令"
description: "Linux相关命令"
category: 专业
tags: linux
---

## 几个命令

	sudo!!
	python -m SimpleHTTPServer
	mtr = ping + traceroute
	nl readme.txt
	ls | shuf
	ss: socket统计
	last
	curl ifconfig.me :外部ip地址
	tree
	pstree

	crontab -e
	grep
	uptime
	top
	wc
	find

### crontab命令
crontab定时任务   
-e将打开一个文件，添加或修改任务   
格式：`* * * * * /command path`   
前5个字段分别表示：

	分钟：0-59
	小时：1-23
	日期：1-31
	月份：1-12
	星期：0-6（0表示周日）
还可以用一些特殊符号：

	*： 表示任何时刻
	,：　表示分割
	－：表示一个段，如第二端里： 1-5，就表示1到5点
	/n : 表示每个n的单位执行一次，如第二段里，*/1, 就表示每隔1个小时执行一次命令。也可以写成1-23/1.
       
### grep命令
文本搜索grep （`global search regular expression(RE) and print out the line`,全面搜索正则表达式并把行打印出来）是一种强大的文本搜索工具，它能使用正则表达式搜索文本，并把匹配的行打印出来。
grep可用于shell脚本，因为grep通过返回一个状态值来说明搜索的状态，如果模板搜索成功，则返回`0`，如果搜索不成功，则返回`1`，如果搜索的文件不存在，则返回`2`。我们利用这些返回值就可进行一些自动化的文本处理工作。   
`grep [options] PATTERN [FILE...]`

#### 部分参数

	-c,--count
	只打印匹配的行数，不显示匹配的内容。

	-q，--quiet
	取消显示，只返回退出状态。0则表示找到了匹配的行。

	-l，--files-with-matches
	打印匹配模板的文件清单。

	-n，--line-number
	在匹配的行前面打印行号。

	-s，--silent
	不显示关于不存在或者无法读取文件的错误信息。

	-v，--revert-match
	反检索，只显示不匹配的行。

	-R, -r, --recursive
	搜索子目录。

	-A NUM, -after-context=NUM
	除列出符合行之外，并且列出后NUM行

	-a, -text, --binary-files=text
	将二进制文件看做文本文件搜索

	-B NUM, -before-context=NUM

	-C NUM, -NUM, -context=NUM
	列出符合行之外并列出上下各NUM行，默认为2

	-b, -byte-offset
	列出符合行之前的内文总共有多少byte

	-d ACTION, -directories=ACTION
	read, skip, recurse

	-f FILE, -file=FILE
	将要搜索的pattern写入到一个文件中，一行一个样式，然后采用档案搜索

	-i, -ignore-case
	忽略大小写

	-w, -word-regexp
	将搜索pattern视为一个字去搜索

	-x, -line-regexp
	将搜索pattern视为一行去搜索

示例

	$ ls -l | grep '^a'
	通过管道过滤ls -l输出的内容，只显示以a开头的行。

	$ grep 'test' d*
	显示所有以d开头的文件中包含test的行。

	$ grep 'test' aa bb cc
	显示在aa，bb，cc文件中匹配test的行。

### uptime,top命令
load average
判断一个系统的负载可以使用top，uptime等命令去查看，它分别记录了一分钟、五分钟、以及十五分钟的系统平均负载。
获取你系统上的每个处理器的信息。如果你只想得到数字，那么就使用下面的命令：

	grep ‘model name’ /proc/cpuinfo | wc -l

### wc命令
显示文件的行数、word数以及字节数

### find命令

1, 用文件名查找文件, 在当前目录及其子目录
find -name "filename"

2, 用文件名查找文件, 忽略大小写, 在当前目录及其子目录
find -iname "filename"

3, 使用mindepth和maxdepth限定搜索指定目录的深度
在根目录及其子目录查找passwd文件
find / -name passwd 
在根目录及其1层深的子目录查找passwd文件
find / -maxdepth 2 -name passwd
在第2层和第4层目录之间查找passwd文件
find / -mindepth 3 -maxdepth 5 -name passwd

4, 在find命令查找到的文件上执行命令
find -iname "filename" -exec md5sum {} \;

5, 相反匹配
find -not -iname "filename"

6, 找到home目录及子目录下所有的空文件(0字节文件)
find ~ -empty

7, 查找5个最大的文件
find . -type f -exec ls -s {} \; | sort -n -r | head -5

8, 查找5个最小的文件(不包括空文件)
find . -not -empty -type f -exec ls -s {} \; | sort -n  | head -5

9，使用-type查找指定文件类型的文件
查找所有的隐藏文件
find . -type f -name ".*"
s: socket
f: 普通文件
d: 目录

10，查找所有的在ordinary_file之后创建修改的文件
find -newer ordinary_file

11，通过文件大小查找文件
find ~ -size +100M
find ~ -size -100M
find ~ -size 100M 
+：比指定尺寸大
-：比指定尺寸小
没有符号表示和给定尺寸一样大

12，用find命令删除大型打包文件
删除大于100M的*.zip文件
find / -type f -name *.zip -size +100M -exec rm -i {} \;

13，在查找到的文件列表结果上直接执行命令
find <CONDITION to Find files> -exec <OPERATION> \;

14，仅仅在当前文件系统中搜索
-xdev Don’t descend directories on other filesystems.
在/目录及其子目录下搜索当前文件系统(也就是/挂载的文件系统)中所有以.log结尾的文件
find / -xdev -name "*.log"

15，find -name "*.txt" cp {} {}.bkup \;

16，将错误重定向到/dev/nul
find -name "*.txt" 2>>/dev/null

17，将文件名中的空格换成下划线
find . -type f -iname “*.mp3″ -exec rename “s/ /_/g” {} \;

===================================
当在前台运行某个作业时，终端被该作业占据；而在后台运行作业时，它不会占据终端。可以使用&命令把作业放到后台执行。如：
30 2 * * * /data/app/scripts/hotbackup/hot_database_backup.sh &

在后台运行作业时要当心：需要用户交互的命令不要放在后台执行，因为这样你的机器就会在那里傻等。

不过，作业在后台运行一样会将结果输出到屏幕上，干扰你的工作。如果放在后台运行的作业会产生大量的输出，最好使用下面的方法把它的输出重定向到某个文件中：如：
command >out.file 2>&1 &
在这个例子中，2>&1表示所有的标准输出和错误输出都将被重定向到一个叫做out.file 的文件中。

2>&1 含义

先看一个例子：
0 2 * * * /u01/test.sh >/dev/null 2>&1 &
这句话的意思就是在后台执行这条命令，并将错误输出2重定向到标准输出1，然后将标准输出1全部放到/dev/null 文件，也就是清空。

在这里有有几个数字的意思：

    0表示键盘输入
    1表示标准输出
    2表示错误输出.

我们也可以这样写：

0 2 * * * /u01/test.sh  >/u01/out.file &  --这里没写，默认是1

0 2 * * * /u01/test.sh  1>/u01/out.file &

0 2 * * * /u01/test.sh  2>/u01/out.file &

0 2 * * * /u01/test.sh  2>/u01/out.file  2>&1 &

将tesh.sh 命令输出重定向到out.file, 即输出内容不打印到屏幕上，而是输出到out.file文件中。

2>&1 是将错误输出重定向到标准输出。 然后将标准输入重定向到文件out.file。

&1 表示的是文件描述1，表示标准输出，如果这里少了&就成了数字1，就表示重定向到文件1。

& ：后台执行

测试：

ls 2>1 ： 不会报没有2文件的错误，但会输出一个空的文件1；

ls xxx 2>1： 没有xxx这个文件的错误输出到了1中；

ls xxx 2>&1： 不会生成1这个文件了，不过错误跑到标准输出了；

ls xxx >out.txt 2>&1 == ls xxx 1>out.txt 2>&1；  因为重定向符号>默认是1，这句就把错误输出和标准输出都传到out.txt 文件中。

2>&1写在后面的原因

格式：command > file 2>&1   == command  1>file 2>&1
首先是command > file将标准输出重定向到file中， 2>&1 是标准错误拷贝了标准输出，也就是同样被重定向到file中，最终结果就是标准输出和错误都被重定向到file中。

如果改成： command 2>&1 >file
2>&1 标准错误拷贝了标准输出的行为，但此时标准输出还是在终端。>file 后输出才被重定向到file，但标准错误仍然保持在终端。

===========================================================

### tcpdump
tcpdump会分成“选项”、“过滤表达式”和“输出信息”三部分

tcpdump -i eth0 -nn -X ‘port 53′ -c 1

-i选项：
是interface的含义，是指我们有义务告诉tcpdump希望他去监听哪一个网卡。这在我们一台服务器有多块网卡时很有必要。

-nn选项：
意思是说当tcpdump遇到协议号或端口号时，不要将这些号码转换成对应的协议名称或端口名称。比如，众所周知21端口是FTP端口，我们希望显示21，而非tcpdump自作聪明的将它显示成FTP。

-X选项：
告诉tcpdump命令，需要把协议头和包内容都原原本本的显示出来（tcpdump会以16进制和ASCII的形式显示），这在进行协议分析时是绝对的利器。

‘port 53′：
这是告诉tcpdump不要看到啥就显示啥。我们只关心源端口或目的端口是53的数据包，其他的数据包别给我显示出来。

-c选项：
是Count的含义，这设置了我们希望tcpdump帮我们抓几个包。我设置的是1，所以tcpdump不会帮我再多抓哪怕一个包回来。

【-e选项】- 增加以太网帧头部信息输出

【-l选项】- 使得输出变为行缓冲

Linux/UNIX的标准I/O提供了全缓冲、行缓冲和无缓冲三种缓冲方式。标准错误是不带缓冲的，终端设备常为行缓冲，而其他情况默认都是全缓冲的。

【-t选项】- 输出时不打印时间戳

【-v选项】- 输出更详细的信息

【-F选项】- 指定过滤表达式所在的文件

【-w选项】- 将流量保存到文件中

【-r选项】- 读取raw packets文件

过滤表达式大体可以分成三种过滤条件，“类型”、“方向”和“协议”，这三种条件的搭配组合就构成了我们的过滤表达式。

tcpdump -i eth0 -c 10 'udp'
tcpdump -i eth0 'dst 8.8.8.8'
tcpdump -i eth0 -c 3 'dst port 53 or dst port 80'

tcpdump -i eth0 'host roclinux.cn and (baidu.com or qiyi.com)'
