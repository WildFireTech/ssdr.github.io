---
layout: post
title: nginx文档
---

[TOC]

##简介

 - [源码安装nginx](/nginx-doc/building-nginx-from-sources.md)
 - 新手教程
 - 管理员教程
 - 控制nginx
 - 连接处理方法
 - 设置hash
 - [调试日志](/nginx-doc/debugging-log.md)
 - 系统日志
 - ~~配置文件中的计量单位~~
 - 命令行参数
 - ~~nginx for Windows~~
 
 - [nginx如何处理一个请求](/nginx-doc/how-nginx-processes-a-request.md)
 - [虚拟主机名](/nginx-doc/server-names)
 - 使用nginx作为HTTP负载均衡器
 - [配置HTTPs服务](http://nginx.org/cn/docs/http/configuring_https_servers.html)
 
 - 《The Architecture of Open Source Applications》中的nginx章节

##How-To

 - 源码编译nginx
 - 使用VC在Win32平台下编译nginx
 - 在Amazon EC2上配置nginx plus环境
 - 使用DTrace调试nginx

 - [转换重写规则](/nginx-doc/converting-rewrite-rules.md)
 - WebSocket代理

##模块参考

 - 指令列表
 - 变量列表

 - 核心功能

 - ngx_http_core_module
 - ngx_http_access_module
 - ngx_http_addition_module
 - ngx_http_auth_basic_module
 - ngx_http_auth_request_module
 - ngx_http_autoindex_module
 - ngx_http_browser_module
 - ngx_http_charset_module
 - ngx_http_dav_module
 - ngx_http_empty_gif_module
 - ngx_http_f4f_module
 - ngx_http_fastcgi_module
 - ngx_http_flv_module
 - ngx_http_geo_module
 - ngx_http_geoip_module
 - ngx_http_gunzip_module
 - ngx_http_gzip_module
 - ngx_http_gzip_static_module
 - ngx_http_headers_module
 - ngx_http_hls_module
 - ngx_http_image_filter_module
 - ngx_http_index_module
 - ngx_http_limit_conn_module
 - ngx_http_limit_req_module
 - ngx_http_log_module
 - ngx_http_map_module
 - ngx_http_memcached_module
 - ngx_http_mp4_module
 - ngx_http_perl_module
 - ngx_http_proxy_module
 - ngx_http_random_index_module
 - ngx_http_realip_module
 - ngx_http_referer_module
 - ngx_http_rewrite_module
 - ngx_http_scgi_module
 - ngx_http_secure_link_module
 - ngx_http_session_log_module
 - ngx_http_spdy_module
 - ngx_http_split_clients_module
 - ngx_http_ssi_module
 - ngx_http_ssl_module
 - ngx_http_status_module
 - ngx_http_stub_status_module
 - ngx_http_sub_module
 - ngx_http_upstream_module
 - ngx_http_userid_module
 - ngx_http_uwsgi_module
 - ngx_http_xslt_module

 - ngx_mail_core_module
 - ngx_mail_auth_http_module
 - ngx_mail_proxy_module
 - ngx_mail_ssl_module
 - ngx_mail_imap_module
 - ngx_mail_pop3_module
 - ngx_mail_smtp_module

 - ngx_stream_module
 - ngx_stream_upstream_module