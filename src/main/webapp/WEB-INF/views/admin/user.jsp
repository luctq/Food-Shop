<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
	<div class="content-wrapper">
		<div class="container-fluid">

			<div class="row mt-3">
				<div class="col-lg-12">
					<button class="add-catalog">
						<a href="them-nguoi-dung">Thêm User</a>
					</button>
				</div>
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Danh sách User</h5>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">ID</th>
											<th scope="col">Tên</th>
											<th scope="col">Email</th>
											<th scope="col">Số điện thoại</th>
											<th scope="col">Username</th>
											<th scope="col">Ngày tạo</th>
											<th scope="col">Hành động</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${userlist}" var="user">
											<tr>
												<td scope="row">${user.id}</td>
												<td>${user.display_name }</td>
												<td>${user.user }</td>
												<td>1</td>
												<td>${user.display_name }</td>
												<td>${ user.address }</td>
												<td>
													<button class="btn btn-danger">
														<a href="xoa-user${user.id}">Xóa</a>
													</button>

													<button class="btn btn-success">
														<a href="sua-nguoi-dung${user.id}">Sửa</a>
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
			<div class="overlay toggle-menu"></div>
		</div>
	</div>
</body>