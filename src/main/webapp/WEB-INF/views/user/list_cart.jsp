<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Giỏ hàng</title> <
<link href="<c:url value="/assets/user/style/style.css" />"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<header class = "head-1">
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
					<li><a href="trang-chu"">Home</a></li>
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
							<p>${ LoginInfo.display_name }</p> <img
							src="<c:url value="/assets/user/images/${ LoginInfo.avatar }" />"> <i
							class="fa fa-angle-down" aria-hidden="true"></i>
					</a>
						<div class="drop-down">
							<ul>
								<li><a href="trang-ca-nhan${ LoginInfo.id }"> <i class="fa fa-user"
										aria-hidden="true"></i> Tài khoản
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

	<div class="container cart-page">
		<h2 class="title">Giỏ hàng</h2>
		<c:if test="${ not empty Cart }">
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
								<p>${ item.value.product.name }</p>
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
		<div class="total-price">
			<table>
				<tr>
					<td>Tạm tính</td>
					<td><fmt:formatNumber type="number" groupingUsed="true"
										value="${ TotalPriceCart }" />đ</td>
				</tr>
				<tr>
					<td>Tiền giao hàng</td>
					<td><fmt:formatNumber type="number" groupingUsed="true"
										value="20000" />đ</td>
				</tr>
				<tr>
					<td>Tổng tiền</td>
					<td><fmt:formatNumber type="number" groupingUsed="true"
										value="${ TotalPriceCart + 20000 }" />đ</td>
				</tr>
			</table>
		</div>
		<a href="checkout" class="btn btn-1">Đặt ngay</a>
		<c:forEach begin = "1" end = "10">
				<br>
			</c:forEach>
		</c:if>
		<c:if test="${ empty Cart }">
			<c:forEach begin = "1" end = "22">
				<br>
			</c:forEach>
		</c:if>
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
		function toggleDropdown() {
			const dropdown = document.querySelector('.drop-down');
			dropdown.classList.toggle('active');
		}
	</script>

</body>
</html>