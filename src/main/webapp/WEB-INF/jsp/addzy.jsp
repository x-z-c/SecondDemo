<%--
  Created by IntelliJ IDEA.
  User: 徐志诚
  Date: 2019/4/1
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="row">
    <div class="col-md-4 column">
        <form action="${path}/paper/addStudent" name="userForm">
            <input type="hidden" name="jid" value="${jid}"><br>
            名称：<input type="text" name="xjg"><br>
            时间：<input type="date" name="xdate"><br>
            <br><br>
            <input type="submit" value="交作业">
        </form>
    </div>
</div>
</body>
</html>
