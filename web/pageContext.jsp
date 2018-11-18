<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/18
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>pageContext内置对象</h1>
    用户名是：<%=pageContext.getSession().getAttribute("username")%><br>
    <%
        //跳转到注册页面
        //pageContext.forward("reg.jsp");
        pageContext.include("include.jsp");
    %>
</body>
</html>
