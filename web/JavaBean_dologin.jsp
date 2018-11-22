<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/22
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="myUsers" class="com.po.Users" scope="page"/>
    <h1>setProperty动作元素</h1>
    <hr>
    <!--根据表单自动匹配所有的属性 property="*"-->
    <!--根据表单匹配部分的属性 property="JavaBean属性名"-->
    <!--手工设置，与表单无关 property="JavaBean属性名" value="JavaBean属性值"-->
    <!--通过URL传参给属性赋值 property="propertyName" param="request对象中的参数名"-->
    <%--<jsp:setProperty name="myUsers" property="username" value="lisi"/>
    <jsp:setProperty name="myUsers" property="password" value="888888"/>
    <jsp:setProperty name="myUsers" property="password" param="mypass"/>--%>

    <jsp:setProperty name="myUsers" property="*"/>

    <!--使用传统方式获得JavaBeans属性-->
    <%--用户名：<%=myUsers.getUsername()%><br>
    密码：<%=myUsers.getPassword()%><br>--%>

    <!--使用getProperty获得属性-->
    用户名：<jsp:getProperty name="myUsers" property="username"/><br>
    密码：<jsp:getProperty name="myUsers" property="password"/><br>
</body>
</html>
