<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书一览</title>
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>图书一览</small>
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBookPage">新增图书</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/list">显示全部</a>
                </div>
                <div class="column">
                    <form class="form-inline" action="${pageContext.request.contextPath}/book/queryBook" method="post">
                        <input type="text" name="bookName" class="form-control" placeholder="请输入要查询的图书名称">
                        <input type="submit" value="查询" class="btn btn-primary">
                    </form>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-strip">
                    <thead>
                        <tr>
                            <th>书号</th>
                            <th>书名</th>
                            <th>数量</th>
                            <th>详情</th>
                            <th>操作</th>
                        </tr>
                    </head>
                    <tbody>
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.bookId}</td>
                                <td>${book.bookName}</td>
                                <td>${book.quantity}</td>
                                <td>${book.detail}</td>
                                <td>
                                <a href="${pageContext.request.contextPath}/book/toUpdatePage?id=${book.bookId}">修改</a>
                                &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookId}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>