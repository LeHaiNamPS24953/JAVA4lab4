<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB 4 - BÀI 2 - JAVA 4</title>
<%List<User> users = (ArrayList<User>)request.getAttribute("items"); %>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<h5 class="display-5">USER LIST</h5>
	<table class="table table-bordered">
		<thead class="table-light">
			<tr>
				<th>Username</th>
				<th>Password</th>
				<th>Remember?</th>
			</tr>
		</thead>
		<tbody>
			<% for(int i = 0; i < users.size(); i++) { %>
				<tr>
					<td><%= users.get(i).getUsername() %></td>
					<td><%= users.get(i).getPassword() %></td>
					<td><%= users.get(i).isRemember() ? "Yes" : "No" %></td>
				</tr>	
			<% }; %>
		</tbody>
	</table>
</body>
</html>