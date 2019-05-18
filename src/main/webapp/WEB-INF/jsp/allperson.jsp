<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/4/6
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>学生宿舍信息列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        #main{
            float:right;
        }
        #nav{
            float:left;
            width:200px;
        }

    </style>
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
            </div>
        </div>
    </div>
    <!--/>
    <div class="row clearfix">
    <!-->
        <div id="nav">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="${ctx}/person/allperson">主页</a></li>
                <li><a href="${ctx}/person/toaddPerson">添加学生信息</a></li>
                <li><a href="">宿舍介绍</a></li>
            </ul>
        </div>
        <div  id="main" class="col-md-8 column">
            <table class="table table-hover table-bordered">
                <thead>
                <tr class="info">
                    <th>姓名</th>
                    <th>宿舍楼</th>
                    <th>宿舍号</th>
                    <th>性别</th>
                    <th>年龄</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="person" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td class="success">${person.name}</td>
                        <td class="success">${person.dorm_building}</td>
                        <td class="success">${person.dorm_number}</td>
                        <td class="success">${person.sex}</td>
                        <td class="success">${person.age}</td>
                        <td class="warning" style="text-decoration: none; ">
                            <a href="<%=appPath%>/person/toupdatePerson?name=${person.name}">修改</a>
                            &nbsp;&nbsp;
                            <a href="<%=appPath%>/person/del/${person.name}" onclick="return del_alert()">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <script type="text/javascript">
                function del_alert()
                {
                    if(confirm('确认需要删除这个学生的信息吗?'))
                    {
                        return true;
                    }
                    return false;
                }
            </script>
        </div>
    </div>
</body>
</html>

