<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/22
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>系统登录</h1>
    <hr>
    <form name="loginForm" action="JavaBean_dologin.jsp?mypass=999999" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username" value=""/></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password" value=""/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="登录"/></td>
            </tr>
        </table>
    </form>
</body>
</html>
