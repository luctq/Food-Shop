<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
	<div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-8">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Sửa chuyên mục</div>
                <hr>
          	
	                <form action="cap-nhat-the-loai" method="post" modelAttribute="category">
	                  <div class="form-group">
	                    <label for="input-1">ID</label>
	                    <input type="text" class="form-control" readonly id="input-1" placeholder="ID" name="id" value="${catelist.id}">
	                  </div>
	                  <div class="form-group">
	                    <label for="input-1">Tên chuyên mục</label>
	                    <input type="text" class="form-control" id="input-1" placeholder="Tên chuyên mục" name="name" value="${catelist.name }">
	                  </div>
		              <div class="form-group">
		                  <label for="input-2">Chuyên mục cha</label>
		                  <div>
		                     <select class="form-control valid" id="input-6" name="parent-id" required aria-invalid="false">
		                        <option value="0">NULL</option>
		                       <option value="1">Sản phẩm mới</option>
		                    </select>
		                  </div>
		               </div>
	                   <div class="form-footer">
	                      <button class="btn btn-danger"><a href="huy-sua-the-loai">Hủy</a></button>
                         
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