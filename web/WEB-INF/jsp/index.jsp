<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <base href="${pageContext.servletContext.contextPath}/">
        <link href="<c:url value="/css/indexcss.css" />" rel="stylesheet">

        <style>
        </style>
    </head>
    <body style="margin: 0;">
        <div class="first-level">
            <div class="menu">
                .<a href="index.htm">HOME</a>.                
                <a href="user/edit.htm">USER</a>.                
                <a href="staff/index.htm">EMPLOYMENT</a>.
                <a href="depart/index.htm">COMPANY</a>. 
                <a href="staff/report.htm">ACHIEVEMENT</a>.
            </div>
            <div class="header">
                <div class="name-logo">ABC</div>
                <div class="name2-logo">GROUP</div>
            </div>
            <div class="vertical"></div>
            <div class="body">
                ${message}
            </div>
            <div class="footer"></div>
        </div>
    </body>
</html>
