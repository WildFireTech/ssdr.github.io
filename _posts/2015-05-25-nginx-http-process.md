---
layout: post
title: nginx http框架的执行流程
---

##处理http请求
post_read
server_rewrite
find_config
rewrite
post_rewrite
preaccess
access
post_access
try_files
content
log

##处理http包体
两种处理方式：
接受包体到内存或文件中和直接丢弃包体。

请求的引用计数count
http模块每进行一类新的操作（为请求添加新事件、把一些已经由定时器、epoll中移除的事件重新加入其中等），都需要将请求的引用计数加一。
`ngx_http_close_request()`负责检查引用计数，引用计数为0时才真正销毁请求。

###接受包体
ngx_http_read_client_request_body()
ngx_http_do_read_client_request_body()
ngx_http_read_client_request_body_handler()

###丢弃包体
ngx_http_discard_request_body()
ngx_http_read_discarded_request_body()
ngx_http_discarded_request_body_handler()

##发送http响应



---
*参考自<<深入理解Nginx>>(陶辉 著)*