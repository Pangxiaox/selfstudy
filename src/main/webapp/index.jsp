<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    pageContext.setAttribute("path", request.getContextPath());
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<% String appPath = request.getContextPath(); %>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        h3 {
            width: 140px;
            height: 36px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: lightsalmon;
            border-radius: 6px;
        }
        .bd{
            background: url("<%=appPath%>/image/bgimg2.jpg")repeat;
            width:100%;
            display: block;
            height:100%;
            -moz-background-size:100% 100%;
            background-size:cover;
        }
    </style>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bd">
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    A校-校园宿舍管理平台
                </h1>
            </div>
        </div>
    </div>
<br><br>
<h3>
    <a href="${path}/person/allperson"
       style="text-decoration: none;color: lightseagreen;
            font-size: 20px;">点击进入主页</a>
</h3>
</div>
</body>
</html>