<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>name of food | Food.</title>
<link href="<c:url value="/assets/user/style/style.css" />"
	rel="stylesheet" />
<!-- boostrap -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" 
			rel="stylesheet"> -->
<link rel="stylesheet"
	href="<c:url value="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />">
</head>

<body>
	<header class="head-1">
		<a href="index.html" class="logo">Food<span>.</span></a>
		<div class="menuToggle" onclick="toggleMenu();"></div>
		<ul class="navigation">
			<li><a href="index.html#banner" onclick="toggleMenu();">Home</a></li>
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

	<div class="container underline">
		<div class="row-1 row-2">
			<h2>Chi tiết về món ăn<p>${ evaluates.size() }</p></h2>
		</div>
	</div>

	<!-------chi tiet 1 san pham------->
	<div class="container single-product">
		<div class="row-3">
			<div class="col-2">
				<img src="<c:url value="/assets/user/images/${ product.img }"/>"
					alt="Banh can" width="100%" height="80%" id="productImg">
				<div class="small-img-row">
					<div class="small-img-col">
						<img src="images/banhcan.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="images/banhcan1.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="images/banhcan1.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="images/banhcan1.jpg" width="100%" class="small-img">
					</div>
				</div>
			</div>
			<div class="col-2  other">
				<p>Food. / Bánh</p>
				<h1>${ product.name }</h1>
				<h4>
					<fmt:formatNumber type="number" groupingUsed="true"
						value="${ product.price }" />
					đ
				</h4>
				<input type="number" value="1"> <a
					href="<c:url value="/AddCart/${ product.id_products }" />"
					class="btn btn-1">Đặt món</a>
				<h3>
					Chi tiết về món ăn <i class="fa fa-indent"></i>
				</h3>
				<br>
				<p>${ product.title }</p>
			</div>
		</div>
	</div>

	<!------- Đánh giá về sản phẩm ------>
	<section class="comment">
		<div class="title">
			<h2>Đánh giá món ăn</h2>
		</div>
		<div class="categories">
			<div class="col">
				<h3>4.8 trên 5</h3>
				<div class="rating">
					<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star-o"></i>
				</div>
			</div>
			<div>
				<span>Tất cả</span> <span>5 sao</span> <span>4 sao</span> <span>3
					sao</span> <span>2 sao</span> <span>1 sao</span>
			</div>
		</div>
		<c:forEach var = "item" items = "${ evaluates }" varStatus="loop">
		<div class="cus-comment">
			<img src="images/avt1.jpg">
			<div>
				<small>user_name</small>
				<div class="rating">
					<c:forEach begin = "1" end = "${ item.num_star }">
					<i class="fa fa-star"></i>
					</c:forEach>
				</div>
				<br>
				<p>${ item.content }</p>
			</div>
		</div>
		</c:forEach>
		<div class="comment-after">
			<span>1</span></a> <span>2</span></a> <span>3</span></a> <span>&#8594;</span> <span
				class="add" onclick="toggleComment();">Thêm đánh giá</span>
		</div>

		<div class="cus-comment add-cmt">
			<img src="images/avt4.jpg">
			<div class="cmt">
				<small>user_name4</small>
				<form action = "save${ product.id_products }" method="POST" modelAttribute="evaluate">
					<div class="rating-1">
						<input type="radio" id="star5" name="num_star" value="5" /> <label
							class="full" for="star5" title="Cực kì tuyệt vời - 5 sao"></label>

						<input type="radio" id="star4" name="num_star" value="4" /> <label
							class="full" for="star4" title="Tuyệt vời - 4 sao"></label> <input
							type="radio" id="star3" name="num_star" value="3" /> <label
							class="full" for="star3" title="Tốt - 3 sao"></label> <input
							type="radio" id="star2" name="num_star" value="2" /> <label
							class="full" for="star2" title="Hơi tệ - 2 sao"></label> <input
							type="radio" id="star1" name="num_star" value="1" /> <label
							class="full" for="star1" title="Cực kì tệ - 1 sao"></label>
					</div>
					<br> <label for="textArea">Hãy dành những lời đánh giá
						xuống dưới đây</label>
					<textarea id="textArea" name="content"></textarea>
					<button>Gửi</button>
				</form>
			</div>
		</div>
	</section>

	<!------- Những sản phẩm liên quan ------>
	<div class="container">
		<div class="row-1">
			<h2>Những món khác</h2>
			<a href="products.html"><p>Xem thêm</p></a>
		</div>
	</div>

	<div class="container" id="menu">
		<div class="row-2 row-4">
			<div class="row-1">
				<div class="col-1">
					<a href="productdetail.html"><img src="images/banhxeo.jpg"></a>
					<h4>Bánh xèo</h4>
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
					</div>
					<p>60.000đ</p>
				</div>
				<div class="col-1">
					<a href="productdetail.html"><img src="images/phoga.jpg"></a>
					<h4>Phở gà</h4>
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
					</div>
					<p>50.000đ</p>
				</div>
				<div class="col-1">
					<a href="productdetail.html"><img src="images/baotuhamtieu.jpg"></a>
					<h4>Bao tử hầm tiêu</h4>
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
					</div>
					<p>70.000đ</p>
				</div>
				<div class="col-1">
					<a href="productdetail.html"><img src="images/cakho.jpg"></a>
					<h4>Bánh xèo</h4>
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
					</div>
					<p>75.000đ</p>
				</div>
			</div>
			<div class="row-1">
				<div class="col-1">
					<a href="productdetail.html"><img src="images/bundaumamtom.jpg"></a>
					<h4>Bún đậu mắm tôm</h4>
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
					</div>
					<p>55.000đ</p>
				</div>
				<div class="col-1">
					<a href="productdetail.html"><img src="images/nemnuong.jpg"></a>
					<h4>Nem nướng</h4>
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
					</div>
					<p>45.000đ</p>
				</div>
				<div class="col-1">
					<a href="productdetail.html"><img
						src="images/taiheosotthai.jpg"></a>
					<h4>Tai heo sốt thái</h4>
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
					</div>
					<p>60.000đ</p>
				</div>
				<div class="col-1">
					<a href="productdetail.html"><img src="images/gacuonladua.jpg"></a>
					<h4>Gà cuốn lá dứa</h4>
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-o"></i>
					</div>
					<p>80.000đ</p>
				</div>
			</div>
		</div>

		<div class="page-btn">
			<a href="products.html"><span>1</span></a> <a href="products.html"><span>2</span></a>
			<a href="products.html"><span>3</span></a> <a href="products.html"><span>4</span></a>
			<span>&#8594;</span>
		</div>
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
		function toggleComment() {
			const comment = document.querySelector('.add-cmt');
			const addButton = document.querySelector('.add');
			const rate = document.getElementsByName("rating");
			comment.classList.toggle('active');
			if (addButton.textContent == 'Hủy đánh giá') {
				addButton.textContent = 'Thêm đánh giá'
			} else {
				var i;
				for (i = 0; i < 5; ++i) {
					rate[i].checked = !0;
				}
				addButton.textContent = 'Hủy đánh giá';
			}
		}
	</script>

	<!-------js dung cho product-->
	<script>
		var productImg = document.getElementById("productImg");
		var smallImg = document.getElementsByClassName("small-img");
		smallImg[0].onclick = function() {
			productImg.src = smallImg[0].src;
		}
		smallImg[1].onclick = function() {
			productImg.src = smallImg[1].src;
		}
		smallImg[2].onclick = function() {
			productImg.src = smallImg[2].src;
		}
		smallImg[3].onclick = function() {
			productImg.src = smallImg[3].src;
		}
	</script>

</body>
</html>