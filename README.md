# Java web学习

- 2018-11-8 安装tomcat，创建JavaWeb项目

---

- 2018-11-9 
    - 常见动态网站开发技术比较
    1. Jsp：Java平台，安全性高，适合开发大型的，企业级的Web应用程序。
    2. Asp.net：.net平台，简单易学。但是安全性以及跨平台性差。
    3. Php：简单，高效，成本低开发周期短，特别适合中小型企业的Web应用开发。（LAMP：Linux+Apache+MySQL+PHP）
    - Jsp（Java Server Pages）基础语法
    1. page指令：通常位于jsp页面顶端，同一页面可以有多个page指令。
    2. include指令：将一个外部文件嵌入到当前jsp文件中，同时解析这个页面中的jsp语句。
    3. taglib指令：使用标签库定义新的自定义标签，在jsp页面中启动定制行为。
    
    - Jsp注释
    1. 在jsp页面注释：（1）html注释，<!--html--> 客户端可见（2）jsp注释，<%--html注释--%>客户端不可见 （3）jsp脚本注释，//单行 /**/多行 客户端不可见
    - Jsp脚本：在JSP页面中执行Java代码
    1. 语法 <% Java代码 %>
    - Jsp声明：在JSP页面中定义变量或者方法
    1. 语法 <%！ Java代码 %>
    - Jsp表达式
    1. 语法 <%=表达式%>  注意，表达式不以分号为结束
    - jsp页面生命周期
    
---

- 2018-11-17

    - JSP内置对象：JSP内置对象是Web容器创建的一组对象，不使用new关键字就可以使用的内置对象
        1. out对象，out对象是JspWriter类的实例，是向客户端输出内容常用的对象。
            - 常用的方法如下
                1. void println()向客户端打印字符串
                2. void clean()清楚缓冲区的内容，如果在flush之后调用会抛出异常
                3. void clearBuffer()清楚缓冲区的内容，如果在flush之后调用不会抛出异常
                4. void flush()将缓冲区内容输出到客户端
                5. int getBufferSize()返回缓冲区以字节数的大小，如不设管冲去则为0
                6. int getRemaining()返回缓冲区还剩余多少可用
                7. boolean isAutoFlush()返回缓冲区满时，是否自动清空还是抛出异常
                8. void close()关闭输出流
        2. request对象：客户端的请求信息被封装在request对象中，通过它才能了解到客户的需求，然后做出响应。它是HttpServletRequest类的实例。request对象具有请求域，即完成客户端的请求之前，该对象一致有效。
            - 常用方法
                1. String getParameter(String name)返回name指定参数的参数值
                2. String[] getParameterValues(String name)返回包含参数name的所有值的数组
                3. void setAttribute(String,Object)存储此请求中的属性
                4. object getAttribute(String name)返回指定属性的属性值
                5. String getContentType()得到请求体的MIME类型
                6. String getProtocol()返回请求的协议类型及版本号
                7. String getSeverName()返回接受请求的服务器主机名
            - get与post
                - 表达有两种提交方式：get与post，他们的区别
                    1. get：以明文的方式通过URL提交数据，数据在URL中可以看到。提交的数据最多不超过2KB。安全性较低但效率比post方式高。适合提交数据不大，安全性不高的数据。比如：搜索、查询等功能。
                    2. post：将用户提交的信息封装在HTML HEARD内。适合提交数据量较大，安全性高的用户信息。比如：注册、修改、上传等功能。
            
                