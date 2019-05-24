<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        a {
            text-decoration: none;
            color: lightcoral;
            font-size: 18px;
        }
        h3 {
            width: 140px;
            height: 36px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: lightgrey;
            border-radius: 6px;
        }
    </style>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
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
    <a href="${path}/person/allperson" style="text-decoration: none;">点击进入主页</a>
</h3>
</div>
</body>
</html>