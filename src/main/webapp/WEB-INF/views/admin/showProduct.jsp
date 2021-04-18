<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
 <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-12">
            <button class="add-catalog"><a href="admin/product/add">Thêm sản phẩm</a></button>
          </div>
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Danh sách sản phẩm</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Hình ảnh</th>
                        <th scope="col">ID danh mục</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Status</th>
                        <th scope="col">Giảm giá</th>
                        <th scope="col">Ngày tạo</th>
                        <th scope="col">Hành động</th>
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${productlist}" var="product">
                      <tr>
                        <th scope="row">${product.id }</th>
                        <td>${product.name }</td>
                        <td><img style="    width: 110px;height: 67px; object-fit: cover;border: 1px solid #fff;" src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="${product.name}"></td>
                        <td>${product.catalog_id }</td>
                        <td>${product.price }</td>
                        <td>
                        
                        <c:choose>
	                        <c:when test="${product.status == 1}"> 
	                        	<c:out value="Còn hàng"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Hết hàng"/>
						    </c:otherwise>
                       	</c:choose>
                        </td>
                        <td>${product.discount }%</td>
                        <td>${product.created }</td>
                        <td>
                            <button class="btn btn-danger"><a href="admin/product/delete?id=${product.id}">Xóa</a></button>
                         
                          <button class="btn btn-success"><a href="admin/product/edit?id=${product.id}">Sửa</a></button>
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
