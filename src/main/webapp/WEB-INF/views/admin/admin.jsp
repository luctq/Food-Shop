<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</head>
<body>
	<div class="content-wrapper">
		<div class="container-fluid">
			<!--End Row-->


			<div class="row">
				<div class="col-lg-12">
					<button class="add-catalog">
						<a href="them-quan-tri">Thêm Admin</a>
					</button>
				</div>
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Danh sách Admin</h5>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">ID</th>
											<th scope="col">Tên đăng nhập</th>
											<th scope="col">Tên Admin</th>
											<th scope="col">Hành động</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${adminlist}" var="admin">
											<tr>
												<td scope="row">${admin.id}</td>
												<td>${admin.username}</td>
												<td>${admin.name}</td>
												<td>
													<button class="btn btn-danger">
														<a href="xoa-admin${admin.id}">Xóa</a>
													</button>

													<button class="btn btn-success">
														<a href="sua-quan-tri${admin.id }">Sửa</a>
													</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>