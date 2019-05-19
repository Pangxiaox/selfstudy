<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/4/7
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>新增住宿学生信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
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

    <form id="form" class="bs-example bs-example-form" name="userForm" role="form">

        名字：
        <input id="name" class="form-control" type="text" name="name" placeholder="请输入名字" style="width:30%"
                  onfocus="showTips('name','名字必填')"><span id="namespan"></span><br><br><br>

        宿舍楼：
            <select id="dorm_building" name="dorm_building" class="form-control">
                <option value="choose" selected="selected">请选择</option>
                <option value="C1">C1</option>
                <option value="C2">C2</option>
                <option value="C3">C3</option>
                <option value="C4">C4</option>
                <option value="C5">C5</option>
                <option value="C6">C6</option>
                <option value="C7">C7</option>
                <option value="C8">C8</option>
                <option value="C9">C9</option>
                <option value="C10">C10</option>
                <option value="C11">C11</option>
                <option value="C12">C12</option>
                <option value="C13">C13</option>
                <option value="C14">C14</option>
                <option value="C15">C15</option>
            </select>
        <br><br><br>

        宿舍号：
        <input id="dorm_number" class="form-control" type="text" name="dorm_number" placeholder="请输入宿舍号" style="width:30%">
        <br><br><br>

        性别：
        <select id="sex" name="sex" class="form-control">
            <option value="choose" selected="selected">请选择</option>
            <option value="男">男</option>
            <option value="女">女</option>
        </select>
        <br><br><br>

        年龄：
        <input id="age" class="form-control" type="text" name="age"
                  placeholder="请输入年龄" maxlength="2" style="width:20%"
                onfocus="showTips('age','年龄必填')"
                onblur="checkage('age','年龄须大于或等于18')"><span id="agespan"></span>
        <br><br><br>
    </form>

    <input type="button" class="btn btn-success" value="添加信息" onclick="addperson()">

    <script type="text/javascript">
        function addperson() {
            var form = document.forms[0];
            form.action = "<%=basePath%>person/addperson";
            form.method = "post";
            form.submit();
        }

        function showTips(id,info)
        {
            document.getElementById(id+"span").innerHTML="<font color='gray'>" + info + "</font>"
        }

        function checkage(id,info)
        {
            var Age=document.getElementById(id).value;
            if(Age<18)
            {
                document.getElementById(id+"span").innerHTML="<font color='red'>" + info + "</font>";
            }
            else
            {
                document.getElementById(id + "span").innerHTML = ""
            }
        }

    </script>
</div>
</body>
</html>
