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
					<div class="card">
						<div class="card-body">
							<div class="card-title">Sửa sản phẩm</div>
							<hr>
							<form method="post" action="cap-nhat-san-pham">

								<div class="form-group">
									<label for="input-1">Mã sản phẩm</label> <input type="text"
										class="form-control" readonly="readonly" id="input-1"
										placeholder="Mã sản phẩm" name="id_products"
										value="${product.id_products}">
								</div>

								<div class="form-group">
									<label for="input-1">Tên sản phẩm</label> <input type="text"
										class="form-control" id="input-1" placeholder="Tên sản phẩm"
										name="name" value="${product.name}">
								</div>


								<div class="form-group">
									<label for="input-2">Chuyên mục</label>
									<div>
										<select class="form-control valid" id="input-6"
											name="id_category" aria-invalid="false">
											<c:forEach items="${catelist}" var="cate">
												<option value="${cate.id }">${cate.name }</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="input-1">Ngày</label> <input type="date"
										class="form-control" id="input-1" placeholder="Ngày đăng"
										name="created_at" value="${product.created_at}">
								</div>
								<div class="form-group">
									<label for="input-1">Giá</label> <input type="text"
										class="form-control" id="input-1" placeholder="Giá"
										name="price" value="${product.price}">
								</div>

								<div class="form-group">
									<label for="input-2">Trạng thái</label>
									<div>
										<select class="form-control valid" id="input-6"
											name="status" required aria-invalid="false">
											<option value="1">Còn hàng</option>
											<option value="0">Hết hàng</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="input-2">Giảm giá</label>
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Giảm ... %" name="sale"
											value="${product.sale}">
										<div class="input-group-append">
											<button class="btn btn-light" type="button">%</button>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="input-2" class="col-form-label">Mô tả</label>
									<div>
										<textarea class="form-control" rows="4" id="input-17"
											name="title">${product.title}</textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="input-2" class="col-form-label">Nội dung</label>
									<div>
										<textarea class="form-control" rows="4" id="input-17"
											name="details">${product.details}</textarea>
									</div>
								</div>

								<div class="form-group">
									<label for="input-1">Ảnh đại diện</label> <input type="text"
										class="form-control" id="input-1" placeholder="Tên hình"
										name="img" value="${product.img}">
								</div>



								<div class="form-footer">
									<button class="btn btn-danger">
										<a href="admin/product/list">Hủy</a>
									</button>

									<button type="submit" class="btn btn-success">Cập nhật</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="overlay toggle-menu"></div>
		</div>
	</div>
</body>