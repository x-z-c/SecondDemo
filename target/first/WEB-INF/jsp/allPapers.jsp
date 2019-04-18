<%--
  Created by IntelliJ IDEA.
  User: 徐志诚
  Date: 2019/3/27
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
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
            <form action="${path}/paper/addPapers">
                名称：<input type="text" name="jrw"><br>
                日期：<input type="date" name="jdate">
                <br><br>
                <input  type="submit" value="发作业">
            </form>
        </div>
    </div>


    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>结果</th>
                    <th>日期</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="paper" items="${requestScope.get('listq')}" varStatus="status">
                    <tr>
                        <td>${paper.jid}</td>
                        <td>${paper.jrw}</td>
                        <td>${paper.jdate}</td>
                        <td>
                            <a class="btn btn-primary"  href="${path}/paper/del/${paper.jid}">删除</a>
                            <a class="btn btn-primary"  href="${path}/paper/selbyzy/${paper.jid}">查看作业</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

