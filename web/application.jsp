<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/18
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>application内置对象</h1>
    <%
        application.setAttribute("city","北京");
        application.setAttribute("postcode","10000");
        application.setAttribute("email","lisi@126.com");
    %>
    所在城市：<%=application.getAttribute("city")%><br>
    application中的属性有：<%
        Enumeration attributes = application.getAttributeNames();
        while(attributes.hasMoreElements())
        {
            out.println(attributes.nextElement() + "&nbsp;&nbsp");
        }
    %><br>
    JSP(SERVLET引擎及版本号)<%=application.getServerInfo()%>
</body>
</html>
