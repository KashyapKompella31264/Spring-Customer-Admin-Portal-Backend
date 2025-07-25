<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="style.css" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Add a Product</title>
</head>
<%@ include file="adminnavbar.jsp" %>

<h1 align="center" >Add a Product</h1>
<form method="post" action="insertproduct" enctype="multipart/form-data">
<div class="form-group">
<label>Enter Name of the Product</label>
<input type="text" class="form-control" name="pname" required/>
<br/>
</div>

<div class="form-group">
<label>Enter Product Cost</label>
<input type="text" class="form-control" name="pcost" required/>
<br/>
</div>

<div class="form-group">
<label>Description</label>
<input type="text" class="form-control"name="pdescription" required/>
<br/>
<label>Product Image</label>
<input type="file" name="pimage" required/>
</div>
<input type="reset" class="btn btn-success" value="Clear" required/>
<input type="submit" class="btn btn-success" value="Add"required/>

</form>
<h3 align="center" style="color:green">
<c:out value="${message}"></c:out><br/>
</h3>
</body>
</html>

