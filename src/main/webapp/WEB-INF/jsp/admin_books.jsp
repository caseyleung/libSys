<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>全部图书信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html'); //自动加载admin_header的view
        })
    </script>
</head>
<body background="img/books.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%; background-attachment: fixed;">


<div id="header"></div>


<%-- 下来框可以看header的写法 --%>
<div style="padding: 70px 550px 10px" id="container">
    <div style="display:inline-block" >
        <form method="post" action="" class="form-inline"  id="bookClass">
            <%--collapse navbar-collapse--%>
            <div class="input-group-btn dropdown">
                <ul class="nav navbar-nav navbar-left">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">type<b class="caret"></b></a>
                        <c:forEach items="${books}" var="book">
                        <ul class="dropdown-menu">
                            <li><a href="querybooktype.html"><c:out value="${book.bookId}"></c:out></a></li>
                            <li class="divider"></li>
                        </ul>
                        </c:forEach>
                    </li>
                </ul>
            </div>
        </form>
    </div>

    <div style="display:inline-block;margin-left:10px" >
        <form method="post" action="querybook.html" class="form-inline"  id="searchForm">
            <div class="input-group">
                <input type="text" placeholder="输入图书名" class="form-control" id="search" name="searchWord" class="form-control">
                <span class="input-group-btn">
                <input type="submit" value="搜索" class="btn btn-default">
            </span>
        </div>
    </form>

    <%-- 这个做什么的，#search是那个的id标签  --%>
    <script>
        $("#searchForm").submit(function () {
            var val=$("#search").val();
            if(val==''){
                alert("请输入关键字");
                return false;
            }
        })
    </script>
</div>

</div>


<div style="position: relative;top: 10%">

<c:if test="${!empty succ}">
    <div class="alert alert-success alert-dismissable">
        <button type="button" class="close" data-dismiss="alert"
                aria-hidden="true">
            &times;
        </button>
        ${succ}
    </div>
</c:if>

<c:if test="${!empty error}">
    <div class="alert alert-danger alert-dismissable">
        <button type="button" class="close" data-dismiss="alert"
                aria-hidden="true">
            &times;
        </button>
        ${error}
    </div>
</c:if>

</div>
<div class="panel panel-default" style="width: 90%;margin-left: 5%">
    <div class="panel-heading" style="background-color: #fff">
        <h3 class="panel-title">
            全部图书
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>书名</th>
                <th>作者</th>
                <th>出版社</th>
                <th>ISBN</th>
                <th>价格</th>
                <th>剩余数量</th>
                <th>详情</th>
                <th>编辑</th>
                <th>删除</th>
            </tr>
            </thead>

            <tbody>
            <c:forEach items="${books}" var="book">
                <tr>
                    <td><c:out value="${book.name}"></c:out></td>
                    <td><c:out value="${book.author}"></c:out></td>
                    <td><c:out value="${book.publish}"></c:out></td>
                    <td><c:out value="${book.isbn}"></c:out></td>
                    <td><c:out value="${book.price}"></c:out></td>
                    <td><c:out value="${book.number}"></c:out></td>
                    <td><a href="admin_book_detail.html?bookId=<c:out value="${book.bookId}"></c:out>">
                        <button type="button" class="btn btn-success btn-xs">详情</button>
                    </a></td>
                    <td><a href="updatebook.html?bookId=<c:out value="${book.bookId}"></c:out>"><button type="button" class="btn btn-info btn-xs">编辑</button></a></td>
                    <td><a href="deletebook.html?bookId=<c:out value="${book.bookId}"></c:out>"><button type="button" class="btn btn-danger btn-xs">删除</button></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
