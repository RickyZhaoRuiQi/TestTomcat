<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/22
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.po.Users"%>
<html>
<head>
    <title>JavaBeans</title>
</head>
<body>
    <%
        Users user = new Users();
        user.setUsername("admin");
        user.setPassword("123456");
    %>
    <h1>使用普通方式创建JavaBeans的实例</h1>
    <hr>
    用户名：<%=user.getUsername()%><br>
    密码：<%=user.getPassword()%><br>
</body>
</html>
