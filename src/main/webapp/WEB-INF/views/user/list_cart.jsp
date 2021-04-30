<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Giỏ hàng | Food.</title> <
<link href="<c:url value="/assets/user/style/style.css" />"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<header class="head-1">
		<a href="index.html" class="logo">Food<span>.</span></a>
		<div class="menuToggle" onclick="toggleMenu();"></div>
		<ul class="navigation">
			<li><a href="index.html#banner" onclick="toggleMenu();">Home</a></li>
			<li><a href="search.html">Tìm kiếm</a></li>
			<li><a href="index.html#about" onclick="toggleMenu();">About</a></li>
			<li><a href="index.html#menu" onclick="toggleMenu();">Menu</a></li>
			<li><a href="index.html#expert" onclick="toggleMenu();">Đầu
					bếp</a></li>
			<li><a href="index.html#danhgia" onclick="toggleMenu();">Đánh
					giá</a></li>
			<li><a href="index.html#contact" onclick="toggleMenu();">Liên
					hệ</a></li>
			<li><a href="login.html">Tài Khoản</a></li>
			<li><a href="#">Giỏ hàng</a></li>
		</ul>
	</header>

	<div class="container cart-page">
		<h2 class="title">Giỏ hàng</h2>
		<table>
			<tr>
				<th>Món ăn được đặt</th>
				<th>Số lượng</th>
				<th>Thành tiền</th>
			</tr>
			<c:forEach var="item" items="${ Cart }" varStatus="loop">
				<tr>
					<td>
						<div class="cart-info">
							<img src="<c:url value="/assets/user/images/${ item.value.product.img }" />">
							<div>
								<p>item.value.product.name</p>
								<small>Giá: <fmt:formatNumber type="number" groupingUsed="true"
										value="${ item.value.product.price }" />đ</small> <br> <a href="DeleteCart/${ item.value.product.id_products}">Xóa</a>
							</div>
						</div>
					</td>
					<td><input type="number" value="${ item.value.quanty }"></td>
					<td><fmt:formatNumber type="number" groupingUsed="true"
										value="${ item.value.totalPrice }" />đ</td>
				</tr>
				</c:forEach>
		</table>
		</br>
		<div class="total-price">
			<table>
				<tr>
					<td>Tạm tính</td>
					<td>155.000đ</td>
				</tr>
				<tr>
					<td>Tiền thuế</td>
					<td>15.500đ</td>
				</tr>
				<tr>
					<td>Tiền giao hàng</td>
					<td>10.000đ</td>
				</tr>
				<tr>
					<td>Tổng tiền</td>
					<td>170.500đ</td>
				</tr>
			</table>
		</div>

		<a href="checkout" class="btn btn-1">Đặt ngay</a>

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
			<p></p>
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