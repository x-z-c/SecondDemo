<%--
  Created by IntelliJ IDEA.
  User: 徐志诚
  Date: 2019/3/27
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String appPath = request.getContextPath(); %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Paper列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="<%=appPath%>/paper/toAddpaper">新增</a>
        </div>
    </div>
    <form action="<%=appPath%>/paper/queryByname" method="post">
        <input type="text" name="name">
        <input type="submit" value="查询" >
    </form>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>名字</th>
                    <th>类型</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="paper" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${paper.id}</td>
                        <td>${paper.name}</td>
                        <td>${paper.type}</td>
                        <td>
                            <a href="<%=appPath%>/paper/del/${paper.id}">删除</a>
                            <a href="<%=appPath%>/paper/toUpdatePaper/${paper.id}">更改</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

