<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/25
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.net.*"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>登录成功</h1>
    <hr><br><br><br>
    <%
        request.setCharacterEncoding("utf-8");
        //首先判断用户是否选择了记住登录状态
        String[] isUseCookies = request.getParameterValues("isUseCookie");
        if(isUseCookies != null && isUseCookies.length > 0)
        {
            //把用户名和密码保存在cookie对象里面
            String username =
                    URLEncoder.encode(request.getParameter("username"),"utf-8");
            String password =
                    URLEncoder.encode(request.getParameter("password"),"utf-8");

            Cookie usernameCookie = new Cookie("username",username);
            Cookie passwordCookie = new Cookie("password",password);
            usernameCookie.setMaxAge(864000);
            passwordCookie.setMaxAge(864000);//设置最大生存期限为10天
            response.addCookie(usernameCookie);
            response.addCookie(passwordCookie);
        }
        else
        {
            Cookie[] cookies = request.getCookies();
            if(cookies != null && cookies.length > 0)
            {
                for(Cookie c:cookies)
                {
                    if(c.getName().equals("username") || c.getName().equals("password"))
                    {
                        c.setMaxAge(0);//设置cookie失效
                        response.addCookie(c);//重新保存
                    }
                }
            }
        }
    %>
    <a href="cookie_users.jsp" target="_blank">查看用户信息</a>

</body>
</html>
