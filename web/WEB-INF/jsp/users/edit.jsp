<%-- 
    Document   : edit
    Created on : Feb 27, 2017, 9:25:33 AM
    Author     : Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                    <td><a href="user/edit.htm">Edit</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
