<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Admin Portal</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f9f9f9;
    }
    h2, h1 {
        color: #333;
    }
    h2 {
        margin: 20px 0;
    }
    h1 {
        margin: 20px 0 40px;
    }
    div {
        text-align: center;
        margin: 20px 0;
    }
    div a {
        text-decoration: none;
        color: #333;
        background-color: white;
        font-weight: bold;
        padding: 8px 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: all 0.3s ease-in-out;
        margin: 5px;
    }
    div a:hover {
        background-color: #f1f1f1;
        border-color: #999;
    }
    form {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    form div {
        margin-bottom: 15px;
    }
    form label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: #333;
    }
    form input[type="text"],
    form input[type="password"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 14px;
    }
    form input[type="submit"],
    form input[type="reset"] {
        padding: 10px 20px;
        font-size: 16px;
        font-weight: bold;
        color: #333;
        background-color: white;
        border: 1px solid #ccc;
        border-radius: 5px;
        cursor: pointer;
        margin: 10px 5px 0;
        transition: all 0.3s ease-in-out;
    }
    form input[type="submit"]:hover,
    form input[type="reset"]:hover {
        background-color: #f1f1f1;
        border-color: #999;
    }
</style>
</head>

<body>
<h3 align="center" style="color:red">
<c:out value="${message}"></c:out><br/>
</h3>
<h2 align="center">Customer Admin Portal</h2>
<div>
    <a href="/">Home</a>
    <a href="customerreg">Customer Registration</a>
    <a href="adminlogin">Admin Login</a>
    <a href="customerlogin">Customer Login</a>
</div>
<h1 align="center">Please Enter Your Credentials</h1>
<form method="post" action="checkcustomerlogin">
    <div>
        <label>Enter Useremail</label>
        <input type="text" name="cemail" required />
    </div>
    <div>
        <label>Enter Password</label>
        <input type="password" name="cpassword" required />
    </div>
    <input type="submit" value="Login" >
    <input type="reset" value="Clear" >
</form>
</body>
</html>
