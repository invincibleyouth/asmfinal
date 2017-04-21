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
                <h1>Đăng ký tài khoản</h1>
                ${message}
                <spring:form action="user.htm" modelAttribute="user" method="POST">
                    <div>   
                        <label>Username</label>   
                        <spring:input path="username"/>  
                    </div>  
                    <div>   
                        <label>Password</label>  
                        <spring:input path="password"/>  
                    </div>   
                    <div>   
                        <label>Fullname</label>  
                        <spring:input path="fullname"/>  
                    </div>  
                    <div>   
                        <spring:button name="insert">Register</spring:button>
                        <spring:button name="update">Update</spring:button>
                        </div> 
                </spring:form>
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
                            <td>
                                <form action="user/edit.htm">
                                    <input name="username" hidden="" value="${u.username}"/>
                                    <input name="password" hidden="" value="${u.password}"/>
                                    <input name="fullname" hidden="" value="${u.fullname}"/>
                                    <input type="submit" value="Edit">
                                </form>
                            </td>                            
                        </tr>
                    </c:forEach>
                </table>
            </div>

            <div class="footer"></div>
            |<a href="user/list.htm">Bài 3.1</a>|
            <a href="user/insert.htm">Bài 3.2</a>|
            <a href="staff/index.htm">Bài 4.1</a>|
            <a href="staff/report.htm">Bài 4.2</a>|
            <a href="record/insert.htm">Bài 5</a>|
        </div>

    </body>
</html>
