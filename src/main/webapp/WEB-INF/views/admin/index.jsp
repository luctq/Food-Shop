<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
  <!-- Start header section -->
    <div class="content-wrapper">
      <div class="container-fluid">
        <div class="card mt-3">
          <div class="card-content">
            <div class="row row-group m-0">
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">3 <span class="float-right"><i class="fa fa-shopping-cart"></i></span>
                  </h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Đơn hàng (theo tuần)<span class="float-right">+4.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">230.000 <span class="float-right">VNĐ</span></h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Lợi nhuận (theo tuần)<span class="float-right">+1.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">25 <span class="float-right"><i class="fa fa-eye"></i></span></h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Ghé trang (theo tuần)<span class="float-right">+5.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">3 <span class="float-right"><i class="fa fa-envira"></i></span></h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Bán ra (theo tuần)<span class="float-right">+2.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12 col-lg-4 col-xl-4">
            <div class="card">
              <div class="card-header">Danh mục bán chạy
              </div>
              <div class="card-body">
                <div class="chart-container-2">
                  <canvas id="chart2"></canvas>
                </div>
              </div>
              <div class="table-responsive">
                <table class="table align-items-center">
                  <tbody>
                    <tr>
                      <td><i class="fa fa-circle text-white mr-2"></i>Rau sạch</td>
                      <td>58.000 VNĐ</td>
                      <td>+55%</td>
                    </tr>
                    <tr>
                      <td><i class="fa fa-circle text-light-1 mr-2"></i>Củ quả</td>
                      <td>110.000 VNĐ</td>
                      <td>+25%</td>
                    </tr>
                    <tr>
                      <td><i class="fa fa-circle text-light-2 mr-2"></i>Hạt</td>
                      <td>215.500 VNĐ</td>
                      <td>+15%</td>
                    </tr>
                    <tr>
                      <td><i class="fa fa-circle text-light-3 mr-2"></i>Mật ong</td>
                      <td>310.000 VNĐ</td>
                      <td>+5%</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
