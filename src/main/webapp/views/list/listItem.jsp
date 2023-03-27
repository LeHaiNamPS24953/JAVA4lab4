<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB 4 - BÀI 4 - JAVA 4</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="container">
	<h4 class="display-4">LAB 4 - BÀI 4 - JAVA 4</h4>
	<h5 class="display-5">HIỂN THỊ THÔNG TIN CỦA NHIỀU SẢN PHẨM</h5>
	<div class="row">
	<c:forEach var="item" items="${listItem}">
		<div class="col-sm-4">
			<div class="card" style="height: 300px; width: 200px;">
				<div class="card-header"> 
					Tên sản phẩm: ${item.name}
				</div>
				<a href="/fpoly4/detailItem?idProduct=${item.name}"><img src="images/${item.image}" class="card-img-top" alt=""></a>	
			  	<div class="card-body">
					<strike>${item.price}</strike>
					${item.price*(1-item.discount)}
		  		</div>  		
	  		</div>
		</div>
	</c:forEach>
	</div>
</body>
</html>