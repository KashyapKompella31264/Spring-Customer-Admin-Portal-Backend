<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.model.Customer" %>
<% Customer c=(Customer)session.getAttribute("customer"); %>
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
<%@ include file="customernavbar.jsp" %>
<h1 align="center" >Update Your Details</h1>
<form method="post" action="update">
<div class="form-group">
<label>Id</label>
<input type="text" class="form-control" value="<%=c.getId()%>"name="cid" readonly required/>
<br/>
</div>
<div class="form-group">
<label>Your Name</label>
<input type="text" class="form-control" value="<%=c.getName()%>"name="cname" required/>
<br/>
</div>
<label>Your Gender</label>
<input type="radio" name="cgender" value="Male"required/>Male
<input type="radio" name="cgender" value="Female"required/>Female
<input type="radio" name="cgender" value="Others"required/>Others
<br/>

<div class="form-group">
<label>Your Age</label>
<input type="text" class="form-control" name="cage" value="<%=c.getAge() %>"required/>
<br/>
</div>

<div class="form-group">
<label>Your Date Of Birth</label>
<input type="date" class="form-control"name="cdob" value="<%=c.getDateofBirth()%>" required/>
<br/>
</div>

<div class="form-group">
<label>Your Email</label>
<input type="email" class="form-control" name="cemail" value="<%=c.getEmail() %>"readonly required/>
<br/>
</div>

<div class="form-group">
<label>Your Password</label>
<input type="text" class="form-control"name="cpassword" value="<%=c.getPassword()%>"required/>
<br/>
</div>

<div class="form-group">
<label>Your location</label>
<input type="text" class="form-control"name="clocation" value="<%=c.getLocation() %>"required/>
<br/>
</div>

<div class="form-group">
<label>Your Contact</label>
<input type="number" name="ccontact" value="<%=c.getContact()%>"required/>
<br/>
</div>


<input type="reset" class="btn btn-success"name="clear" value="reset"required/>
<input type=submit class="btn btn-success" name="update" value="Update"required/>

</form>
</body>
</html>
