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
                        <small>修改图书</small>
                    </h1>
                </div>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
            <input type="hidden" name="bookId" value="${aBook.bookId}">
            <div class="form-group">
                <label for="bkname">书名</label>
                <input type="text" name="bookName" class="form-control" value="${aBook.bookName}" id="bkname" required>
            </div>
            <div class="form-group">
                <label for="quantity">数量</label>
                <input type="text" name="quantity" class="form-control" value="${aBook.quantity}" id="quantity" required>
            </div>
            <div class="form-group">
                <label for="detail">详情</label>
                <input type="text" name="detail" class="form-control" value="${aBook.detail}" id="detail" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="修改">
            </div>
        </form>
    </div>
</body>
</html>