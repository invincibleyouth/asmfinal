<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
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
            <div class="body" style="text-align: center;">
                <h2>NEW DEPART</h2>
                <spring:form action="depart.htm" modelAttribute="dep" method="POST">
                    <div>   
                        <label>ID</label>   
                        <spring:input path="id"/>  
                    </div>  
                    <div>   
                        <label>Name</label>  
                        <spring:input path="name"/>
                    </div>
                    <div>   
                        <spring:button name="insert">Register</spring:button>
                        <spring:button name="update">Update</spring:button>
                        </div> 
                </spring:form>
                <h2>COMPANY</h2>                    
                <table border="1" style="text-align: center;margin: auto;">
                    <tr>
                        <th>ID</th>
                        <th>Depart</th>
                        <th>Chức năng</th>
                    </tr>
                    <c:forEach var="d" items="${depart}">
                        <tr>
                            <td>${d.id}</td>
                            <td>${d.name}</td>
                            <td><a href="depart/delete/${d.id}.htm">Delete</a>              
                                <form action="depart/edit.htm">
                                    <input name="id" hidden="" value="${d.id}"/>
                                    <input name="name" hidden="" value="${d.name}"/>
                                    <input type="submit" value="Edit">
                                </form>
                            </td>                            
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="footer"></div>
        </div>

    </body>
</html>
