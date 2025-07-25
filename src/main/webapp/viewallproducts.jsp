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
<h3 align="center">View All Customers</h3>
<table method="post" >
    <tr>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Cost</th>
        <th>Description</th>
        <th>Image</th>
        
    </tr>
    <c:forEach items="${products}" var="product"> 
    <tr>
        <td><c:out value="${product.id}"></c:out></td>
        <td><c:out value="${product.name}"></c:out></td>
        <td><c:out value="${product.cost}"></c:out></td>
        <td><c:out value="${product.description}"></c:out></td>
        <td><c:out value="${product.image}"></c:out></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
