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
<link rel="stylesheet"
	href="<c:url value="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />">
<link href="<c:url value="/assets/user/css/bootstrap.css" />">
<link
	href="<c:url value="/assets/user/font-awesome/css/font-awesome.css" />"
	rel="stylesheet">
<link href="<c:url value="/assets/user/style.css" />" rel="stylesheet" />
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
	<header>
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
					<li class="user-part" onclick="toggleDropdown();"><a>
							<p>Đăng nhập</p> <img
							src="<c:url value="/assets/user/images/avt0.png" />"> <i
							class="fa fa-angle-down" aria-hidden="true"></i>
					</a>
					<div class="drop-down">
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
	<section class="banner" id="banner">
		<div class="content">
			<h2>Tinh hoa ẩm thực Việt</h2>
			<p></p>
			<a href="san-pham" class="btn">Menu<i
				class="fa fa-long-arrow-right"></i></a>
		</div>
	</section>

	<section class="about" id="about">
		<div class="row">
			<div class="col50">
				<h2 class="titleText"><span>Về</span> chúng tôi</h2>
						<p>Food. là một chuỗi các nhà hàng phục vụ các món ăn Việt từ Bắc vô Nam. Là thương hiệu có tiếng, được nhiều người đánh giá về cao.<br><br>
						</p>
			</div>
			<div class="col50">
				<div class="imgBx">
					<img src="<c:url value="/assets/user/images/aboutImg.jpg" />">
				</div>
			</div>
		</div>
	</section>

	<section class="menu" id="menu">
		<div class="title">
			<h2 class="titleText">
				<span>SẢN PHẨM MỚI</span>
			</h2>
		</div>
		<br> <br> <br> <br>
		<div class="row-3">
			<div class="row-1">
				<c:forEach var="item" items="${ products }" begin="4" end="7"
					varStatus="loop">
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
		<br> <br> <br> <br>
		<div class="title">
			<h2 class="titleText">
				<span>SẢN PHẨM NỔI BẬT</span>
			</h2>
		</div>
		<br> <br> <br> <br>
		<div class="row-3">
			<div class="row-1">
				<c:forEach var="item" items="${ products }" begin="1" end="4"
					varStatus="loop">
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
		<br> <br> <br> <br>
		<div class="more">
			<a href="products.html#menu" class="btn">Xem them <i
				class="fa fa-long-arrow-right"> </i></a>
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
		function toggleDropdown() {
			const dropdown = document.querySelector('.drop-down');
			dropdown.classList.toggle('active');
		}
	</script>
</body>
</html>