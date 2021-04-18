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
                <h5 class="card-title">Danh sách đơn hàng</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                       <th scope="col">Tài khoản User</th>
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
                         <td>${order.user_session}</td>
                        <td>${order.user_name}</td>
                        <td>${order.user_mail}</td>
                        <td>${order.user_phone}</td>
                        <td>${order.address}</td>
                         <td>${order.message}</td>
                         <td>${order.amount} VNĐ</td>
                          <td>  <c:choose>
	                        <c:when test="${order.payment == 0}"> 
	                        	<c:out value="COD"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Thẻ nội địa ATM"/>
						    </c:otherwise>
                       	</c:choose>
                          
                          </td>
                          <td>
                          	  <c:choose>
	                        <c:when test="${order.status == NULL}"> 
	                        	<c:out value="Chưa thanh toán"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Đã thanh toán"/>
						    </c:otherwise>
                       	</c:choose>
                          </td>
                           <td>${order.created}</td>
                           
        				
        				 <td>
                         <button class="btn btn-danger"><a href="admin/order/delete?id=${order.id}">Xóa</a></button>
                         
                          <button class="btn btn-success"><a href="admin/order/edit?id=${order.id}">Sửa</a></button>
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
