<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                <h1>Thành tích và kỷ luật!</h1>
                ${message}
                <form:form action="record/insert.htm" modelAttribute="record">  
                    <div>  
                        <label>Nhân viên</label>  
                        <form:select path="staff.id"  items="${staffs}" itemValue="id" itemLabel="name"/> 
                    </div> 
                    <div> 
                        <label>Loại</label> 
                        <form:radiobutton path="type" value="true" label="Thành tích"/> 
                        <form:radiobutton path="type" value="false" label="Kỷ luật"/> 
                    </div>
                    <div>
                        <form:textarea path="reason" rows="3"/>
                    </div>
                    <div>
                        <button>Insert</button>
                    </div>
                </form:form>
            </div>
                <div class="footer"></div>
        </div>
    </body>
</html>
