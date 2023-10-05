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
		<h1 class="text-center mb-3">Change product details</h1>
		<form action="${pageContext.request.contextPath}/handleaddproduct" method="post">
		
		<input type="text" value="${product.productId}" name="productId"/>
  <div class="form-group">
    <label for="productName">Product Name</label>
    <input type="text" class="form-control" id="productName" placeholder="Name" name="productName" value="${product.productName}">
  </div>
  
  <div class="form-group">
    <label for="productDesc">Product Description</label>
    <input type="text" class="form-control" id="productDesc" placeholder="Description" name="productDesc" value="${product.productDesc}">
  </div>
  
  <div class="form-group">
    <label for="productPrice">Product Name</label>
    <input type="text" class="form-control" id="productPrice" placeholder="Price" name="productPrice" value="${product.productPrice}">
  </div>
  
  <div class="container text-center">
  	<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
  	
  	<button type = "submit" class="btn btn-outline-warning">Update</button>
  </div> 
  </form>
	</div>
</div>
</div>
</body>
</html>