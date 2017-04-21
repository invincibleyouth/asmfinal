<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <base href="${pageContext.servletContext.contextPath}/">
        <link href="<c:url value="/css/indexcss.css" />" rel="stylesheet">

        <style>

        </style>
    </head>
    <body style="margin: 0;">
        <div class="first-level">
            <div class="header">
                <div class="name-logo">ABC</div>
                <div class="name2-logo">GROUP</div>
            </div>
            <div class="vertical"></div>
            <div class="body" style="text-align: center;">
                <h2>LOGIN</h2>
                <div class="form-login">
                    <form action="login.htm" method="post">
                        <input type="text" name="txtUser" placeholder="Username"/></br>
                        <input type="password" name="txtPass" placeholder="Password"/></br>
                        ${message}</br>
                        <button name="btnLogin" class="button">Login</button>
                </div>
                </form>
            </div>
            <div class="footer"></div>
        </div>
</body>
</html>
