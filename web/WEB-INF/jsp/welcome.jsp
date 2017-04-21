<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <base href="${pageContext.servletContext.contextPath}/">
        <link href="<c:url value="/css/test.css" />" rel="stylesheet">
        <link href="<c:url value="/css/button.css" />" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
        <style>

        </style>
    </head>
    <body style="border: 0;">
        <div class="container">
            <h1><a href="#">Chào mừng ${sessionScope.abc} đã đăng nhập thành công</a></h1>
            <br>
            <div class="content">
                <a href="index.htm" class="btn right">
                    <span class="left title">Back to index ! Click Here</span>
                    <span class="right icon icon-heart"><span class="arrow-right"></span></span>
                </a>
            </div>
            <br>
        </div>
    </body>
</html>
