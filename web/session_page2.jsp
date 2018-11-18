<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/18
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>session内置对象</h1>
    <hr>
    Session的ID编号：<%=session.getId()%><br>
    从Session中获取用户名：<%=session.getAttribute("username")%><br>
</body>
</html>
