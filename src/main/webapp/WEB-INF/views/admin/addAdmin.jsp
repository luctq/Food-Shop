<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/taglib.jsp"%>
<body>
<div class="content-wrapper"> 
      <div class="container-fluid"> 
 
        <div class="row mt-3"> 
          <div class="col-lg-8"> 
            <div class="card"> 
              <div class="card-body"> 
                <div class="card-title">Thêm Admin</div> 
                <hr> 
                <form action="admin/admin/add" method="post"> 
                           
                  <div class="form-group"> 
                    <label for="input-1">Username</label> 
                    <input type="text" class="form-control" id="input-1" placeholder="Username"  name="admin-username"> 
                  </div> 
                  <div class="form-group"> 
                    <label for="input-1">Password</label> 
                    <input type="password" class="form-control" id="myinput" placeholder="Password" name="admin-password">
                    <input type="checkbox" onclick="myFunction1()">Hiển thị mật khẩu
                    <script>function myFunction1() {
                    	  var x = document.getElementById("myinput");
                    	  if (x.type === "password") {
                    	    x.type = "text";
                    	  } else {
                    	    x.type = "password";
                    	  }
                    	}</script> 
                  </div>                            
                 <div class="form-group"> 
                    <label for="input-1">Tên Admin</label> 
                    <input type="text" class="form-control" id="input-1" placeholder="Tên Admin" name="admin-name"> 
                  </div>	
                  <div class="form-footer"> 
					  <button class="btn btn-danger"><i class="fa fa-times"></i><a href="admin/admin/list">Hủy</a></button>
                    <button type="submit" class="btn btn-success"><i class="fa fa-check-square-o"></i> Thêm</button>
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