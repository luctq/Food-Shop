<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tìm kiếm</title>
<link href="<c:url value="/assets/user/style/style.css" />"
	rel="stylesheet" />
<!-- boostrap -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" 
			rel="stylesheet"> -->
<link rel="stylesheet"
	href="<c:url value="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />">
<style>
.col-1-end-button {
	display: flex;
	justify-content: space-between;
	align-items: center;
	right: 0;
	border-style: none;
	color: #fff;
	background: #b48504;
	height: 40px;
	padding: 5px;
}
</style>
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
							<p>${ LoginInfo.display_name}</p> <img
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
	<section class="search">
		<div class="title">
			<h2>Tìm món</h2>
			<p>Tìm món ăn theo sở thích của bạn ở đây</p>
		</div>
		<form action="/FoodShop/tim-kiem" method="POST"
			modelAttribute="search">
			<div class="searchBx">
				<input type="text" placeholder="Hôm nay ăn gì?" name="search">
			</div>
		</form>
	</section>

	<div class="container">
		<div class="row-1">
			<h2>Kết quả tìm kiếm:</h2>
			<a href="san-pham"><p>Xem thêm</p></a>
		</div>
	</div>
	<c:if test="${ not empty product }">
		<div class="container" id="menu">
			<div class="row-2 row-4">
				<div class="row-1">
					<c:forEach var="item" items="${ product }" varStatus="loop">
						<div class="col-1">
							<a href="chi-tiet-san-pham${ item.id_products }"> <img
								src="<c:url value="/assets/user/images/${ item.img }"/>"></a>
							<div class="col-1-end">
								<div>
									<h4>${ item.name }</h4>
									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star-o"></i>
									</div>
									<p>
										<fmt:formatNumber type="number" groupingUsed="true"
											value="${ item.price }" />
										đ
									</p>
									<a href="AddCart/${ item.id_products }"
										class="col-1-end-button" class="button">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</c:if>
	<script type="text/javascript">
		window.addEventListener('scroll', function() {
			const header = document.querySelector('header');
			header.classList.toggle("sticky", window.scrollY > 0);
		})

		function toggleMenu() {
			const menuToggle = document.querySelector('.menuToggle');
			const navigation = document.querySelector('.navigation');
			menuToggle.classList.toggle('active');
			navigation.classList.toggle('active');
		}
		function toggleDropdown() {
			const dropdown = document.querySelector('.no-2 .drop-down');
			dropdown.classList.toggle("active");
		}
	</script>

</body>
</html>