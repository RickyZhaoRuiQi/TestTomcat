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
        3. response对象：包含了响应客户请求的有关信息，但在JSP中很少直接用到它。它是HttpServletResponse类的实例。response对象具有页面作用域，即访问一个页面时，该页面内的response对象只能对这次访问有效，其他页面的response对象对当前页面无效。
            - 常用方法
                1. String getCharacterEncoding()返回响应的是何种字符编码
                2. void setContentType(String type)设置响应MIME类型
                3. PrintWriter getWriter()返回可以向客户端输出字符的一个对象（注意比较：PrintWriter与内置out对象的区别）
                4. sendRedirect(java.lang.location)重新定向客户端请求
            - 请求转发与请求重定向
                - 请求重定向：客户端行为，response.sendRedirect()，从本质上讲等同于两次请求，前一次的请求对象不会保存，地址栏的URL会改变
                - 请求转发：服务器行为，request.getRequestDispatcher().forward(req,resp)是一次请求，转发后请求对象会保存，地址栏的URL不会改变
        4 Session对象
            - 什么是session
                1. session标识客户端与服务器的一次会话
                2. Web中的session指的是用户在浏览某个网站时，从进入网站到浏览器关闭所经过的这段时间，也就是用户浏览这个网站所花费的时间
                3. 从上述定义中可以看到，session实际上是一个特定的时间概念
            - 在服务器的内存中保存着不同用户的session
            - Session对象性质
                1. session对象是一个JSP内置对象
                2. session对象在第一个JSP页面被装载时自动创建，完成会话期管理
                3. 从一个客户打开浏览器并连接到服务器开始，到客户关闭浏览器离开这个服务器结束，被称为一个会话
                4. 当一个客户访问一个服务器时，可能会在服务器的几个页面之间切换，服务器应当通过某种办法知道这是一个客户，就需要session对象
                5. session对象是HttpSession类的实例
            - 常用的方法
                1. long getCreationTime()：返回SESSION创建的时间
                2. public String getId()：返回SESSION创建时JSP引擎为它设的唯一ID号
                3. public Object setAttribute(String name,Object value)：使用指定名称将对象绑定到此会话
                4. public Object getAttribute(String name)：返回与此会话中的指定名称绑定在一起的对象，如果没有对象绑定在该名称下，则返回null
                5. String[] getValueNames()：返回一个包含此SESSION中所有可用属性的数组
                6. int getMaxInactiveInterval()：返回两次请求间隔多长时间此SESSION被取消（单位秒）