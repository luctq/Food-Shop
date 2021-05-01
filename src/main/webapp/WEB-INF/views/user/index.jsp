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
	<header>
			<a href="index.html" class="logo">Food<span>.</span></a>
			<div class="menuToggle" onclick="toggleMenu();"></div>
			<ul class="navigation">
				<li><a href="#banner" onclick="toggleMenu();">Home</a></li>
				<li><a href="search.html">Tìm kiếm</a></li>
				<li><a href="#about" onclick="toggleMenu();">About</a></li>
				<li><a href="#menu" onclick="toggleMenu();">Menu</a></li>
				<li><a href="#expert" onclick="toggleMenu();">Đầu bếp</a></li>
				<li><a href="#danhgia" onclick="toggleMenu();">Đánh giá</a></li>
				<li><a href="login.html">Tài khoản</a></li>
				<li><a href="cart.html">Giỏ hàng</a></li>
			</ul>
		</header>
	<section class="banner" id="banner">
			<div class="content">
				<h2>Tinh hoa ẩm thực Việt</h2>
				<p></p>
				<a href="products.html#menu" class="btn">Menu<i class="fa fa-long-arrow-right"></i></a>
			</div>
		</section>

	<section class="about" id="about">
		<div class="row">
			<div class="col50">
				<h2 class="titleText">
					<span>About</span> Us
				</h2>
				<p>
					Must change this paragraph the worl is all abc xyz and here is you
					:V It's just a joke to do for this web and for the content is emty
					:v<br>
					<br> this is another paragraph. let's change it for your own
					website :V i don't know what to write here right now so i wrote
					sone thing crazy like this :V there are so many failure in grammar
					like baka :v
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
				Our <span>Menu</span>
			</h2>
			<p>and agian another paragraph lol :3.</p>
		</div>
		<div class="content">
			<c:forEach var="item" items="${ products }" begin="1" end="5"
				varStatus="loop">
				<div class="box">
					<div class="imgBx">
						<img src="<c:url value="/assets/user/images/${ item.img }"/>">
					</div>
					<div class="text">
						<h3>${ item.name }</h3>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="more">
			<a href="products.html#menu" class="btn">Xem them <i
				class="fa fa-long-arrow-right"> </i></a>
		</div>
	</section>
	<section class="danhgia" id="danhgia">
		<div class="title white">
			<h2 class="titleText">
				<span>D</span>anh gia ve chung toi
			</h2>
		</div>
		<div class="content">
			<div class="box">
				<div class="imgbX">
					<img src="images/dg3.jpg">
				</div>
				<div class="text">
					<p>“Nơi bạn nhất định phải ghé thăm! 10”+! Ăn chay à? Trước
						tiên phải nói luôn: tôi không phải là người ăn chay. Nhưng vì lần
						dùng bữa đầu tiên tại Food. quá ngon, đã khiến chúng tôi trở lại
						cho lần thứ hai, và chắc chắn sẽ còn nhiều lần nữa, mỗi khi chúng
						tôi đến Việt Nam. Dịch vụ thật tuyệt vời. Các món ăn được trình
						bày rất đẹp, tươi mới và thơm ngon. Không gian nhà hàng sạch sẽ và
						phong cách thiết kế cũng rất đẹp. Cảm ơn Hum thật nhiều!</p>
					<h4>Name</h4>
				</div>
			</div>
			<div class="box">
				<div class="imgbX">
					<img src="images/dg4.jpg">
				</div>
				<div class="text">
					<p>“Nơi bạn nhất định phải ghé thăm! 10”+! Ăn chay à? Trước
						tiên phải nói luôn: tôi không phải là người ăn chay. Nhưng vì lần
						dùng bữa đầu tiên tại Food. quá ngon, đã khiến chúng tôi trở lại
						cho lần thứ hai, và chắc chắn sẽ còn nhiều lần nữa, mỗi khi chúng
						tôi đến Việt Nam. Dịch vụ thật tuyệt vời. Các món ăn được trình
						bày rất đẹp, tươi mới và thơm ngon. Không gian nhà hàng sạch sẽ và
						phong cách thiết kế cũng rất đẹp. Cảm ơn Hum thật nhiều!</p>
					<h4>Name</h4>
				</div>
			</div>
			<div class="box">
				<div class="imgbX">
					<img src="images/dg1.jpg">
				</div>
				<div class="text">
					<p>“Nơi bạn nhất định phải ghé thăm! 10”+! Ăn chay à? Trước
						tiên phải nói luôn: tôi không phải là người ăn chay. Nhưng vì lần
						dùng bữa đầu tiên tại Food. quá ngon, đã khiến chúng tôi trở lại
						cho lần thứ hai, và chắc chắn sẽ còn nhiều lần nữa, mỗi khi chúng
						tôi đến Việt Nam. Dịch vụ thật tuyệt vời. Các món ăn được trình
						bày rất đẹp, tươi mới và thơm ngon. Không gian nhà hàng sạch sẽ và
						phong cách thiết kế cũng rất đẹp. Cảm ơn Hum thật nhiều!</p>
					<h4>Name</h4>
				</div>
			</div>
			<div class="box">
				<div class="imgbX">
					<img src="images/dg2.jpg">
				</div>
				<div class="text">
					<p>“Nơi bạn nhất định phải ghé thăm! 10”+! Ăn chay à? Trước
						tiên phải nói luôn: tôi không phải là người ăn chay. Nhưng vì lần
						dùng bữa đầu tiên tại Food. quá ngon, đã khiến chúng tôi trở lại
						cho lần thứ hai, và chắc chắn sẽ còn nhiều lần nữa, mỗi khi chúng
						tôi đến Việt Nam. Dịch vụ thật tuyệt vời. Các món ăn được trình
						bày rất đẹp, tươi mới và thơm ngon. Không gian nhà hàng sạch sẽ và
						phong cách thiết kế cũng rất đẹp. Cảm ơn Hum thật nhiều!</p>
					<h4>Name</h4>
				</div>
			</div>
			<div class="box">
				<div class="imgbX">
					<img src="images/dg5.jpg">
				</div>
				<div class="text">
					<p>“Nơi bạn nhất định phải ghé thăm! 10”+! Ăn chay à? Trước
						tiên phải nói luôn: tôi không phải là người ăn chay. Nhưng vì lần
						dùng bữa đầu tiên tại Food. quá ngon, đã khiến chúng tôi trở lại
						cho lần thứ hai, và chắc chắn sẽ còn nhiều lần nữa, mỗi khi chúng
						tôi đến Việt Nam. Dịch vụ thật tuyệt vời. Các món ăn được trình
						bày rất đẹp, tươi mới và thơm ngon. Không gian nhà hàng sạch sẽ và
						phong cách thiết kế cũng rất đẹp. Cảm ơn Hum thật nhiều!</p>
					<h4>Name</h4>
				</div>
			</div>
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
	</script>
</body>
</html>