
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>查找住宿学生信息</title>
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
        #back{
            font-size: 16px;
            text-decoration: none;
            color: lightcoral;
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
           <a href="${ctx}/person/allperson" id="back">回到主页</a>
        </div>
    </div>
</div>

    <div id="nav">
    <form class="form-inline" action="<%=basePath%>/person/queryAge" method="post" >
        <div class="form-group">
            <label>年龄：</label>
            <input type="text" class="form-control" name="age">
        </div>
        <input type="submit" value="查询" class="form-control btn btn-info"/>
    </form>
    <form class="form-inline" action="<%=basePath%>/person/queryDormBuilding" method="post" >
        <div class="form-group">
            <label>宿舍楼：</label>
            <input type="text" class="form-control" name="dormbuilding"/>
        </div>
        <input type="submit" value="查询" class="form-control btn btn-info"/>
    </form>
        <form class="form-inline" action="<%=basePath%>/person/queryDormNumber" method="post" >
            <div class="form-group">
                <label>宿舍号：</label>
                <input type="text" class="form-control" name="dormnumber"/>
            </div>
            <input type="submit" value="查询" class="form-control btn btn-info"/>
        </form>
        <form class="form-inline" action="<%=basePath%>/person/querySex" method="post" >
            <div class="form-group">
                <label>性别：</label>
                <input type="text" class="form-control" name="sex"/>
            </div>
            <input type="submit" value="查询" class="form-control btn btn-info"/>
        </form>
        <form class="form-inline" action="<%=basePath%>/person/queryName" method="post" >
            <div class="form-group">
                <label>姓名：</label>
                <input type="text" class="form-control" name="name"/>
            </div>
            <input type="submit" value="查询" class="form-control btn btn-info"/>
        </form>
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
        </tr>
        </thead>
        <tbody>
            <c:forEach var="person" items="${requestScope.get('list2')}">
                <tr>
                    <td class="success">${person.name}</td>
                    <td class="success">${person.dormbuilding}</td>
                    <td class="success">${person.dormnumber}</td>
                    <td class="success">${person.sex}</td>
                    <td class="success">${person.age}</td>
                </tr>
            </c:forEach>

            <c:forEach var="person" items="${requestScope.get('list3')}">
                <tr>
                    <td class="success">${person.name}</td>
                    <td class="success">${person.dormbuilding}</td>
                    <td class="success">${person.dormnumber}</td>
                    <td class="success">${person.sex}</td>
                    <td class="success">${person.age}</td>
                </tr>
            </c:forEach>

            <c:forEach var="person" items="${requestScope.get('list4')}">
                <tr>
                    <td class="success">${person.name}</td>
                    <td class="success">${person.dormbuilding}</td>
                    <td class="success">${person.dormnumber}</td>
                    <td class="success">${person.sex}</td>
                    <td class="success">${person.age}</td>
                </tr>
            </c:forEach>

            <c:forEach var="person" items="${requestScope.get('list5')}">
                <tr>
                    <td class="success">${person.name}</td>
                    <td class="success">${person.dormbuilding}</td>
                    <td class="success">${person.dormnumber}</td>
                    <td class="success">${person.sex}</td>
                    <td class="success">${person.age}</td>
                </tr>
            </c:forEach>

            <c:forEach var="person" items="${requestScope.get('list6')}">
                <tr>
                    <td class="success">${person.name}</td>
                    <td class="success">${person.dormbuilding}</td>
                    <td class="success">${person.dormnumber}</td>
                    <td class="success">${person.sex}</td>
                    <td class="success">${person.age}</td>
                </tr>
            </c:forEach>

        </tbody>
    </table>
</div>
</div>
</body>
</html>
