<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
 <div class="content-wrapper">
      <div class="container-fluid">
        <div class="row mt-3">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Sửa đơn hàng</div>
                <hr>
                <form method="post" action="cap-nhat-don-hang">
                
                 <div class="form-group">
                    <label for="input-1">Mã đơn hàng</label>
                    <input type="text" class="form-control" readonly="readonly" id="input-1" placeholder="Mã sản phẩm" name="id" value="${order.id}">
                  </div>
                  
                  <div class="form-group">
                    <label for="input-1">Tên khách hàng</label>
                    <input type="text" class="form-control" id="input-1" name="display_name" value="${order.display_name}">
                  </div>
                  
                   <div class="form-group">
                    <label for="input-1">Email</label>
                    <input type="text" class="form-control" id="input-1" name="user" value="${order.user}">
                  </div>
                  
                   <div class="form-group">
                    <label for="input-1">Số điện thoại</label>
                    <input type="text" class="form-control" id="input-1" name="phone" value="${order.phone}">
                  </div>
                  
                      
                 <div class="form-group">
                  <label for="input-2" class="col-form-label">Địa chỉ</label>
                  <div>
                    <textarea class="form-control" rows="4" id="input-17" name="address">${order.address}</textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label for="input-2" class="col-form-label">Ghi chú</label>
                  <div>
                    <textarea class="form-control" rows="4" id="input-17" name="note">${order.note}</textarea>
                  </div>
                </div>
                  
	              <div class="form-group">
                    <label for="input-1">Tổng tiền</label>
                    <input type="text" class="form-control" id="input-1" name="total" value="${order.total}">
                  </div>
                  
                    <div class="form-group">
	                  <label for="input-2">Phương thức thanh toán</label>
	                  <div>
	                    <select class="form-control valid" id="input-6" name="payment" required aria-invalid="false">
	                        <option value="1">Thẻ nội địa ATM</option>
	                        <option value="0" selected="selected">COD</option>
	                    </select>
	                  </div>
	                </div>
                  
                    <div class="form-group">
	                  <label for="input-2">Trạng thái</label>
	                  <div>
	                    <select class="form-control valid" id="input-6" name="status" required aria-invalid="false">
	                        <option value="1">Đã thanh toán</option>
	                        <option value="0"Chưa thanh toán" selected="selected">Chưa thanh toán</option>
	                    </select>
	                  </div>
	                </div>
	          
		               <div class="form-footer">
		                     <button class="btn btn-danger"><a href="huy-sua-don-hang">Hủy</a></button>
		                         
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