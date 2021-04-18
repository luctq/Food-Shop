<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
<div class="content-wrapper">
      <div class="container-fluid">
        <!--End Row-->


        <div class="row">
          <div class="col-lg-12">
            <button class="add-catalog"><a href="admin/cate/add">Thêm chuyên mục</a></button>
          </div>
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Danh sách chuyên mục</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên chuyên mục</th>
                        <th scope="col">Chuyên mục cha</th>
                        <th scope="col">Hành động</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                  <c:forEach items="${catelist}" var="cate">
                      <tr>
                        <td scope="row">${cate.id}</td>
                        <td>${cate.name}</td>
        				<td>
        					<c:choose>
	                        <c:when test="${cate.parent_id == 0}"> 
	                        	<c:out value="NULL"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Sản phẩm mới"/>
						    </c:otherwise>
                       	</c:choose>
        				</td>
        				 <td>
                         <button class="btn btn-danger"><a href="admin/cate/delete?id=${cate.id}">Xóa</a></button>
                         
                          <button class="btn btn-success"><a href="admin/cate/edit?id=${cate.id}">Sửa</a></button>
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
