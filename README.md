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

### Jekyll site structure
```
.
├── CNAME # Contains your custom domain name (optional)
├── _config.yml # Your config file
├── _drafts # To preview your posts
│   ├── begin-with-the-crazy-ideas.textile
│   └── on-simplicity-in-technology.markdown
├── _includes # Snippets of code that can be used throughout your templates
│   ├── footer.html
│   └── header.html
├── _layouts
│   ├── default.html default.html # The main template. Includes <head>, <navigation>, <footer>, etc
│   └── page.html # Static page layout
│   └── post.html # Blog post layout
├── _posts # All posts go in this directory!
│   ├── 2007-10-29-why-every-programmer-should-play-nethack.textile
│   └── 2009-04-26-barcamp-boston-4-roundup.textile
├── _data
│   └── members.yml
├── _site # After Jekyll builds the website, it puts the static HTML output here. This is what's served!
│   ├── CNAME
│   └── LICENSE
│   ├── about.html
│   └── feed.xml
│   ├── index.html
│   └── sitemap.xml
│   └── style.css
├─ about.md # A static "About" page that I created.
├─ feed.xml # Powers the RSS feed
├─ images # All of my images are stored here.
│  ├── first-post.jpg
├─ index.html # Home page layout
├─ scss # The Sass style sheets for my website
│  ├─ _highlights.scss
│  ├─ _reset.scss
│  ├─ _variables.scss
│  └─ style.scss
└── index.html
└── 404.html # Custom 404 page
└── sitemap.xml # Site map for the website
```
### Front Matters
```
---
layout:
title:
subtitle:
date:
author:
categories:
tags:
image:
excerpt:
---
```
### Post
文件名命名格式`YYY-MM-DD-blog-post-title.md`.

