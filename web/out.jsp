<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/17
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!--out对象测试-->
    <h1>out内置对象</h1>
    <%
        out.println("<h2>静夜诗</h2>");
        out.println("窗前明月光<br>");
        out.println("疑似地上霜<br>");
        out.flush();
        //out.clear();//这里会抛出异常
        //out.clearBuffer();//不会抛出异常
        out.println("举头望明月<br>");
        out.println("低头思故乡<br>");
    %>
    缓冲区大小：<%=out.getBufferSize() %>byte<br>
    剩余缓冲区大小：<%=out.getRemaining() %>byte<br>
    是否自动清空缓冲区：<%=out.isAutoFlush()%><BR>
</body>
</html>
