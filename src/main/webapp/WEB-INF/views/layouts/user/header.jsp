<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="index.html"><span>Twitter Bootstrap
						ecommerce template</span> <img
					src="<c:url value="/assets/user/img/logo-bootstrap-shoping-cart.png" />"
					alt="bootstrap sexy shop"> </a>
			</h1>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i> Twitter Bootstrap shopping cart HTML
					template is available @ $14
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Support (24/7) : 0800 1234 678 </strong><br>
				<br>
			</p>
			<span class="btn btn-mini"> ${ TotalQuantyCart} <span
				class="icon-shopping-cart"></span></span> <span
				class="btn btn-warning btn-mini">₫</span>
		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
					<c:forEach var="item" items="${ menus }" varStatus="index">
						<c:if test="${ index.first }">
							<li class="active">
						</c:if>
						<c:if test="${ not index.first }">
							<li class="">
						</c:if>
						<c:if test="${ not index.first }">
							<li class="">
						</c:if>
						<a href="${ item.url }"> ${ item.name } </a>
						</li>
					</c:forEach>
				</ul>
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Search" class="search-query span2">
				</form>
				<ul class="nav pull-right">
					<c:if test="${ empty LoginInfo  }">
						<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle" href="#"><span class="icon-lock"></span>
								Đăng nhập <b class="caret"></b></a>
							<div class="dropdown-menu">
							<form class="form-horizontal loginFrm" action="dang-nhap" method ="POST">  
									<div class="control-group">
									<input type="email" class="span3" id="inputPassword" placeholder="Mời nhập email" name = "user" />
									</div>
									<div class="control-group">
									<input type="password" class="span3" id="inputPassword" placeholder="Mời nhập password" name = "password" />
									</div>
									<div class="control-group">
										<label class="checkbox"> <input type="checkbox">
											Remember me
										</label>
										  <button type="submit" class="defaultBtn">Đăng nhập</button>
									</div>
								</form>
							</div></li>
					</c:if>
					<c:if test="${ not empty LoginInfo }"> 
						<li> <a href="#">${ LoginInfo.display_name } <b class="caret"></b></a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>