<%-- 
    Document   : atd1
    Created on : Dec 10, 2021, 12:05:49 AM
    Author     : PC
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="add1" method="post">
            <table border="1px" style="margin-left:auto;margin-right:auto; width: 1200px; text-align: center ">
                <tr>
                    <td>Id</td>
                    <td>Image</td>
                    <td>First Name</td>
                    <td>Last Name</td>
                    
                    <td>Date of Birth</td>
                    <td>Date</td>
                    <td>Present</td>

                </tr>
                <c:forEach items="${requestScope.students}" var="s">
                    <tr>
                        <td>${s.id}</td>
                        <td><image src="${s.image}" alt="" style="width: 60px;height: 85px"/></td>
                        <td>
                            ${s.first_name}<input type="hidden" value="${s.id}" name="id"/>
                        </td>
                        <td>
                            ${s.last_name}<input type="hidden" value="${s.id}" name="id"/>
                        </td>
                        <td>${s.dob}</td>
                        <td> <input type="date" name="day${s.id}"/></td>
                        <td><input type="checkbox" name="present${s.id}" value="present"></td>

                    </tr>
                </c:forEach>

            </table>
            <br/>
            <input type="submit" value="Save" style="margin-left: 1200px; font-size: 20px"/>
            <input type="button" value="Edit" style=" font-size: 20px"/>
        </form>
    </body>
</html>
