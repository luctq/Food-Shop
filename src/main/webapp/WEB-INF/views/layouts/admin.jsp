<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin web Food</title>

<link href="<c:url value="/assets/admin/css/pace.min.css" />"
	rel="stylesheet" />
<script src="<c:url value="/assets/admin/js/pace.min.js" />"></script>
<link rel="stylesheet"
	href="<c:url value="/assets/admin/plugins/summernote/dist/summernote-bs4.css" />" />
<link rel="icon"
	href="<c:url value="/assets/admin/images/favicon.ico" />"
	type="image/x-icon">
<link
	href="<c:url value="/assets/admin/plugins/vectormap/jquery-jvectormap-2.0.2.css" />"
	rel="stylesheet" />
<link
	href="<c:url value="/assets/admin/plugins/simplebar/css/simplebar.css" />"
	rel="stylesheet" />
<link href="<c:url value="/assets/admin/css/bootstrap.min.css" />"
	rel="stylesheet" />
<link href="<c:url value="/assets/admin/css/animate.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/admin/css/icons.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/admin/css/sidebar-menu.css" />"
	rel="stylesheet" />
<link href="<c:url value="/assets/admin/css/app-style.css" />"
	rel="stylesheet" />


</head>

<body class="bg-theme bg-theme1">
	<!-- start loader -->
	<div id="pageloader-overlay" class="visible incoming">
		<div class="loader-wrapper-outer">
			<div class="loader-wrapper-inner">
				<div class="loader"></div>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/layouts/admin/header.jsp"%>
	<decorator:body />
	<%@include file="/WEB-INF/views/layouts/admin/footer.jsp"%>
	<script src="<c:url value="/assets/admin/js/jquery.min.js" />"></script>
	<script src="<c:url value="/assets/admin/js/bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/plugins/simplebar/js/simplebar.js"/>"></script>
	<script src="<c:url value="/assets/admin/js/sidebar-menu.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/js/jquery.loading-indicator.js"/>"></script>
	<script src="<c:url value="/assets/admin/js/app-script.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/plugins/Chart.js/Chart.min.js"/>"></script>
	<script src="<c:url value="/assets/admin/js/index.js"/>"></script>
	<script
		src="<c:url value="/assets/admin/plugins/summernote/dist/summernote-bs4.min.js"/>"></script>
		<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>