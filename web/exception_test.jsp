<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/18
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="exception.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>测试异常的页面</h1>
    <%
        System.out.println(100/0);//抛出运行时异常，算术异常
    %>
</body>
</html>
