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
	<h5 class="display-5">HIỂN THỊ THÔNG TIN CỦA MỘT SẢN PHẨM</h5>
	<div align="center">
		<div class="card" style="width: 18rem;">
		<div class="card-header">
			Tên sản phẩm: ${item.name}	
  		</div>
	 	<div class="card-body">
	 		<img src="images/${item.image}" class="card-img-top" alt="">
		    <p class="card-text">Giá gốc: <strike>${item.price}</strike></p>
		    <p class="card-text">Giá mới: <c:set var="newprice" value="${item.price*(1-item.discount)}"/>
		    							  <fmt:formatNumber value="${newprice}"/></p>
		   	<p class="card-text">Mức giá: <c:choose>
		   									<c:when test="${newprice < 10}">Giá thấp</c:when>
											<c:when test="${newprice > 100}">Giá cao</c:when>
											<c:otherwise>Bình thường</c:otherwise>
		   								  </c:choose>
			</p>
	  	</div>
	  	<div class="card-footer">
			Ngày: 21-03-2023
  		</div>
	</div>
	</div>
	<a href="/fpoly4" class="btn btn-secondary" role="button">Về trang chủ</a>  
</body>
</html>