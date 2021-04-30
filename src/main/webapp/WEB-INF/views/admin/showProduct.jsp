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
            <button class="add-catalog"><a href="them-san-pham">Thêm sản phẩm</a></button>
          </div>
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Danh sách sản phẩm</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">ID sản phẩm</th>
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
                        <th scope="row">${product.id_products }</th>
                        <td>${product.name }</td>
                        <td><img style="    width: 110px;height: 67px; object-fit: cover;border: 1px solid #fff;" src="<c:url value="/assets/user/images/${ product.img }"/>" alt="${product.name}"></td>
                        <td>${product.id_category }</td>
                        <td>${product.price }</td>
                        <td>
                        
                        <c:choose>
	                        <c:when test="${product.status = '1'}"> 
	                        	<c:out value="Còn hàng"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Hết hàng"/>
						    </c:otherwise>
                       	</c:choose>
                        </td>
                        <td>${product.sale }%</td>
                        <td>${product.created_at }</td>
                        <td>
                            <button class="btn btn-danger"><a href="admin/product/delete?id=${product.id_products}">Xóa</a></button>
                         
                          <button class="btn btn-success"><a href="admin/product/edit?id=${product.id_products}">Sửa</a></button>
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
