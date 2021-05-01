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
							<div class="card-title">Thêm sản phẩm</div>
							<hr>
							<form method="post" action="them-product"
								modelAttribute="product">
								<div class="form-group">
									<label for="input-1">Tên sản phẩm</label> <input type="text"
										class="form-control" id="input-1" placeholder="Tên sản phẩm"
										name="name">
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
										class="form-control" id="the-date" placeholder="Ngày đăng"
										name="created_at">
								</div>
								<div class="form-group">
									<label for="input-1">Giá</label> <input type="text"
										class="form-control" id="input-1" placeholder="Giá"
										name="product-price">
								</div>
								<div class="form-group">
									<label for="input-2">Trạng thái</label>
									<div>
										<select class="form-control valid" id="input-6" name="status"
											required aria-invalid="false">
											<option value="1">Còn hàng</option>
											<option value="0">Hết hàng</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="input-2">Sản phẩm nổi bật</label>
									<div>
										<select class="form-control valid" id="input-6" name="highlight"
											required aria-invalid="false">
											<option value="1">Có</option>
											<option value="0">Không</option>
										</select>
									</div>
								</div>
									<div class="form-group">
									<label for="input-2">Sản phẩm Mới</label>
									<div>
										<select class="form-control valid" id="input-6" name="new_product"
											required aria-invalid="false">
											<option value="1">Có</option>
											<option value="0">Không</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="input-2">Giảm giá</label>
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Giảm ... %" name="sale">
										<div class="input-group-append">
											<button class="btn btn-light" type="button">%</button>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="input-2" class="col-form-label">Mô tả</label>
									<div>
										<textarea class="form-control" rows="4" id="input-17"
											name="title"></textarea>
									</div>
								</div>

								<div class="form-group">
									<label for="input-2" class="col-form-label">Nội dung</label>
									<div>
										<textarea class="form-control" rows="4" id="input-17"
											name="details"></textarea>
									</div>
								</div>

								<div class="form-group">
									<label for="input-1">Ảnh đại diện</label> <input type="text"
										class="form-control" id="input-1" placeholder="Tên hình"
										name="product-image">
								</div>
								<div class="form-footer">
									<button class="btn btn-danger">
										<i class="fa fa-times"></i><a href="huy-them-san-pham">Hủy</a>
									</button>
									<button type="submit" class="btn btn-success">
										<i class="fa fa-check-square-o"></i> Thêm
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="overlay toggle-menu"></div>
		</div>
	</div>
	<script>
		var date = new Date();

		var day = date.getDate();
		var month = date.getMonth() + 1;
		var year = date.getFullYear();

		if (month < 10)
			month = "0" + month;
		if (day < 10)
			day = "0" + day;

		var today = year + "-" + month + "-" + day;

		document.getElementById('the-date').value = today;
	</script>
</body>