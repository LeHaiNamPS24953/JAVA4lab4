<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB 4 - BÀI 1 - JAVA 4</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-md-3 py-3 py-md-0">
			<div class="card" style="height: 300px; width: 200px;">
				<img src="images/${param.image}" class="card-img-top" alt="">	
			  	<div class="card-body">
					Tên sản phẩm: ${param.name}
		  		</div>
	  		</div>
		</div>
	</div>
</body>
</html>