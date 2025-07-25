<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Customers</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    h3 {
        margin: 20px 0;
    }
    table {
        border-collapse: collapse;
        width: 80%;
        margin: 0 auto;
        text-align: center;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
    }
    th {
        background-color: #f4f4f4;
        color: #333;
        text-transform: capitalize;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
</style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %><br/>
Total Customers:<c:out value="${count }"></c:out>
<h3 align="center">View All Customers</h3>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Gender</th>
        <th>Age</th>
        <th>Date of Birth</th>
        <th>Email</th>
        <th>Location</th>
        <th>Contact</th>
    </tr>
    <c:forEach items="${customerlist}" var="customer"> 
    <tr>
        <td><c:out value="${customer.id}"></c:out></td>
        <td><c:out value="${customer.name}"></c:out></td>
        <td><c:out value="${customer.gender}"></c:out></td>
        <td><c:out value="${customer.age}"></c:out></td>
        <td><c:out value="${customer.dateofBirth}"></c:out></td>
        <td><c:out value="${customer.email}"></c:out></td>
        <td><c:out value="${customer.location}"></c:out></td>
        <td><c:out value="${customer.contact}"></c:out></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
