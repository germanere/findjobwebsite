<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head th:replace="public/fragments :: html_head">
    <title>Skillhunt - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">

  <!-- CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/open-iconic-bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aos.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ionicons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.timepicker.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/css/bootstrap-reboot.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/css/mixins/_text-hide.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/icomoon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap/bootstrap-grid.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap/bootstrap-reboot.css">

  <!-- JS -->
  <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/assets/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/29.0.0/classic/ckeditor.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid px-md-4	">
          <a class="navbar-brand" href="/">Work CV</a>
      
          <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active"><a href="${pageContext.request.contextPath}" class="nav-link">Trang chủ</a></li>
              <li class="'nav-item"><a href="${pageContext.request.contextPath}" class="nav-link">Công việc</a></li>
              <li class="nav-item"><a href="${pageContext.request.contextPath}/list-users" class="nav-link">Ứng cử viên</a></li>

                <li class="nav-item cta mr-md-1"><a href="${pageContext.request.contextPath}/recruitment" class="nav-link">Đăng tuyển</a></li>
              <li class="nav-item cta cta-colored">
              	<c:if test="${empty logedInEmail}">
              		<a href="${pageContext.request.contextPath}/login" class="nav-link">Đăng nhập</a>
              	</c:if>
				<c:if test="${not empty logedInEmail}">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Hi, ${logedInEmail} <span class="caret"></span></a>
					<ul class="dropdown-menu">
				    <li><a href="${pageContext.request.contextPath}/profile">Hồ Sơ</a></li>
				    <li><a href="${pageContext.request.contextPath}/list-save-job">Công việc đã lưu</a></li>
				    <li><a href="${pageContext.request.contextPath}/post-list">Danh sách bài đăng</a></li>
				    <li><a href="${pageContext.request.contextPath}/list-apply-jobs">Công việc đã ứng tuyển</a></li>
				    <li><a href="${pageContext.request.contextPath}/list-follow-company">Công ty đã theo dõi</a></li>
				    <li><a href="${pageContext.request.contextPath}/login">Đăng xuất</a></li>
				  </ul>
				</c:if>
              </li>
            </ul>
          </div>
        </div>
      </nav>
<!-- END nav -->
<div class="hero-wrap hero-wrap-2" style="background-image: url('${pageContext.request.contextPath}/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
            <div class="col-md-12 text-center mb-5">
                <p class="breadcrumbs mb-0"><span class="mr-3"><a href="${pageContext.request.contextPath}">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span>Chi tiết <span></span></p>
                <h1 class="mb-3 bread">Chi tiết công ty</h1>
            </div>
        </div>
    </div>
</div>
<section style="margin-top: 10px" class="site-section">
    <div class="container">

        <div class="row align-items-center mb-5">
            <div class="col-lg-8 mb-4 mb-lg-0">
                <div class="d-flex align-items-center">
                    <div class="border p-2 d-inline-block mr-3 rounded">
                        <img width="100" height="100" src="${pageContext.request.contextPath}/assets/images/fpt.png" alt="Image">
                    </div>
                    <div>
                        <h2>${company.name_company}</h2>
                        <div>
                            <span class="icon-briefcase mr-2"></span><span class="ml-0 mr-2 mb-2">${company.email}</span>
                            <span  class="icon-room mr-2"></span ><span class="m-2">${company.address}</span>

                        </div>
                        <input type="hidden" id="idcompa">
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="row">
					<div class="col-6">
					<c:if test="${session.user}">
						<c:if test="${session.user.role.id == 1}">
					  <a href="${pageContext.request.contextPath}/list-follow-company?company_id=${company.id}}" class="btn btn-block btn-light btn-md"><span class="icon-heart-o mr-2 text-danger"></span>Theo dõi</a>
					  	</c:if>
					</c:if>
					</div>
					<div unless="${session.user}" class="col-6">
					  <a href="${pageContext.request.contextPath}/list-follow-company?company_id=${company.id}" class="btn btn-block btn-light btn-md"><span class="icon-heart-o mr-2 text-danger"></span>Theo dõi</a>
					</div>
                    <div class="col-6">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <div class="mb-5">

                    <h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-align-left mr-3"></span>Mô tả công việc</h3>
                    <p>${company.descript}</p>
                </div>

            </div>
            <div class="col-lg-4">
                <div class="bg-light p-3 border rounded mb-4">
                    <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Tóm tắt công việc</h3>
                    <ul class="list-unstyled pl-3 mb-0">

                        <li class="mb-2"><strong class="text-black">Email công ty: </strong> <span>${company.email}</span></li>
                        <li class="mb-2"><strong class="text-black">Số điện thoại: </strong> <span>${company.phone}</span></li>
                        <li class="mb-2"><strong class="text-black">Đia chỉ: </strong> <span>${company.address}</span></li>
                    </ul>
                </div>
		
                <div class="bg-light p-3 border rounded">
                    <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Share</h3>
                    <div class="px-3">
                        <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-facebook"></span></a>
                        <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-twitter"></span></a>
                        <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-linkedin"></span></a>
                        <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-pinterest"></span></a>
                    </div>
                </div>	
            </div>
        </div>

  </div>
    <script>
        function follow(){
            var name = "#idcompa";
            var idcompa = $(name).val();
            var formData = new FormData();
            formData.append('idcompa', idcompa);
            $.ajax(
                {
                    type: 'POST',
                    url: '/follow-company/',
                    contentType: false,
                    processData: false,
                    data: formData,
                    success: function (data) {
                        if(data == "false"){
                            swal({
                                title: 'Bạn cần phải đăng nhập!',
                                /* text: 'Redirecting...', */
                                icon: 'error',
                                timer: 3000,
                                buttons: true,
                                type: 'error'
                            })
                        }else if(data == "true"){
                            swal({
                                title: 'Theo dõi thành công!',
                                /* text: 'Redirecting...', */
                                icon: 'success',
                                timer: 3000,
                                buttons: true,
                                type: 'success'
                            })
                        }else{
                            swal({
                                title: 'Bạn đã theo dõi công ty này!',
                                /* text: 'Redirecting...', */
                                icon: 'error',
                                timer: 3000,
                                buttons: true,
                                type: 'error'
                            })
                        }
                    },
                    error: function (err) {
                        alert(err);
                    }
                }
            )
        }
        </script> 
</section>
<footer class="footer" class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
  
      <div class="row">
        <div class="col-md-12 text-center">
  
          <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script>  <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">KhuongTM</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
        </div>
      </div>
    </div>
  </footer>

</footer>
</body>
</html>