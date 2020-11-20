<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<style>
    a {
        text-decoration: none;
        color: black;
        font-size: 18px;
    }
    h3 {
        width: 180px;
        weigh: 38px;
        margin: 100px auto;
        text-align: center;
        line-height: 38px;
        background: deepskyblue;
        border-radius: 5px;
    }
</style>
</head>
<body>
<h3>
    <a href="${pageContext.request.contextPath}/book/list">图书一览</a>
</h3>
</body>
</html>