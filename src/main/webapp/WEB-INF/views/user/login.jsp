<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Đăng nhập</title>
<link href="<c:url value="/assets/user/style/style.css" />"
	rel="stylesheet" />
<!-- boostrap -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" 
			rel="stylesheet"> -->
<link rel="stylesheet"
	href="<c:url value="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />">
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script> -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/user/style/login.css" />">
</head>
<body>
	<header class="head-1">
		<a href="trang-chu" class="logo">Food<span>.</span></a>
		<div class="menuToggle" onclick="toggleMenu();"></div>
		<div class="right">
			<c:if test="${ empty LoginInfo  }">
				<ul class="navigation no-1">
					<li><a href="trang-chu"">Trang chủ</a></li>
					<li><a href="tim-kiem">Tìm kiếm</a></li>
					<li><a href="san-pham"">Sản phẩm</a></li>
					<c:if test="${ not empty Cart  }">
						<li><a href="gio-hang">Giỏ hàng(${ TotalQuantyCart })</a></li>
					</c:if>
					<c:if test="${ empty Cart  }">
						<li><a href="gio-hang">Giỏ hàng(0)</a></li>
					</c:if>
				</ul>

				<ul class="navigation no-2">
					<!-- phần sau khi đăng nhập là avt người dùng nè -->
					<li class="user-part" onclick="toggleDropdown();"><a>
							<p>Đăng nhập</p> <img
							src="<c:url value="/assets/user/images/avt0.png" />"> <i
							class="fa fa-angle-down" aria-hidden="true"></i>
					</a>
						<div class="drop-down dropdown-menu">
							<ul>
								<li><a href="dang-nhap"> <i class="fa fa-user"
										aria-hidden="true"></i> Đăng nhập
								</a></li>
							</ul>
						</div></li>
				</ul>
			</c:if>
			<c:if test="${ not empty LoginInfo  }">
				<ul class="navigation no-1">
					<li><a href="trang-chu"">Trang chủ</a></li>
					<li><a href="tim-kiem">Tìm kiếm</a></li>
					<li><a href="san-pham"">Sản phẩm</a></li>
					<c:if test="${ not empty Cart  }">
						<li><a href="gio-hang">Giỏ hàng(${ TotalQuantyCart })</a></li>
					</c:if>
					<c:if test="${ empty Cart  }">
						<li><a href="gio-hang">Giỏ hàng(0)</a></li>
					</c:if>
				</ul>
				<ul class="navigation no-2">
					<li class="user-part" onclick="toggleDropdown();"><a>
							<p>${ LoginInfo.name }</p> <img
							src="<c:url value="/assets/user/images/${ LoginInfo.avatar }" />">
							<i class="fa fa-angle-down" aria-hidden="true"></i>
					</a>
						<div class="drop-down">
							<ul>
								<li><a href="trang-ca-nhan${ LoginInfo.id }"> <i
										class="fa fa-user" aria-hidden="true"></i> Tài khoản
								</a></li>
								<li><a href="dang-xuat"> <i class="fa fa-sign-out"
										aria-hidden="true"></i> Đăng xuất
								</a></li>
							</ul>
						</div></li>
				</ul>
			</c:if>
		</div>
	</header>
	<section>
		<div class="container">
			<div class="user signinBx">
				<div class="imgBx">
					<img src="<c:url value="/assets/user/images/bia3.jpg" />">
				</div>
				<div class="formBx">
					<form action="dang-nhap" method="POST" modelAttribute="user">
						<h2>Sign In</h2>
						<input type="email" placeholder="Username" name="user"> <input
							type="password" placeholder="Password" name="password"> <input
							type="submit" value="Login">
						<p class="signup">
							Don't have an account? <a href="#" onclick="toggleForm();">Sign
								up.</a>
						</p>
						<br>
						<c:if test="${ not empty status }">
							<div class="alert alert-info  alert-dismissible">
								 ${ status }
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">&times;</button>
							</div>
						</c:if>
						<c:if test="${ not empty errorStatus }">
							<div class="alert alert-info  alert-dismissible">
								 ${ errorStatus }
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">&times;</button>
							</div>
						</c:if>

					</form>
				</div>
			</div>

			<div class="user signupBx">
				<div class="formBx">
					<form action="dang-ky" method="POST" modelAttribute="user">
						<h2>Create an account</h2>
						<input type="text" placeholder="Username" name="display_name">
						<input type="text" placeholder="Email Address" name="user">
						<input type="text" placeholder="Phone Number" name="phone">
						<input type="text" placeholder="Address" name="address"> <input
							type="password" placeholder="Create Password" name="password">
						<select name="avatar">
							<option value="male_avt.jpeg">Nam</option>
							<option value="avt4.jpg">Nữ</option>
						</select><br> <input type="submit" value="Sign Up"
							onclick="AlertLogin()">
						<p class="signup">
							Already have an account? <a href="#" onclick="toggleForm();">Sign
								in.</a>
						</p>
					</form>
				</div>
				<div class="imgBx">
					<img src="<c:url value="/assets/user/images//bia5.jpg" />">
				</div>
			</div>
		</div>
	</section>

	<script>
		function toggleDropdown() {
			const dropdown = document.querySelector('.no-2 .drop-down');
			dropdown.classList.toggle('active');
		}
		function toggleForm() {
			container = document.querySelector('.container');
			container.classList.toggle('active');
			section = document.querySelector('section');
			section.classList.toggle('active');
		}
		function AlertLogin() {

		}
	</script>
</body>

</html>