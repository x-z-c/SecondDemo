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
<div class="row clearfix">
    <div class="col-md-12 column">
        <h3 style="color: red" align="center">
            请在7天内完成作业
        </h3>
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>结果</th>
                <th>日期</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="paper" items="${requestScope.get('listq')}" varStatus="status">
                <tr>
                    <td>${paper.jrw}</td>
                    <td>${paper.jdate}</td>
                    <td>
                        <a class="btn btn-primary"  onclick="sj('${paper.jdate}')">提交作业</a>
                    </td>
                </tr>
                <script type="text/javascript">
                    function sj(dd){
                        var  date9=new Date(dd);
                        var date = new Date();
                        var date1=new Date("${paper.jdate}");  //开始时间
                        var date2=new Date(date .toLocaleDateString());    //结束时间
                        var date3=date2.getTime()-date9.getTime()  //时间差的毫秒数
                        //计算出相差天数
                        var days=Math.floor(date3/(24*3600*1000)+1)
                        alert(days)
                        if (days>7){
                            alert("超过回答时间限制");
                            parent.location.href = '../Xue.jsp';
                        }else{
                            parent.location.href = '${path}/paper/toAddpaper/${paper.jid}';
                        }
                    }
                </script>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

