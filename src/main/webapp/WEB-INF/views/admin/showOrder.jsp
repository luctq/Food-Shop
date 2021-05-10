<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
	<div class="content-wrapper">
		<div class="container-fluid">
			<!--End Row-->


			<div class="row">

				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Danh sách đơn hàng</h5>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">Họ Tên</th>
											<th scope="col">Email</th>
											<th scope="col">SĐT</th>
											<th scope="col">Địa chỉ</th>
											<th scope="col">Ghi chú</th>
											<th scope="col">Tổng tiền</th>
											<th scope="col">Phương thức thanh toán</th>
											<th scope="col">Trạng thái</th>
											<th scope="col">Ngày tạo</th>
											<th scope="col">Hành động</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${order}" var="order">
											<tr>
												<td scope="row">${order.id}</td>
												<td>${order.display_name}</td>
												<td>${order.user}</td>
												<td>${order.phone}</td>
												<td>${order.address}</td>
												<td>${order.note}</td>
												<td><fmt:formatNumber type="number" groupingUsed="true"
														value="${order.total}" />VNĐ</td>
												<td><c:choose>
														<c:when test="${order.payment == 0}">
															<c:out value="COD" />
														</c:when>
														<c:otherwise>
															<c:out value="Thẻ nội địa ATM" />
														</c:otherwise>
													</c:choose></td>
												<td><c:choose>
														<c:when test="${order.status == 0}">
															<c:out value="Chưa thanh toán" />
														</c:when>
														<c:otherwise>
															<c:out value="Đã thanh toán" />
														</c:otherwise>
													</c:choose></td>
												<td>${order.orderDay}</td>


												<td>
													<button class="btn btn-danger">
														<a href="xoa-don-hang${order.id}">Xóa</a>
													</button>

													<button class="btn btn-success">
														<a href="sua-don-hang${order.id}">Sửa</a>
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
