<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/26
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>

<%--include指令--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.*,java.util.*" %>
<%
    Date d = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
    String s = sdf.format(d);
    out.println(s);
%>


