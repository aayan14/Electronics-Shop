<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mt-3">Welcome to My Shop</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Description</th>
							<th scope="col">Product Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${products}" var = "p">
						<tr>
							<th scope="row">ITEMCODE${p.productId}</th>
							<td>${p.productName}</td>
							<td>${p.productDesc}</td>
							<td class="font-weight-bold">Rs ${p.productPrice}</td>
							<td>
								<a href="deleteProduct/${p.productId }"><i class="fas fa-trash-alt text-danger mr-5" style="font-size:25px;"></i></a>
								<a href="updateProduct/${p.productId }"><i class="fas fa-pen text-primary" style="font-size:25px;"></i></a>
	
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<div class="container text-center">
				<a href="addProduct" class="btn btn-outline-success">Add Product</a>
				</div>
				
				
			</div>
		</div>
	</div>
</body>
</html>
