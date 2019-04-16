<%--
  Created by IntelliJ IDEA.
  User: 徐志诚
  Date: 2019/4/1
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<%@page isELIgnored="false" %>
<html>
<!-- 引入 Bootstrap -->
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
    <title>Title</title>
</head>
<body>

<div class="row clearfix">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>作业</th>
                <th>日期</th>
                <th>学生编号</th>
                <th>学生评语</th>
                <th>作业登记</th>
                <th>操作</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach items="${student}" var="student">
                <tr>
                    <td>${student.xjg}</td>
                    <td>${student.xdate}</td>
                    <td>${student.xid}</td>
                    <td>${student.jpy}</td>
                    <td>${student.jtype}</td>
                    <td>
                        <a href="${path}/paper/del/${student.jid}">删除</a>
                        <a href="${path}/paper/selbyids/${student.xid}">评价该作业</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


</body>
</html>
