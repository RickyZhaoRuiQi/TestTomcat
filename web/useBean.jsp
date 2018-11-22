<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/22
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="myUsers" class="com.po.Users" scope="page"/>
    <h1>使用useBean动作创建javabean的实例</h1>
    <hr>
    用户名：<%=myUsers.getUsername()%><br>
    密码：<%=myUsers.getPassword()%><br>
</body>
</html>
