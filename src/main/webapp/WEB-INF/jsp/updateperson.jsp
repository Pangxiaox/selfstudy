<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>修改论文</title>
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

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>更改学生住宿信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form id="form" class="bs-example bs-example-form" action="" name="userForm" role="form">
        名字：
        <input id="name" class="form-control" type="text" name="name" style="width:30%" value="${person.name}" readonly>
        <br><br><br>

        宿舍楼：
        <select id="dormbuilding" name="dormbuilding" class="form-control">
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
        <input id="dormnumber" class="form-control" type="text" name="dormnumber" style="width:30%" value="${person.dormnumber}" readonly>
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

        <input type="button" class="btn btn-success" value="更改信息" onclick="updateperson()">
    </form>

    <script type="text/javascript">
        function updateperson() {
            var form = document.forms[0];
            form.action = "<%=basePath%>person/updateperson";
            form.method = "post";
            var Age=document.getElementById("age").value;
            if(Age<18)
            {
                alert('请输入正确的年龄');
                return false;
            }
            form.submit();
            return true;
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
