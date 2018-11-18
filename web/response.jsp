<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/18
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.io.PrintWriter" language="java" %>
<%
    response.setCharacterEncoding("utf-8");//设置响应的MIME类型

    out.println("<h1>response内置对象</h1>");
    out.println("<hr>");
    //out.flush();//按照预定输出到page上

    PrintWriter outer = response.getWriter();
    outer.println("大家好，我是response对象生成的输出流outer对象");//输出提前于内置out对象

    //response.sendRedirect("reg.jsp");//请求重定向

    //请求重定向
    //response.sendRedirect("request.jsp");
    //请求转发
    //request.getRequestDispatcher("request.jsp").forward(request,response);
%>
