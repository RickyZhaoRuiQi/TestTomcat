<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/17
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>request内置对象</h1>
    <%
        request.setCharacterEncoding("utf-8");//解决中文乱码问题
        request.setAttribute("password","123456");
    %>
    用户名：<%=request.getParameter("username")%>
    <br>
    爱好：<%
        if(request.getParameterValues("favorite") != null)
        {
            String[] favorite = request.getParameterValues("favorite");
            for (int i = 0; i < favorite.length; i++)
            {
                out.println(favorite[i]+"&nbsp;&nbsp;");
            }
        }
        %>
    <br>
    密码：<%=request.getAttribute("password")%><br>
    MIME：<%=request.getContentType()%><br>
    Protocol：<%=request.getProtocol()%><br>
    ServeName：<%=request.getServerName()%><br>
    服务器端口：<%=request.getServerPort()%><br>
    请求文件长度：<%=request.getContentLength()%><br>
    请求客户端IP地址：<%=request.getRemoteAddr()%><br>
    请求的真实路径：<%=request.getRealPath("request.jsp")%><br>
    请求的上下文路径：<%=request.getContextPath()%><br>
</body>
</html>
