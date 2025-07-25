<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="style.css" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Admin Login</title>
</head>
<%@ include file="mainnavbar.jsp" %>
<h1 align="center" >Admin Login</h1>
<form method="post" action="checkadminlogin">
<div class="form-group">
<label>Enter your username</label>
<input type="text" class="form-control" name="ausername" required/>
<br/>
</div>



<div class="form-group">
<label>Enter your Password</label>
<input type="password" class="form-control"name="apassword" required/>
<br/>
</div>



<input type="reset" class="btn btn-success"name="clear" required/>
<input type="submit" class="btn btn-success"name="register" required/>

</form>
</body>
</html>
