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
<div th:if="${success}" class="toast" data-delay="2000" style="position:fixed;top: 100PX; right: 10PX;z-index: 2000;width: 300px">
    <script>
        swal({
            title: 'Xóa thành công!',
            /* text: 'Redirecting...', */
            icon: 'success',
            timer: 3000,
            buttons: true,
            type: 'success'
        })
    </script>
</div>
<!-- END nav -->
<div class="hero-wrap hero-wrap-2" style="background-image: url('user${pageContext.request.contextPath}/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5" th:if="${session.user.role.id == 1 }">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
            <div class="col-md-12 text-center mb-5">
                <p class="breadcrumbs mb-0"><span class="mr-3"><a href="/">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span>Công việc <span></span></p>
                <h1 class="mb-3 bread">Danh sách công việc đã lưu</h1>
            </div>
        </div>
    </div>
</div>
<div class="hero-wrap hero-wrap-2" style="background-image: url('user${pageContext.request.contextPath}/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5" th:if="${session.user.role.id == 2 }">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
            <div class="col-md-12 text-center mb-5">

                <h1 class="mb-3 bread">Không tìm thấy trang yêu cầu</h1>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section bg-light">
	<c:if test="${sessionScope.user.role.id == 1}">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 pr-lg-5">
                <div class="row">
                	<c:forEach var="sajo" items="${savejob}">
                        <div class="col-md-12 ">
                            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header align-items-center">
                                        <span class="subadge" >fulltime</span>
                                        <h2 class="mr-3 text-black" ><a href="${pageContext.request.contextPath}${'/detail-post/'}${sajo.recruitment.id}">${sajo.recruitment.tittle}</a></h2>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span> <a href="#">${sajo.recruitment.company.name_company}</a></div>
                                        <div><span class="icon-my_location"></span> <span>${sajo.recruitment.address}</span></div>
                                    </div>
                                </div>
                                <input type="hidden" id="${'idRe'}${sajo.recruitment.id}" value="${sajo.recruitment.id}" >
                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                    	<form method=post action="save-job/delete/{id}">
                                        <a href="${pageContext.request.contextPath}${'/save-job/delete/'}${sajo.id}" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-delete"></span>
                                        </a>
                                        </form>
                                    </div>
                                    <a data-toggle="modal"data-bs-target="${'#exampleModal'}${sajo.recruitment.id}" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                            </div>
                        </div><!-- end -->
                        <!-- Modal -->
                        <div class="modal fade" id="${'exampleModal'}${sajo.recruitment.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Ứng tuyển: <span> ${sajo.recruitment.tittle}</span></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form method="post" action="/user/apply-job">
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-12">
                                                    <select id="${'choose'}${sajo.recruitment.id}" onchange="'choosed(' +${sajo.recruitment.id}+ ')'" class="form-control" aria-label="Default select example">
                                                        <option selected>Chọn phương thức nộp</option>
                                                        <option value="1">Dùng cv đã cập nhật</option>
                                                        <option value="2">Nộp cv mới</option>
                                                    </select>
                                                </div>
                                                <div id="${'loai1'}${sajo.recruitment.id}" style="display:none" class="col-12">
                                                    <label for="fileUpload"
                                                           class="col-form-label">Giới thiệu:</label>
                                                    <textarea rows="10" cols="3" class="form-control" id="${'text'}${sajo.recruitment.id}" >

                                                    </textarea>
                                                </div>
                                                <div id="${'loai2'}${sajo.recruitment.id}" style="display:none" class="col-12">

                                                    <label for="fileUpload"
                                                           class="col-form-label">Chọn cv:</label>
                                                    <input type="file" class="form-control"
                                                           id="${'fileUpload'}${sajo.recruitment.id}" name="file"   required>
                                                    <label for="fileUpload"
                                                           class="col-form-label">Giới thiệu:</label>
                                                    <textarea rows="10" cols="3" class="form-control" id="${'text'}${sajo.recruitment.id}" >

                                                    </textarea>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                                <button type="button" id="${'button1'}${sajo.recruitment.id}" style="display: none" onclick="'apply1(' +${sajo.recruitment.id}+ ')'" class="btn btn-primary">Nộp</button>
                                                <button type="button" id="${'button2'}${sajo.recruitment.id}" style="display: none" onclick="'apply(' +${sajo.recruitment.id}+ ')'" class="btn btn-primary">Nộp</button>
                                            </div>
                                        </div>
                                    </form>
<!--                                    <form method="post" action="/user/apply-job">-->
<!--                                        <div class="modal-body">-->
<!--                                            <div class="row">-->
<!--                                                <div class="col-12">-->
<!--                                                    <label for="fileUpload"-->
<!--                                                           class="col-form-label">Chọn cv:</label>-->
<!--                                                    <input type="file" class="form-control"-->
<!--                                                           th:id="${'fileUpload'}+${saveJob.recruitment.id}" name="file"   required>-->
<!--                                                    <label for="fileUpload"-->
<!--                                                           class="col-form-label">Giới thiệu:</label>-->
<!--                                                    <textarea rows="10" cols="3" class="form-control"  th:id="${'text'}+${saveJob.recruitment.id}" >-->

<!--                                                    </textarea>-->
<!--                                                </div>-->

<!--                                            </div>-->
<!--                                            <div class="modal-footer">-->
<!--                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>-->
<!--                                                <button type="button" th:onclick="'apply(' +${saveJob.recruitment.id}+ ')'" class="btn btn-primary">Nộp</button>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                    </form>-->
                                </div>
                            </div>
                        </div>
					</c:forEach>
                </div>
                <div style="text-align: center" th:if="${saveJobList.totalPages < 1}">
                    <p style="color:red;">Danh sách trống</p>
                </div>
                <div class="row mt-5">
                    <div class="col text-center">
                        <div class="block-27">
                            <ul>
                                <li th:if="${numberPage>0}"><a th:href="@{/save-job/get-list(page = ${saveJobList.number - 1})}">&lt;</a></li>
                                <th:block th:each="recruitment,state  : ${recruitmentList}">
                                    <li th:class="${numberPage == state.index  ? 'active' : null }"><a th:href="@{/save-job/get-list(page = ${state.index})}" th:text="${state.index + 1}"></a></li>
                                </th:block>
                                <li th:if="${numberPage<saveJobList.totalPages - 1}"><a th:href="@{/save-job/get-list(page = ${saveJobList.number + 1})}">&gt;</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </c:if>
</section>
<script>
    function apply1(id){
        var name = "#idRe" +id;
        var nameModal = "#exampleModal" +id;
        var nameFile = "#fileUpload"+id;
        var nameText = "#text" +id;
        var idRe = $(name).val();
        var textvalue = $(nameText).val();
        var formData = new FormData();
        formData.append('idRe', idRe);
        formData.append('text', textvalue);
        $.ajax(
            {
                type: 'POST',
                url: '/user/apply-job1/',
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
                            title: 'Ứng tuyển thành công!',
                            /* text: 'Redirecting...', */
                            icon: 'success',
                            timer: 3000,
                            buttons: true,
                            type: 'success'
                        })
                        $(nameModal).modal('hide');
                        $('#fileUpload').val("");
                    }else{
                        swal({
                            title: 'Bạn đã ứng tuyển công việc này!',
                            /* text: 'Redirecting...', */
                            icon: 'error',
                            timer: 3000,
                            buttons: true,
                            type: 'error'
                        })
                        $(nameModal).modal('hide');
                        $('#fileUpload').val("");
                    }
                },
                error: function (err) {
                    alert(err);
                }
            }
        )


    }
    function choosed(id){
        var name = '#choose' + id;
        var name1 = 'loai1' + id;
        var name2 = 'loai2' + id;
        var button1 = 'button1' + id;
        var button2 = 'button2' + id;
        var giaitri = $(name).val();
        if(giaitri == 1){
            document.getElementById(name1).style.display = 'block'
            document.getElementById(name2).style.display = 'none'
            document.getElementById(button1).style.display = 'block'
            document.getElementById(button2).style.display = 'none'
        }else{
            document.getElementById(name2).style.display = 'block'
            document.getElementById(name1).style.display = 'none'
            document.getElementById(button2).style.display = 'block'
            document.getElementById(button1).style.display = 'none'
        }
    }

    function apply(id){
        var name = "#idRe" +id;
        var nameModal = "#exampleModal" +id;
        var nameFile = "#fileUpload"+id;
        var nameText = "#text" +id;
        var idRe = $(name).val();
        var textvalue = $(nameText).val();
        var fileUpload = $(nameFile).get(0);
        var files = fileUpload.files;
        var formData = new FormData();
        formData.append('file', files[0]);
        formData.append('idRe', idRe);
        formData.append('text', textvalue);
        if(files[0] == null){
            swal({
                title: 'Bạn cần phải chọn cv!',
                /* text: 'Redirecting...', */
                icon: 'error',
                timer: 3000,
                buttons: true,
                type: 'error'
            })
        } else {
            $.ajax(
                {
                    type: 'POST',
                    url: '/user/apply-job/',
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
                                title: 'Ứng tuyển thành công!',
                                /* text: 'Redirecting...', */
                                icon: 'success',
                                timer: 3000,
                                buttons: true,
                                type: 'success'
                            })
                            $(nameModal).modal('hide');
                            $('#fileUpload').val("");
                        }else{
                            swal({
                                title: 'Bạn đã ứng tuyển công việc này!',
                                /* text: 'Redirecting...', */
                                icon: 'error',
                                timer: 3000,
                                buttons: true,
                                type: 'error'
                            })
                            $(nameModal).modal('hide');
                            $('#fileUpload').val("");
                        }
                    },
                    error: function (err) {
                        alert(err);
                    }
                }
            )
        }

    }
    function save(id){
        var name = "#idRe" +id;
        var idRe = $(name).val();
        var formData = new FormData();
        formData.append('idRe', idRe);
        $.ajax(
            {
                type: 'POST',
                url: '/save-job/save/',
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
                            title: 'Lưu thành công!',
                            /* text: 'Redirecting...', */
                            icon: 'success',
                            timer: 3000,
                            buttons: true,
                            type: 'success'
                        })
                    }else{
                        swal({
                            title: 'Bạn đã lưu bài này rồi!',
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

<footer th:replace="public/fragments :: footer" class="ftco-footer ftco-bg-dark ftco-section">

</footer>


<!-- loader -->
<!--<div th:replace="public/fragments :: loading" id="ftco-loader" class="show fullscreen"></div>-->

</body>
</html>