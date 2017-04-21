

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <base href="${pageContext.servletContext.contextPath}/">
    </head>
    <body>
        <h2>TÀI KHOẢN NGƯỜI SỬ DỤNG</h2>
        <table border="0">
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Fullname</th>
                <th>Chức năng</th>
            </tr>
            <c:forEach var="u" items="${users}">
                <tr>
                    <td>${u.username}</td>
                    <td>${u.password}</td>
                    <td>${u.fullname}</td>
                    <td><a href="user/delete/${u.username}.htm">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
