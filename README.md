# A blog

This is where Damian writes his stuff and messes around every once in a while.

## Me

:wave: [@ssdr](https://github.com/ssdr)
:panda_face:

## Some notes

### highlighter
在 Jekyll 的配置文件 _config.yml 中设置打开 Pygments

	highlighter: pygments。
	mardown: redcarpet

进到我们的网站目录，运行下面代码生成 Pygments 样式

	$ pygmentize -S default -f html > your/path/pygments.css

生成的样式文件加到我们的网页中

	<link rel="stylesheet" href="/your/path/pygments.css">
