<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                         <td>${orderedlist.transaction_id}</td>
                        <td>${orderedlist.product_id}</td>
                        <c:forEach items="${products}" var="products">
                        <c:if test="${products.id == orderedlist.product_id}">
	                        <td>${products.name}</td>
	                        <td>${products.price} VNĐ</td>
                        </c:if>
                        </c:forEach>
                         <td>${orderedlist.qty}</td>
                          
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
