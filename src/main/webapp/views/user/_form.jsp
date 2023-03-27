<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB 4 - BÀI 2 - JAVA 4</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<form action="/fpoly4/user" method="post">
		<h5 class="display-5">USER EDITION</h5>
		<mark>${message}</mark>
	  	<div class="row mb-3">
            <label for="inputUsername" class="col-sm-2 col-form-label">Username: </label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputUsername" name="username" value="${form.username}">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputPassword" class="col-sm-2 col-form-label">Password:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword" name="password" value="${form.password}">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-sm-10 offset-sm-2">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" ${form.remember?'checked':'unchecked'} id="gridCheck1" name="remember">
                    <label class="form-check-label" for="gridCheck1">
                        Remember me?
                    </label>
                </div>
            </div>
        </div>
        <hr>
  		<button type="submit" class="btn btn-success">Create</button> 		
	</form>
</body>
</html>