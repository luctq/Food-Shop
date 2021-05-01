<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
<div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Sửa User</div>
                <hr>
                <form action="cap-nhat-nguoi-dung" method="post" modelAttribute="user">
                  <div class="form-group">
                    <label for="input-1">ID</label>
                    <input type="text" class="form-control" id="input-1" readonly="readonly" placeholder="ID" value="${user.id}" name="id">
                  </div>
                  <div class="form-group">
                    <label for="input-2">Email</label>
                    <input type="text" class="form-control" id="input-3" placeholder="Địa chỉ Email" value="${user.user}" name="user">
                  </div>
                  <div class="form-group">
                    <label for="input-3">UserName</label>
                    <input type="text" class="form-control" id="input-5" placeholder="Username" value="${user.display_name}" name="display_name">
                  </div>
                  <div class="form-group">
                    <label for="input-4">Mật khẩu</label>
                    <input type="password" class="form-control" id="myinput" placeholder="Mật khẩu" value="${user.password}" name="password">
					<input type="checkbox" onclick="myFunction1()">Hiển thị mật khẩu
					<script>function myFunction1() {
                    	  var x = document.getElementById("myinput");
                    	  if (x.type === "password") {
                    	    x.type = "text";
                    	  } else {
                    	    x.type = "password";
                    	  }
                    	}
					</script>                   
                  </div>
                  
                  <div class="form-group">
                    <button class="btn btn-danger"><a href="huy-sua-nguoi-dung">Hủy</a></button>
                         
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