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
							<h5 class="card-title">Chi tiết đơn hàng</h5>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">ID Đơn Hàng</th>
											<th scope="col">ID Sản Phẩm</th>
											<th scope="col">Tên Sản Phẩm</th>
											<th scope="col">Giá</th>
											<th scope="col">Số lượng</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${orderedlist}" var="orderedlist">
											<tr>
												<td scope="row">${orderedlist.id}</td>
												<td>${orderedlist.id_bills}</td>
												<td>${orderedlist.id_product}</td>
												<td>${orderedlist.productName}</td>
												<td><fmt:formatNumber type="number" groupingUsed="true"
														value="${orderedlist.total / orderedlist.quanty}" />VNĐ</td>
												<td>${orderedlist.quanty}</td>
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
