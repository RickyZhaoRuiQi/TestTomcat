<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/8
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>主页</title>
  </head>
  <body>
    <h1>Welcome to my web page</h1>
    <hr>
    <!-- html注释,客户端可见 -->
    <%-- jsp注释 --%>
    <%!//jsp声明
        String s = "张三丰";   //声明了一个字符串变量
        int add(int x,int y)  //声明了一个方法
        {
           return x + y;
        }
    %>
    <%
      //单行注释
      /*
      * 多行注释
      * */
        out.println("大家好，欢迎大家学些JavaEE开发。");  //jsp脚本
    %>
    <br>
    你好，<%=s %><br>
    x + y = <%=add(10,5)%><br>  <%-- jsp表达式--%>
  </body>
</html>
