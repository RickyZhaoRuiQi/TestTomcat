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
                6. Tomcat默认session超时时间为30分钟
            - 常用的方法
                1. long getCreationTime()：返回SESSION创建的时间
                2. public String getId()：返回SESSION创建时JSP引擎为它设的唯一ID号
                3. public Object setAttribute(String name,Object value)：使用指定名称将对象绑定到此会话
                4. public Object getAttribute(String name)：返回与此会话中的指定名称绑定在一起的对象，如果没有对象绑定在该名称下，则返回null
                5. String[] getValueNames()：返回一个包含此SESSION中所有可用属性的数组
                6. int getMaxInactiveInterval()：返回两次请求间隔多长时间此SESSION被取消（单位秒）
            - Session的生命周期
                - 创建：当客户端第一次访问某个jsp或者Servlet时候，服务器会为当前会话创建一个SessionId，每次客户端向服务器发送请求时，都会将此SessionId携带过去，服务端会对此SessionId进行校验
                - 活动：1）某次会话当中通过超链接打开的新页面属于同一次会话；2）只要当前会话页面没有全部关闭，重新打开新的浏览器窗口访问同一项目资源时属于同一会话；3）除非本次会话所有页面都关闭后再冲重新访问某个Jsp或者Servlet将会创建新的会话
                - Tips：原有的会话还存在，知识这个旧的Session仍然存在与服务器，只不过再也没有客户端会携带它然后交予服务端校验
                - 销毁：Session销毁有三种可能：1）调用session.invalidate()；2）Session过期；3）服务器重新启动
        5 application对象
            - application对象性质
                1. application对象实现了用户数据的共享，可存在全局变量
                2. application开始于服务器的启动，终止于服务器的关闭
                3. 在用户的前后连接不同用户之间的连接中，可以对application对象的同意属性进行操作
                4. 在任何地方对application对象属性的操作，都将影响到其他用户对此的访问
                5. 服务器的启动和关闭决定了application对象的声明
                6. application对象是ServletContext类的实例
            - application常用的方法
                1. void setAttribute(String name,Object value)使用指定名称对象绑定到此会话
                2. Object getAttribute(String name)返回与此会话中的指定名称绑定在一起的对象，如果没有对象绑定在该名称下则返回null
                3. Enumeration getAttributeNames()返回所有可用属性的枚举
                4. String getServerInfo()返回JSP(SERVLET)引擎名及版本号
        6 page对象
            - page对象就是指向当前JSP页面本身，有点像类中的this指针，它是java.lang.Object类的实例
            - 常用方法
                1. class getClass()返回此Object的类
                2. int hashCode()返回此Object的hash码
                3. boolean equals(Object obj)判断此Object是否与指定的对象相等
                4. void copt(Object obj)把此Object拷贝到指定的Object对象中
                5. Object clone()克隆此Object对象
                6. String toString()把此Object对象转换成String对象
                7. void notify()唤醒一个等待的线程
                8. void notifyAll()唤醒所有等待的线程
                9. void wait(int timeout)使一个线程处于等到知道timeout结束或唤醒
                10. void wait()使一个线程处于等待知道被唤醒
        7 pageContext对象
            - pageContext对象属性
                1. pageContext对象提供了对JSP页面内所有的对象及名字空间的访问
                2. pageContext对象可以访问到本页所在session，也可以取本页所在的application的某一属性
                3. pageContext对象相当于页面中的所有功能的集大成者
                4. pageContext对象的本类名也叫pageContext
            - 常用方法
                1. JspWriter getOut()返回当前客户端响应被使用的JspWriter()流(out)
                2. HttpSession getSession()返回当前页中的HttpSession对象
                3. Object getPage()返回当前页的Object对象
                4. void forward(String relativeUrlPath)使当前页面重导到另一页面
                5. void include(String relativeUrlPath)在当前位置包含另一文件
        8 config对象
            - config对象是在一个servlet初始化时，JSP引擎向它传递信息用的，此信息包括servlet初始化时所使用到的参数（通过属性名和属性值构成）以及服务器的有关信息（通过传递一个servletContext对象）
            - 常用方法
                1. ServletContext getServletContext()返回含有服务器相关信息的ServletContext对象
                2. String getInitParameter(String name)返回初始化参数值
                3. Enumerate getInitParameterNames()返回Servlet初始化所需所有参数的枚举
        9 exception对象
            - exception对象是一个异常对象，当一个页面在运行过程中发生了异常，就产生这个对象。如果JSP页面要应用此对象，就必须把isErrorPage设为True，否则无法通过编译。它实际上是java.lang.Throwable的对象
            - 常用方法
                1. String getMessage()返回描述异常的消息
                2. String toString()返回关于异常的简短描述信息
                3. void printStackTrace()显示异常及其栈轨迹
                4. Throwable FillInStackTrace()重写异常的执行栈轨迹
                
---

- 2018-11-22
    
    - JavaBeans
        1. ***什么是JavaBeans?***
        JavaBeans就是符合某种特定规范的Java类，使用JavaBeans的好处是解决代码重复编写，减少代码冗余，功能区分明确，提高了代码的维护性
        2. 设计原则。
        公有、无参共有构造方法、属性私有、getter和setter方法
        3. Jsp多年工作元素。
        JSP动作元素，动作元素为请求处理阶段提供信息。动作元素遵循XML元素的语法，有一个包含元素名的开始标签，可以有属性、可选的内容、与开始标签匹配的结束标签
            - 第一类与存取JavaBean有关的，包括：<jsp:useBean><jsp:setProperty><jsp:getproperty>
            - 第二类是JSP1.2就开始有的基本元素，包括6个动作元素：<jsp:inclue><jsp:forward><jsp:param><jsp:plugin><jsp:params><jsp:fallback>
            - 第三类是JSP2.0新增加的元素，主要与JSP Document有关，包括6个元素:<jsp:root><jsp:declaration><jsp:scriptlet><jsp:expression><jsp:text><jsp:output>
            - 第四类是JSP2.0新增的元素，主要是用来动态生成XML元素标签的值，包括3个动作:<jsp:attribute><jsp:body><jsp:element>
            - 第五类是JSP2.0新增的动作元素，主要是用在Tag File中，有两个元素:<jsp:invoke><jsp:dobudy>
        4. 在Jsp中如何使用JavaBeans
            - 像使用普通Java类一样，创建javabean实例
            - 在Jsp页面中通常使用jsp动作标签使用javabean
                1. useBeans动作
                2. setProperty动作
                3. getProperty动作
            - JavaBean的四个作用域范围，useBean的scope属性可以指定javabean作用域范围
                1. page 仅当前页面有效
                2. request 可以通过HttpRequest.getAttribute()方法取得JavaBean对象
                3. session 可以通过HttpSession.getAttribute()方法取得JavaBean对象
                4. application 可以通过application.getAttribute()方法取得JavaBean对象
        5. Model1简介
            - Model1出现前，整个Web应用的情况：几乎全部由JSP页面组成，JSP页面接收处理客户端请求，对请求处理后直接做出响应
            - 弊端：在界面层充斥着大量的业务逻辑代码和数据访问层的代码，Web程序的可扩展性和可维护性非常差
            - JavaBean的出现可以使jsp页面中使用JavaBean封装的数据或者调用JavaBean的业务逻辑代码，这样大大提升了程序的可维护性
            - Model1 jsp+javabean