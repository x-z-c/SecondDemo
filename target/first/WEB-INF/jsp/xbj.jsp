<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/29
  Time: 23:08
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
    <title>班級完成情況</title>
</head>
<body>
<table cellpadding="3" cellspacing="12" align="center">
    <tr><h2 align="center">班級完成情況</h2> </tr>
    <tr>
        <td colspan="6" ALIGN="center">
            <form action="${path}/paper/selectByName" method="post">
                <select name="xbj">
                <c:forEach var="list" items="${list}">
                    <option value="${list.xbj}">${list.xbj}</option>
                </c:forEach>
                </select>
                    <input type="submit" value="搜索">
            </form>
        </td>
    </tr>
    <tr>

        <th>所在班級</th>
        <th>完成情況</th>
    </tr>
    <c:forEach var="list1" items="${list1}">
        <tr>
            <th>${list1.xbj}班</th>
            <th>${count}人/总共${count1}人</th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
