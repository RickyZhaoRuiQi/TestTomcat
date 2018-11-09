# Java web学习

- 2016-11-8 安装tomcat，创建JavaWeb项目

---

- 2016-11-9 
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