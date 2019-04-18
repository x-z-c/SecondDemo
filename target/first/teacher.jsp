<%--
  Created by IntelliJ IDEA.
  User: 17736
  Date: 2019/4/1
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <title>学生</title>
    <link rel="stylesheet" href="./css/login.css">
</head>
<body>
<div class="login">
    <div class="login_title">
        <p>作业发布平台</p>
    </div>
    <div class="login_main">
        <div class="main_left"></div>
        <div class="main_right">
            <div class="right_title">作业是个好东西</div>
            <form action="">
                <%--<div class="username">--%>
                <%--<img src="./img/username.png" alt="">--%>
                <%--<input type="text" placeholder="请输入用户名">--%>
                <%--</div>--%>
                <%--<div class="password">--%>
                <%--<img src="./img/password.png" alt="">--%>
                <%--<input type="text" placeholder="请输入密码">--%>
                <%--</div>--%>
                <%--<div class="code">--%>
                <%--<img src="./img/code.png" alt="">--%>
                <%--<input type="text" placeholder="请输入验证码">--%>
                <%--<div class="code_img">--%>
                <%--<img src="./img/code_img.png" alt="">--%>
                <%--</div>--%>
                <%--</div>--%>
                <div class="yes_login" style="margin-top: 100px"><a href="${path}/paper/selbyall">发布作业</a></div>
            </form>
        </div>
    </div>
    <div class="login_footer">

    </div>
</div>

</body>
</html>
