<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="${path}/paper/selbyalls"><button>学生查看作业:</button></a>
<span style="color: red">${msg}欢迎登录</span>
</body>
</html>
