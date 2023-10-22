<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Work CV</title>
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
<nav class="header_menu" class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container-fluid px-md-4	">
        <a class="navbar-brand" href="${pageContext.request.contextPath}">Work CV</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>
    
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



<div class="hero-wrap hero-wrap-2" style="background-image: url('${pageContext.request.contextPath}/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
            <div class="col-md-12 text-center mb-5">
                <h1 class="mb-3 bread">Hồ sơ </h1>
                <div class="form-group">
                    <label class="btn btn-primary btn-md btn-file">
                        Chọn ảnh<input type="file" name="image" id="fileUpload" hidden>
                    </label>
                </div>
                <div style="margin-left: 0px" id="divImage" >
                    <img id="avatar" height	="100" width="100" style="border-radius: 50px" src="${user.image != null ? user.image : 'https://st.quantrimang.com/photos/image/072015/22/avatar.jpg'}">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- HOME -->
<div th:if="${userInformation.status == 0}" class="container-fluid" style="text-align: center">
    <p style="font-size: 20px;font-weight: bold;color: #aaa;margin-top: 10px">Xác thực email đăng nhập</p>
    <div style="width: 600px;height: 400px;border-radius: 5px;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 10px;margin: 20px auto;padding: 15px">
        <p style="line-height: 35px;font-size: 16px">Xin chào, <span>${user.fullname}"</span> và làm theo hướng dẫn trong email.
            Trường hợp không nhận được email, bạn vui lòng bấm nút Nhận email xác thực dưới đây.</p>
        <div class="row form-group">
            <form action="/user/confirm-account" method="post" class="col-md-12">
            </form>
        </div>
        <p>Mọi thắc mắc vui lòng liên hệ bộ phận CSKH của WorkCV:<br></p>
        - Điện thoại:<span style="color:#5f80ec">(024) 6680 5588</span><br>
        - Email: <a href="#" style="color:#5f80ec"> hotro@workcv.vn</a>
    </div>
    <div th:if="${comfirm_await}" style="width: 600px;height: 400px;border-radius: 5px;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 10px;margin: 20px auto;padding: 15px">
        <p style="line-height: 35px;font-size: 16px">Xin chào, <span> ${user.fullname}" ></span> .Bạn đã gửi yêu cầu xác thực thành công,
            vui lòng kiểm tra mail để xác thực.Cảm ơn bạn!!!
        </p>
        <p>Mọi thắc mắc vui lòng liên hệ bộ phận CSKH của WorkCV:<br></p>
        - Điện thoại:<span style="color:#5f80ec">(024) 6680 5588</span><br>
        - Email: <a href="#" style="color:#5f80ec"> hotro@workcv.vn</a>
    </div>
</div>
<section class="site-section" style="margin-top: 10px">
	<c:if test="${user.status == 1 && user.role.id == 1}">
    <div class="container">
        <form method="post" action="uploadfile" enctype="multipart/form-data">
            <div class="row align-items-center mb-5">
                <div class="col-lg-8 ">
                    <div class="d-flex align-items-center">
                        <div class="form-group" style="margin-top: 15px">
                            <label class="btn btn-primary btn-md btn-file">
                              <input type="hidden" name="idcv" value="${user.CVlists.id}">
                                Chọn cv (pdf)<input type="file" name="file" id="fileUpload1" required hidden>
                            </label>
                            	 <c:out value="${user.CVlists.id}" />
                        </div>
                    </div>
                    <p id="cvName"> <c:if test="${cv != null}"><p>${cv.id != null ? cv.filename :'Chưa cập nhập'}</p></c:if>
                    <a id="nameCv" href="${'${pageContext.request.contextPath}/uploads/'}${cv.fileName}">
                    <c:if test="${cv != null}" >Xem cv</c:if></a>
                    <a style="color: red;margin-left: 20px" th:if="${Cv !=null}" data-toggle="modal" data-target="#exampleModal" >Xóa cv</a>
                    <a style="color: red;margin-left: 20px" th:if="${Cv ==null}" id="xoa" data-toggle="modal" data-target="#exampleModal" ></a>
                </div>

                <div class="col-lg-4">
                    <div class="row">
<!--                        <div class="col-6">-->
<!--                            <button type="submit" id="myBtn" class="btn btn-block btn-light btn-md"><span class="icon-open_in_new mr-2"></span>Cập nhật cv</button>-->
<!--                        </div>-->
                    </div>
                </div>
            </div>
        </form>

        <form action="updateuser" method="post" >
            <div class="row align-items-center mb-5">
                <div class="col-lg-8 mb-4 mb-lg-0">
                    <div class="d-flex align-items-center">
                        <div>
                            <h2>Cập nhật thông tin</h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="row">

                        <div class="col-6">
                            <button type="submit" class="btn btn-block btn-primary btn-md">Lưu thông tin</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-5">
                <div class="col-lg-12">
                    <div class="p-4 p-md-5 border rounded">
                    	<input type="hidden" name="idUser" value="${user.id}">
                        <h3 class="text-black mb-5 border-bottom pb-2">Thông tin chi tiết</h3>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" value="${user.email != null ? user.email : null}" required placeholder="you@yourdomain.com">
                        </div>
                        <div class="form-group">
                            <label for="job-title">Full name</label>
                            <input type="text" class="form-control" name="fullname" value="${user.fullname != null ? user.fullname : null}" required id="job-title" placeholder="Full name">
                        </div>
                        <div class="form-group">
                            <label for="job-location">Địa chỉ</label>
                            <input type="text" name="address"  class="form-control" id="job-location" value="${user.address != null ? user.address : null}" required placeholder="e.g. New York">
                        </div>
                        <div class="form-group">
                            <label for="job-location">Số điện thoại</label>
                            <input type="text" name="phoneNumber"  class="form-control" id="job-location" value="${user.phone != null ? user.phone : null}" required placeholder="+ 84">
                        </div>
                        <div class="form-group">
                            <label for="job-location">Mô tả bản thân</label>
                            <textarea  name="description" class="form-control" id="editor" placeholder="Mô tả">${user.descript != null ? user.descript : null}</textarea>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
   </c:if>
</section>
<!-- Modal -->
<div class="modal fade"  id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Bạn có chắc chắn muốn xóa ?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body"> CV : <span id="cvXoa" ></span>
                <span>
                 <c:if test="${cv != null}">${cv.filename}
                 </c:if>
                 </span>
                <form action="/user/deleteCv" method="post">
                    <div class="modal-footer mt-1">
                        <input type="hidden"  name="idCv">
                        <button type="submit" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="submit" class="btn btn-danger">Xóa</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<section class="site-section" style="margin-top: 10px">
	<c:if test="${user.status == 1 && user.role.id == 2}">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 mb-5">
                <h2 class="mb-4">Thông tin cá nhân</h2>
                <form action="updateuser" method="post" >
				<input type="hidden" name="idUser" value="${user.id}">
                    <div class="row mb-5">
                        <div class="col-lg-12">
                            <div class="p-4 p-md-5 border rounded">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" id="email" name="email"  required placeholder="you@yourdomain.com">
                                </div>
                                <div class="form-group">
                                    <label for="job-title">Họ và tên</label>
                                    <input type="text" class="form-control" name="fullName" id="job-title" required placeholder="Full name">
                                </div>
                                <div class="form-group">
                                    <label for="job-location">Địa chỉ</label>
                                    <input type="text" name="address" required class="form-control" id="job-location" placeholder="e.g. New York">
                                </div>
                                <div class="form-group">
                                    <label for="job-location">Số điện thoại</label>
                                    <input type="text" name="phoneNumber" required class="form-control" id="job-location" placeholder="+ 84">
                                </div>
                                <div class="form-group">
                                    <label for="job-location">Mô tả bản thân</label>
                                    <textarea  name="description" class="form-control" id="editor" placeholder="Mô tả"></textarea>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <input type="submit" value="Lưu thông tin" class="btn px-4 btn-primary text-white">
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </form>
            </div>
            <div class="col-lg-6">
                <h2 class="mb-4">Thông tin công ty</h2>
                <div class="form-group">
                    <label for="company-website-tw d-block1">Cập nhật Logo</label> <br>
                    <label class="btn btn-primary btn-md btn-file">
                        Chọn logo<input type="file" name="file" id="fileUpload2" required hidden>
                    </label>
                    <div id="divLogo">
                        <img id="avatar1" height="100" width="100" style="border-radius: 50px" src="${company.logo != null ? company.logo : 'https://st.quantrimang.com/photos/image/072015/22/avatar.jpg'}">
                    </div>
                </div>
                <form action="update-company" method="post" >
					<input type="hidden" name="idcompa" value="${company.id}">
                    <div class="row mb-5">
                        <div class="col-lg-12">
                            <div class="p-4 p-md-5 border rounded" >
                                <div class="form-group">
                                    <label for="email">Email</label>

                                    <input type="text" class="form-control" required id="email1" name="email" value="${company.email != null ? company.email : null }" placeholder="you@yourdomain.com">
                                </div>
                                <div class="form-group">
                                    <label for="job-title">Tên công ty</label>
                                    <input type="text" class="form-control" name="name_company" value="${company.name_company != null ? company.name_company : null }" id="job-title"  placeholder="Full name" required>

                                </div>
                                <div class="form-group">
                                    <label for="job-location">Địa chỉ</label>
                                    <input type="text" name="address" value="${company.address != null ? company.address : null}" required class="form-control" id="job-location" placeholder="e.g. New York">
                                </div>
                                <div class="form-group">
                                    <label for="job-location">Số điện thoại công ty</label>
                                    <input type="text" name="phoneNumber" value="${company.phone != null ? company.phone : null}" required class="form-control" id="job-location" placeholder="+ 84">
                                </div>
                                <div class="form-group">
                                    <label for="job-location">Mô tả công ty</label>
                                    <textarea  name="description" class="form-control" id="editorN" placeholder="Mô tả">${company.descript != null ? company.descript : null}</textarea>
                                </div>

                                <div style="margin-left: 0px" id="divImag1">
                                <c:if test="${company.logo != null}">
                                    <img id="avatar" height="100" width="100" style="border-radius: 50px;margin-bottom: 15px" src="${company.logo}">
                                </c:if>
                                </div>
                                <div class="row form-group" >
                                    <div class="col-md-12">
                                        <input type="submit" value="Lưu thông tin" class="btn px-4 btn-primary text-white">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    </c:if>
</section>

<script>
    ClassicEditor.create(document.querySelector('#editor')).then(eidt => {
        console.log("da" + eidt);
    })
        .catch(error => {
            console.error(error);
        });
    ClassicEditor.create(document.querySelector('#editorN')).then(eidt => {
        console.log("da" + eidt);
    })
        .catch(error => {
            console.error(error);
        });
</script>
<script>
    $(function () {
        $('#fileUpload').change(function () {
            if (window.FormData !== undefined) {
                var fileUpload = $('#fileUpload').get(0);
                var files = fileUpload.files;
                var email = $("#email").val();
                var formData = new FormData();
                formData.append('file', files[0]);
                formData.append('email', email);
                if(files[0] == null){
                    // document.getElementById("change").style.backgroundColor = 'red';
                    // $('#text').val(" ❌ Cập nhật ảnh thất bại");
                    $(".toast").toast("show");
                } else {
                    $.ajax(
                        {
                            type: 'POST',
                            url: '/upload',
                            contentType: false,
                            processData: false,
                            data: formData,
                            success: function (urlImage) {
                                console.log(urlImage)
                                if(urlImage == "Error"){
                                    document.getElementById("change").style.backgroundColor = 'red';
                                    swal({
                                        title: 'Cập nhật ảnh đại diện thất bại!',
                                        /* text: 'Redirecting...', */
                                        icon: 'error',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'error'
                                    })
                                    $("#divImage").css("display","block")
                                }else{
                                    $('#avatar').attr('src', urlImage)
                                    swal({
                                        title: 'Cập nhật ảnh đại diện thành công!',
                                        /* text: 'Redirecting...', */
                                        icon: 'success',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'success'
                                    })
                                }

                            },
                            error: function (err) {
                                alert(err);
                            }
                        }
                    )
                }

            }
        })
    })
</script>

<script>
    $(function () {
        $('#fileUpload2').change(function () {
            if (window.FormData !== undefined) {
                var fileUpload = $('#fileUpload2').get(0);
                var files = fileUpload.files;
                var email = $("#email").val();
                var formData = new FormData();
                formData.append('file', files[0]);
                formData.append('email', email);
                if(files[0] == null){
                    // document.getElementById("change").style.backgroundColor = 'red';
                    // $('#text').val(" ❌ Cập nhật ảnh thất bại");
                    $(".toast").toast("show");
                } else {
                    $.ajax(
                        {
                            type: 'POST',
                            url: '${pageContext.request.contextPath}/uploadfile',
                            contentType: false,
                            processData: false,
                            data: formData,
                            success: function (urlImage) {
                                console.log(urlImage)
                                if(urlImage == "Error"){
                                    document.getElementById("change").style.backgroundColor = 'red';
                                    swal({
                                        title: 'Cập nhật logo thất bại!',
                                        /* text: 'Redirecting...', */
                                        icon: 'error',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'error'
                                    })
                                    $("#divLogo").css("display","block")
                                }else{
                                    $('#avatar1').attr('src', urlImage)
                                    swal({
                                        title: 'Cập nhật logo thành công!',
                                        /* text: 'Redirecting...', */
                                        icon: 'success',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'success'
                                    })
                                }

                            },
                            error: function (err) {
                                alert(err);
                            }
                        }
                    )
                }

            }
        })
    })
</script>

<script>
    $(function () {
        $('#fileUpload1').change(function () {
            if (window.FormData !== undefined) {
                var fileUpload = $('#fileUpload1').get(0);
                var files = fileUpload.files;
                var formData = new FormData();
                formData.append('file', files[0]);
                if(files[0] == null){
                    // document.getElementById("change").style.backgroundColor = 'red';
                    // $('#text').val(" ❌ Cập nhật ảnh thất bại");
                    $(".toast").toast("show");
                } else {
                    $.ajax(
                        {
                            type: 'POST',
                            url: '${pageContext.request.contextPath}/uploadfile',
                            contentType: false,
                            processData: false,
                            data: formData,
                            success: function (urlImage) {
                                console.log(urlImage)
                                if(urlImage == "false"){
                                    // document.getElementById("change").style.backgroundColor = 'red';

                                    swal({
                                        title: 'Cần chọn đúng loại file (PDF)!',
                                        /* text: 'Redirecting...', */
                                        icon: 'error',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'error'
                                    })
                                    // $("#divImage").css("display","block")
                                }else{
                                    // $('#avatar').attr('src', urlImage)
                                    document.getElementById('nameCv').innerHTML = 'Xem cv';
                                    document.getElementById('nameCv').href = 'http://localhost:8080/resources/uploads/' + urlImage ; //or grab it by tagname etc
                                    document.getElementById('xoa').innerHTML = 'Xóa cv';
                                    document.getElementById("cvName").innerHTML = urlImage;
                                    document.getElementById("cvXoa").innerHTML = urlImage;

                                    swal({
                                        title: 'Cập nhật CV thành công!',
                                        /* text: 'Redirecting...', */
                                        icon: 'success',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'success'
                                    })
                                }

                            },
                            error: function (err) {
                                alert(JSON.stringify(err));
                            }
                        }
                    )
                }

            }
        })
    })
</script>

<footer th:replace="public/fragments :: footer" class="ftco-footer ftco-bg-dark ftco-section">

</footer>
</body>
</html>