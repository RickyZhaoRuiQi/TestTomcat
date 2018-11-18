<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/18
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.text.SimpleDateFormat,java.util.Date" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>session内置对象</h1>
    <hr>
    <%
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        Date d = new Date(session.getCreationTime());
        session.setAttribute("username","admin");
    %>
    Session创建时间：<%=sdf.format(d)%><br>
    Session的ID编号：<%=session.getId()%><br>
    从Session中获取用户名：<%=session.getAttribute("username")%><br>

    <a href="session_page2.jsp" target="_blank">跳转到Session_page2.jsp</a>
</body>
</html>
