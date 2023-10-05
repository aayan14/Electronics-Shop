<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>

<div class="container">
<div class="row">
	<div class="col-md-6 offset-md-3">
		<h1 class="text-center mb-3">Fill the product details</h1>
		<form action="handleaddproduct" method="post">
  <div class="form-group">
    <label for="productName">Product Name</label>
    <input type="text" class="form-control" id="productName" placeholder="Name" name="productName">
  </div>
  
  <div class="form-group">
    <label for="productDesc">Product Description</label>
    <input type="text" class="form-control" id="productDesc" placeholder="Description" name="productDesc">
  </div>
  
  <div class="form-group">
    <label for="productPrice">Product Name</label>
    <input type="text" class="form-control" id="productPrice" placeholder="Price" name="productPrice">
  </div>
  
  <div class="container text-center">
  	<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
  	
  	<button type = "submit" class="btn btn-outline-secondary">Add</button>
  </div> 
  </form>
	</div>
</div>
</div>
</body>
</html>