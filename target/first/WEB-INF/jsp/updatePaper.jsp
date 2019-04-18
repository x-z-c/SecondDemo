<%--
  Created by IntelliJ IDEA.
  User: 徐志诚
  Date: 2019/3/27
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>修改论文</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>






    <form action="" name="userForm">
        <input type="hidden" name="id" value="${paper.id}"/><br><br>
        论文名称：<input type="text" name="name" value="${paper.name}"/><br><br>
        论文数量：<input type="text" name="type" value="${paper.type}"/><br><br>
      <br><br>
        <input type="button" value="提交" onclick="updatePaper()"/>
    </form>
    <script type="text/javascript">
        function updatePaper() {
            var form = document.forms[0];
            form.action = "<%=basePath %>paper/updatePaper";
            form.method = "post";
            form.submit();
        }
    </script>





