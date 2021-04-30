<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Login</title>
		<link rel="stylesheet" type="text/css" href="<c:url value="/assets/user/style/login.css" />">
		</head>
	<body>
	<section>
		<div class="container">
			<div class="user signinBx">
				<div class="imgBx"><img src="images/bia3.jpg"></div>
				<div class="formBx">
				<form action="dang-nhap" method="POST" modelAttribute="user">
					<h2>Sign In</h2>
					<input type="email" placeholder="Username" name = "user">
					<input type="password" placeholder="Password" name = "password" >
					<input type="submit" value="Login">
					<p class="signup">Don't have an account? <a href="#" onclick="toggleForm();">Sign up.</a></p>
				</form>
				</div>
			</div>

			<div class="user signupBx">
				<div class="formBx">
				<form action="dang-ky" method="POST" modelAttribute="user">
					<h2>Create an account</h2>
					<input type="text" placeholder="Username" name = "display_name">
					<input type="text" placeholder="Email Address" name = "user">
					<input type="password" placeholder="Create Password" name = "password">
					<input type="submit" value="Sign Up">
					<p class="signup">Already have an account? <a href="#" onclick="toggleForm();">Sign in.</a></p>
				</form>
				</div>
				<div class="imgBx"><img src="images/bia5.jpg"></div>
			</div>
		</div>
	</section>

	<script>
		function toggleForm() {
			container = document.querySelector('.container');
			container.classList.toggle('active');
			section = document.querySelector('section');
			section.classList.toggle('active');
		}
	</script>
	</body>
	
</html>