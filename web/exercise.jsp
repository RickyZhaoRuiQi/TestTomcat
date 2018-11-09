<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/9
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>九九乘法表</h1>
    <hr>
    <%!

        //返回九九乘法表对应的html代码，通过表达式来调用，在页面上显示
        String printMultiTable1()
        {
            String s = "";
            for(int i = 1;i <= 9; ++i)
            {
                for(int j = 1;j <= i; ++j)
                {
                    s+=i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;";
                }
                s+="<br>"; //追加换行标签
            }
            return s;
        }

        //JSP内置out对象，使用脚本方式调用，打印九九乘法表
        void printMultiTable2(JspWriter out) throws Exception
        {
            for(int i = 1;i <= 9; ++i)
            {
                for(int j = 1;j <= i; ++j)
                {
                    out.println(i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;");
                }
                out.println("<br>"); //追加换行标签
            }
        }
    %>
    <%=printMultiTable1()%>
    <br>
    <%printMultiTable2(out);%>
</body>
</html>
