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
        <h1>Danh sách nhân viên!</h1>
        <table border="1"> 
            <tr>  
                <th>Mã NV</th>  
                <th>Họ và tên</th>  
                <th>Giới tính</th>  
                <th>Hình</th>
                <th>Email</th>  
                <th>Điện thoại</th>  
                <th>Lương</th>  
                <th>Ghi chú</th>
                <th>Phòng ban</th>
            </tr> 
            <c:forEach var="s" items="${staffs}"> 
                <tr>  
                    <td>${s.id}</td>  
                    <td>${s.name}</td>  
                    <td>${s.gender?'Nam':'Nữ'}</td>  
                    <td><img src="img/${s.photo}"</td>                    
                    <td>${s.email}</td>  
                    <td>${s.phone}</td>  
                    <td>${s.salary}</td>  
                    <td>${s.notes}</td>
                    <td>${s.depart.name}</td>
                </tr> 
            </c:forEach> 
        </table>
        <spring:form action="staff/btnLui.htm">
            <button name="btnLui"><<</button>
            <input name="txtSo1" value="${so}"/>
            <input name="txtSo2" value="${sokt}"/>
            <button name="btnTien">>></button>
        </spring:form>
               </div>
            <div class="footer"></div>
    </body>
</html>
