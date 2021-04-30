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
			<li><a href="login.html">Tài khoản</a></li>
			<li><a href="cart.html">Giỏ hàng</a></li>
		</ul>
	</header>

	<section class="checkout">
		<div class="container">
			<table>
				<tr>
					<th>Món ăn được đặt</th>
					<th class="center">Số lượng</th>
					<th class="center">Thành tiền</th>
				</tr>
				<c:forEach var="item" items="${ Cart }" varStatus="loop">
					<tr>
						<td>
							<div class="cart-info">
								<img
									src="<c:url value="/assets/user/images/${ item.value.product.img }" />">
								<div>
									<p>item.value.product.name</p>
									<small>Giá: <fmt:formatNumber type="number"
											groupingUsed="true" value="${ item.value.product.price }" />đ
									</small> <br>
								</div>
							</div>
						</td>
						<td><input type="number" value="${ item.value.quanty }"></td>
						<td><fmt:formatNumber type="number" groupingUsed="true"
								value="${ item.value.totalPrice }" />đ</td>
					</tr>
				</c:forEach>
			</table>

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
		</div>

		<div class="order-inf">
			<h2>Thông tin giao hàng</h2>
			<form action="checkout" method="POST" modelAttribute="bills">
				<div>
					<label for="customerName">Tên người nhận: </label> <input
						type="email" id="customerName" name="user"> <label for="customerName">Tên
						người nhận: </label> <input type="text" id="customerName"
						name="display_name"> <label
						for="phoneNumber">Số ĐT:</label> <input type="tel"
						id="phoneNumber" name="phone"> <label for="cusAddress">Địa
						chỉ giao hàng:</label> <input type="text" id="cusAddress" name="address"> <label for="">Ghi chú:</label>
					<textarea id="note" name="note"></textarea>
				</div>
				<button type="submit">
					Xác nhận đặt hàng
					</submit>
			</form>
		</div>

	</section>

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