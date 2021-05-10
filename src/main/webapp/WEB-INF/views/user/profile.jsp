<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Trang cá nhân</title>
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
<div class="profile">
            <div class="colunm-1">
                <div class="imgB">
                    <img src="images/avt1.jpg">
                    <p>User Name</p>
                </div>
                <div class="profile-menu">
                    <ul>
                        <div class="menu-1"><a href="#"><li>Hồ sơ</li></a></div>
                        <div class="menu-2"><a href="#"><li>Đổi mật khẩu</li></a></div>
                    </ul>
                </div>
            </div>
            <div class="colunm-2">
                <div class="for-menu-1 active">
                    <div class="title">
                        <h2>Hồ sơ của tôi</h2>
                        <p>Quản lý thông tin hồ sơ để bảo mật tài khoản</p>
                    </div>
                    <div class="formB">
                        <form action = "sua-trang-ca-nhan" method = "POST">
                            <div class="row-01">
                                <div class="label"><label for="cusName">Tên</label></div>
                                <div class="input"><input type="text" id="cusName" name = "display_name" value="${ LoginInfo.display_name }"></div>
                            </div>
                            <div class="row-01">
                                <div class="label"><label for="cusMail">Email</label></div>
                                <div class="input"><input type="email" id="cusMail" name = "user" value="${ LoginInfo.user }"></div>
                            </div>
                            <div class="row-01">
                                <div class="label"><label for="cusAddress">Địa chỉ</label></div>
                                <div class="input"><input type="text" id="cusMail" name = "address" value="${ LoginInfo.address }"></div>
                            </div>
                            <div class="row-01">
                                <div class="label"><label for="cusPhoneNumber">Số điện thoại</label></div>
                                <div class="input"><input type="tel" id="cusPhoneNumber" name = "phone" value="${ LoginInfo.phone }"></div>
                            </div>
                            <button type="submit">Lưu</button>
                        </form>
                    </div>
                </div>
                <div class="for-menu-2">
                    <div class="title">
                        <h2>Đổi mật khẩu</h2>
                        <p>Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người khác</p>
                    </div>
                    <div class="formB">
                        <form action = "doi-mat-khau" method = "POST">
                            <div class="row-01">
                                <div class="label"><label for="oldPW">Mật khẩu hiện tại</label></div>
                                <div class="input"><input type="password" id="oldPW" name = "oldPassword" ></div>
                            </div>
                            <div class="row-01">
                                <div class="label"><label for="newPW">Mật khẩu mới</label></div>
                                <div class="input"><input type="password" id="newPW" name = "newPassword"></div>
                            </div>
                            <button type="submit">Lưu</button>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>

        <section class="ending">
			<div class="e">
				<h4><i class="fa fa-map-marker" aria-hidden="true"></i>Tru so tai Ha Noi</h4>
				<p>Tầng 2, tòa nhà Center Building, Hapulico Complex, số 1 Nguyễn Huy Tưởng, p. Thanh Xuân Trung, quận Thanh Xuân, Hà Nội.</p>
				<p>Điện thoại: 024 7389 6655</p>
				<h4><i class="fa fa-map-marker" aria-hidden="true"></i>Tru so tai TP. Ho Chi Minh</h4>
				<p>Tầng 3 Tòa nhà 123, 123 Võ Văn Tần, phường 6, quận 3, Tp. HCM</p>
				<p>Điện thoại: 028 7407 8979</p>
			</div>

			<div class="e">
				<h4><i class="fa fa-copyright" aria-hidden="true"></i>Copyright 2021 - Nha hang Food. All Right Reserved</h4>
				<p></p>
			</div>
		</section>
		
		<script type="text/javascript">
			window.addEventListener('scroll', function() {
				const header = document.querySelector('header');
				header.classList.toggle("sticky", window.scrollY > 0);
			})
			function toggleMenu()
			{
				const menuToggle = document.querySelector('.menuToggle');
				const navigation = document.querySelector('.navigation');
				menuToggle.classList.toggle('active');
				navigation.classList.toggle('active');
			}
            const menu1 = document.querySelector(".menu-1");
            const menu2 = document.querySelector(".menu-2");
            const menu1content = document.querySelector(".for-menu-1");
            const menu2content = document.querySelector(".for-menu-2");

            menu1.addEventListener("click", function() {
                menu1.classList.toggle('active');
                menu2.classList.remove('active');
                if (menu1content.classList[1] == null) {
                    menu1content.classList.toggle('active');
                    menu2content.classList.remove('active');
                }
            })
            menu2.addEventListener("click", function() {
                menu2.classList.toggle('active');
                menu1.classList.remove('active');
                if (menu2content.classList[1] == null) {
                    menu2content.classList.toggle('active');
                    menu1content.classList.remove('active');
                }
            })

            function toggleDropdown() {
				const dropdown = document.querySelector('.no-2 .drop-down');
				dropdown.classList.toggle("active");
			}
		</script>

	</body>
</html>