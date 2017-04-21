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
            <div class="body" style="text-align: center;">
                <h1>Thành tích và kỷ luật!</h1>
                <h1><a href="record/insert.htm">New record</a></h1>

                <table border="1" style="text-align: center;margin: auto;"> 
                    <tr>  
                        <th>Mã NV</th> 
                        <th>Tổng thành tích</th> 
                        <th>Tổng kỷ luật</th> 
                        <th>Tổng kết</th> 
                    </tr> 
                    <c:forEach var="a" items="${arrays}"> 
                        <tr> 
                            <td>${a[0]}</td> 
                            <td>${a[1] }</td> 
                            <td>${a[2]}</td>
                            <td>${a[1] - a[2]}</td> 
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="footer"></div>
        </div>
    </body>
</html>
