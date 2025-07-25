<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.model.Customer" %>

<% 
Customer c=(Customer)session.getAttribute("customer"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="customernavbar.jsp" %><br/>
Id:<%=c.getId() %> <br/>
Name:<%=c.getName() %><br/>
Gender:<%=c.getGender() %><br/>
Age:<%=c.getAge() %><br/>
Date of Birth:<%=c.getDateofBirth() %><br/>
Email:<%=c.getEmail() %><br/>
Password:<%=c.getPassword() %><br/>
Location:<%=c.getLocation() %><br/>
Contact:<%=c.getContact() %><br/>
</body>
</html>