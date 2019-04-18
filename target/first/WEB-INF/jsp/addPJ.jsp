<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/29
  Time: 23:19
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
    <title>评阅作业</title>
</head>
<body>
<form action="${path}/paper/updatestudent" method="post">
    <input type="hidden" value="${se.xid}" name="xid">
    <h2 align="center">批阅作业</h2>
    <table align="center">
        <tr>
            <td >学生编号:${se.xid}</td>
        </tr>
        <tr>
            <td>学生作业回答:${se.xjg}</td>
        </tr>

        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;评语&nbsp;&nbsp;&nbsp;&nbsp;
                <textarea name="jpy" cols="60" rows="5" placeholder="请给出您的评价">${se.jpy}</textarea></td>
        </tr>
        <tr>
            <td>作业等级:
                A<input type="radio" name="jtype" value="A" >
                B<input type="radio" name="jtype" value="B">
                C<input type="radio" name="jtype" value="C">
                D<input type="radio" name="jtype" value="D">
            </td>
        </tr>
        <tr>
            <th><input type="submit" value="确定"  style="height: 40px;width: 120px"></th>
        </tr>

    </table>
</form>
</body>
</html>
