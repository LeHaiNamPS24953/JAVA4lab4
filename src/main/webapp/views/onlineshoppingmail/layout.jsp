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
	<div class="container">
		<header class="row">
			<h1>Online shopping mall</h1>
		</header>
		<nav class="row">
			<jsp:include page="menu.jsp"></jsp:include>
		</nav>
		<div class="row">
			<article class="col-sm-9">
				<div class="row">
					<div class="col-sm-4">
						<jsp:include page="item.jsp">
							<jsp:param value="g26fe09a004acf30db7938d6ceb954a45ecce1325c8fe7d67d4fc2400b9875a492fe26d8943f11b865cacd80ed6756fa0_640.jpg" name="image"/>
							<jsp:param value="Nokia" name="name"/>
						</jsp:include>
					</div>
					<div class="col-sm-4">
						<jsp:include page="item.jsp">
							<jsp:param value="g26fe09a004acf30db7938d6ceb954a45ecce1325c8fe7d67d4fc2400b9875a492fe26d8943f11b865cacd80ed6756fa0_640.jpg" name="image"/>
							<jsp:param value="Nokia" name="name"/>
						</jsp:include>
					</div>
					<div class="col-sm-4">
						<jsp:include page="item.jsp">
							<jsp:param value="g26fe09a004acf30db7938d6ceb954a45ecce1325c8fe7d67d4fc2400b9875a492fe26d8943f11b865cacd80ed6756fa0_640.jpg" name="image"/>
							<jsp:param value="Nokia" name="name"/>
						</jsp:include>
					</div>
					<div class="col-sm-4">
						<jsp:include page="item.jsp">
							<jsp:param value="g26fe09a004acf30db7938d6ceb954a45ecce1325c8fe7d67d4fc2400b9875a492fe26d8943f11b865cacd80ed6756fa0_640.jpg" name="image"/>
							<jsp:param value="Nokia" name="name"/>
						</jsp:include>
					</div>
					<div class="col-sm-4">
						<jsp:include page="item.jsp">
							<jsp:param value="g26fe09a004acf30db7938d6ceb954a45ecce1325c8fe7d67d4fc2400b9875a492fe26d8943f11b865cacd80ed6756fa0_640.jpg" name="image"/>
							<jsp:param value="Nokia" name="name"/>
						</jsp:include>
					</div>
					<div class="col-sm-4">
						<jsp:include page="item.jsp">
							<jsp:param value="g26fe09a004acf30db7938d6ceb954a45ecce1325c8fe7d67d4fc2400b9875a492fe26d8943f11b865cacd80ed6756fa0_640.jpg" name="image"/>
							<jsp:param value="Nokia" name="name"/>
						</jsp:include>
					</div>
				</div>
			</article>
			<aside class="col-sm-3">
				<div class="border">
					<jsp:include page="login.jsp"></jsp:include>
				</div>
				<div class="border">
					<jsp:include page="category.jsp"></jsp:include>
				</div>
			</aside>
		</div>
		<footer>	
			<h3 style="text-align: center; background-color: gray;">FPT Polytechnic &copy; 2023. All rights reserved.</h3>
		</footer>
	</div>
	<a href="/fpoly4" class="btn btn-secondary" role="button">Về trang chủ</a>  
</body>
</html>