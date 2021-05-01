<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hôm nay ăn gì?</title>
<link href="<c:url value="/assets/user/style/style.css" />"
	rel="stylesheet" />
<!-- boostrap -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" 
			rel="stylesheet"> -->
<link rel="stylesheet"
	href="<c:url value="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />">
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script> -->
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

.pagination {
	display: flex;
	justify-content: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>
</head>
<body>
	<header>
		<a href="#" class="logo">Food<span>.</span></a>
		<div class="menuToggle" onclick="toggleMenu();"></div>
		<ul class="navigation">
			<li><a href="#banner" onclick="toggleMenu();">Home</a></li>
			<li><a href="#about" onclick="toggleMenu();">About</a></li>
			<li><a href="#menu" onclick="toggleMenu();">Menu</a></li>
			<li><a href="#expert" onclick="toggleMenu();">Đầu bếp</a></li>
			<li><a href="#danhgia" onclick="toggleMenu();">Đánh giá</a></li>
			<li><a href="#contact" onclick="toggleMenu();">Liên hệ</a></li>
			<li><a href="login.html">Account</a></li>
			<li><a href="#">Gio hang</a></li>
		</ul>
	</header>
	<div class="container" id="menu">

		<div class="row-1 row-2">
			<h2>Tất cả các món</h2>
			<select>
				<option>Mac dinh</option>
				<option>Sap xep theo gia tien (tang dan)</option>
				<option>Sap xep theo gia tien (giam dan)</option>
				<option>Sap xep theo danh gia</option>
				<option>Ban chay</option>
			</select>
		</div>

		<div class="row-3">
			<div class="row-1">
				<c:forEach var="item" items="${ products }" varStatus="loop">
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
								<a href="AddCart/${ item.id_products }" class="col-1-end-button"
									class="button">Thêm vào giỏ</a>
							</div>

						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="pagination">
			<c:forEach var="item" begin="1" end="${ paginateInfo.totalPage }"
				varStatus="loop">
				<c:if test="${ (loop.index) == paginateInfo.currentPage }">
					<a href="<c:url value="/san-pham${ loop.index }"/>" class="active">${ loop.index }</a>
				</c:if>
				<c:if test="${ (loop.index) != paginateInfo.currentPage }">
					<a href="<c:url value="/san-pham${ loop.index }"/>">${ loop.index }</a>
				</c:if>
			</c:forEach>
		</div>
		</br>
	</div>

	<section class="ending">
		<div class="e">
			<h4>
				<i class="fa fa-map-marker" aria-hidden="true"></i>Tru so tai Ha Noi
			</h4>
			<p>Tầng 2, tòa nhà Center Building, Hapulico Complex, số 1 Nguyễn
				Huy Tưởng, p. Thanh Xuân Trung, quận Thanh Xuân, Hà Nội.</p>
			<p>Điện thoại: 024 7389 6655</p>
			<h4>
				<i class="fa fa-map-marker" aria-hidden="true"></i>Tru so tai TP. Ho
				Chi Minh
			</h4>
			<p>Tầng 3 Tòa nhà 123, 123 Võ Văn Tần, phường 6, quận 3, Tp. HCM</p>
			<p>Điện thoại: 028 7407 8979</p>
		</div>

		<div class="e">
			<h4>
				<i class="fa fa-copyright" aria-hidden="true"></i>Copyright 2021 -
				Nha hang Food. All Right Reserved
			</h4>
			<p>Giấy phép số 2215/GP-TTĐT do Sở Thông tin và Truyền thông Hà
				Nội cấp ngày 1 tháng 2 năm 2021</p>
		</div>
	</section>

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
	</script>
</body>
</html>