
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
        #back{
            font-size: 16px;
            text-decoration: none;
            color: lightcoral;
        }
        #nav{
            float:left;
            width:350px;
        }
        #title{
            text-align:center;
            font-size:18px;
        }
        .success{
            text-align:center;
        }
        .thtitle{
            text-align:center;
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
        <p id="title">单一条件查询</p>
    <form class="form-inline" action="<%=basePath%>/person/queryAge" method="post" >
        <div class="form-group">
            <label>年龄：</label>
            <input type="text" class="form-control" name="age" maxlength="2">
        </div>
        <input type="submit" value="查询" class="form-control btn btn-info"/>
        </form>
        <br>
    <form class="form-inline" action="<%=basePath%>/person/queryDormBuilding" method="post" >
        <div class="form-group">
            <label>宿舍楼：</label>
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
        </div>
        <input type="submit" value="查询" class="form-control btn btn-info"/>
    </form>
        <br>
        <form class="form-inline" action="<%=basePath%>/person/queryDormNumber" method="post" >
            <div class="form-group">
                <label>宿舍号：</label>
                <input type="text" class="form-control" name="dormnumber" maxlength="3">
            </div>
            <input type="submit" value="查询" class="form-control btn btn-info"/>
        </form>
        <br>
        <form class="form-inline" action="<%=basePath%>/person/querySex" method="post" >
            <div class="form-group">
                <label>性别：</label>
                <select id="sex" name="sex" class="form-control">
                    <option value="choose" selected="selected">请选择</option>
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
            </div>
            <input type="submit" value="查询" class="form-control btn btn-info"/>
        </form>
        <br>
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
            <th class="thtitle">姓名</th>
            <th class="thtitle">宿舍楼</th>
            <th class="thtitle">宿舍号</th>
            <th class="thtitle">性别</th>
            <th class="thtitle">年龄</th>
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
