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
<title>Customer regestration</title>
</head>
<%@ include file="mainnavbar.jsp" %>
<h1 align="center" >Customer regestration form</h1>
<form method="post" action="insertcustomer">
<div class="form-group">
<label>Enter your name</label>
<input type="text" class="form-control" name="cname" required/>
<br/>
</div>
<label>Enter your Gender</label>
<input type="radio" name="cgender" value="Male"required/>Male
<input type="radio" name="cgender" value="Female"required/>Female
<input type="radio" name="cgender" value="Others"required/>Others
<br/>

<div class="form-group">
<label>Enter your age</label>
<input type="text" class="form-control" name="cage" required/>
<br/>
</div>

<div class="form-group">
<label>Enter your Date Of Birth</label>
<input type="date" class="form-control"name="cdob" required/>
<br/>
</div>

<div class="form-group">
<label>Enter your Email</label>
<input type="email" class="form-control" name="cemail" required/>
<br/>
</div>

<div class="form-group">
<label>Enter your Password</label>
<input type="password" class="form-control"name="cpassword" required/>
<br/>
</div>

<div class="form-group">
<label>Enter your location</label>
<input type="text" class="form-control"name="clocation" required/>
<br/>
</div>

<div class="form-group">
<label>Enter your Contact</label>
<input type="number" name="ccontact" required/>
<br/>
</div>


<input type="reset" class="btn btn-success"name="clear" value="clear" required/>
<input type="submit" class="btn btn-success"name="register" value="Register"required/>

</form>
</body>
</html>
