<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="wrapper">
		<div id="sidebar-wrapper" data-simplebar=""
			data-simplebar-auto-hide="true">
			<div class="brand-logo">
				<a href="admin/homepage"> <img src="${url}/images/logo-icon.png"
					class="logo-icon" alt="logo icon">
					<h5 class="logo-text">Admin Web Nông Sản</h5>
				</a>
			</div>
			<ul class="sidebar-menu do-nicescrol">
				<li class="sidebar-header">MENU ADMIN</li>
				<li><a href="trang-chu"> <i
						class="zmdi zmdi-view-dashboard"></i> <span>Tổng quan</span>
				</a></li>

				<li><a href="quan-li-quan-tri"> <i
						class="zmdi zmdi-account-box"></i> <span>Quản lí Admin</span>
				</a></li>
				<li><a href="quan-li-nguoi-dung"> <i
						class="zmdi zmdi-accounts"></i> <span>Quản lí User</span>
				</a></li>
				<li><a href="the-loai"> <i class="zmdi zmdi-grid"></i>
						<span>Chuyên Mục</span>
				</a></li>
				<li><a href="danh-sach-san-pham"> <i
						class="zmdi zmdi-widgets"></i> <span>Danh Sách Sản Phẩm</span>
				</a></li>
				<li><a href="don-hang"> <i
						class="zmdi zmdi-shopping-cart"></i> <span>Đơn Hàng</span>
				</a></li>

				<li><a href="chi-tiet-don-hang"> <i
						class="zmdi zmdi-shopping-cart"></i> <span>Chi Tiết Đơn
							Hàng</span>
				</a></li>
				<li><a href="review"> <i
						class="zmdi zmdi-calendar-check"></i> <span>Review</span>
				</a></li>
				<li><a href="tin-tuc"> <i class="icon-envelope-open"></i>
						<span>Tin tức</span>
				</a></li>
			</ul>
		</div>
		<header class="topbar-nav">
			<nav class="navbar navbar-expand fixed-top">
				<ul class="navbar-nav mr-auto align-items-center">
					<li class="nav-item"><a class="nav-link toggle-menu"
						href="javascript:void();"> <i class="icon-menu menu-icon"></i>
					</a></li>
				</ul>

				<ul class="navbar-nav align-items-center right-nav-link">
					<li class="nav-item"><a
						class="nav-link dropdown-toggle dropdown-toggle-nocaret"
						data-toggle="dropdown" href="#"> <span class="user-profile"><img
								src="views/assets/admin/images/avatar-admin.png"
								class="img-circle" alt="user avatar"></span>
					</a>
						<ul class="dropdown-menu dropdown-menu-right">
							<li class="dropdown-item user-details"><a
								href="javaScript:void();">
									<div class="media">
										<div class="avatar">
											<img class="align-self-start mr-3"
												src="views/assets/admin/images/avatar-admin.png"
												alt="user avatar">
										</div>
										<div class="media-body">
											<h6 class="mt-2 user-title">Webnongsan</h6>
											<b> Admin: <%=session.getAttribute("admin-username")%></b>
										</div>
									</div>
							</a></li>

							<li class="dropdown-divider"></li>
							<li class="dropdown-item"><i class="icon-power mr-2"></i><a
								href="dang-xuat"> Đăng xuất</a></li>
						</ul></li>
				</ul>
			</nav>
		</header>
		<div class="clearfix"></div>
	</div>