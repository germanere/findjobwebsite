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
        <a class="navbar-brand" href="/">Work CV</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>
    
        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a href="${pageContext.request.contextPath}" class="nav-link">Trang chủ</a></li>
          <li class="'nav-item"><a href="${pageContext.request.contextPath}" class="nav-link">Công việc</a></li>
          <li class="nav-item"><a href="${pageContext.request.contextPath}/list-users" class="nav-link">Ứng cử viên</a></li>

    <!--        <li class="nav-item"><a href="blog.html" class="nav-link">Công ty</a></li>-->
    <!-- 
            <li th:if="${session.user}" class="nav-item"><a th:href="@{'/user/profile/'+${session.user.id}}" th:text="${session.user.fullName}" class="nav-link" ></a> -->
    
              <ul class="dropdown">
				    <li><a href="${pageContext.request.contextPath}/profile">Hồ Sơ</a></li>
				    <li><a href="${pageContext.request.contextPath}/list-save-job">Công việc đã lưu</a></li>
				    <li><a href="${pageContext.request.contextPath}/post-list">Danh sách bài đăng</a></li>
				    <li><a href="${pageContext.request.contextPath}/list-apply-jobs">Công việc đã ứng tuyển</a></li>
				    <li><a href="${pageContext.request.contextPath}/list-follow-company">Công ty đã theo dõi</a></li>
				    <li><a href="${pageContext.request.contextPath}/login">Đăng xuất</a></li>
    
              </ul>
            </li>
    
              <li></li>
    
              <li class="nav-item cta mr-md-1"><a href="${pageContext.request.contextPath}/post-job" class="nav-link">Đăng tuyển</a></li>
            <li class="nav-item cta cta-colored"><a href="${pageContext.request.contextPath}/login" class="nav-link">Đăng nhập</a></li>
    
          </ul>
        </div>
      </div>
</nav>

<div class="hero-wrap hero-wrap-2" style="background-image: url('user${pageContext.request.contextPath}/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5" th:if="${session.user.role.id == 2 }">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
            <div class="col-md-12 text-center mb-5">
                <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span>Danh sách <span></span></p>
                <h1 class="mb-3 bread">Danh sách bài đăng</h1>
            </div>
        </div>
    </div>
</div>
<div th:if="${success}" class="toast" data-delay="2500" style="position:fixed; top: 100PX; left: 10PX;z-index: 2000;width: 300px">
    <script>
        swal({
            title: 'Thành công!',
            /* text: 'Redirecting...', */
            icon: 'success',
            timer: 3000,
            buttons: true,
            type: 'success'
        })
    </script>
</div>
<div th:if="${error}" class="toast" data-delay="2500" style="position:fixed; top: 100PX; left: 10PX;z-index: 2000;width: 300px">
    <script>
        swal({
            title: 'Bài đăng đang có người ứng tuyển!',
            /* text: 'Redirecting...', */
            icon: 'error',
            timer: 3000,
            buttons: true,
            type: 'error'
        })
    </script>
</div>
<div class="hero-wrap hero-wrap-2" style="background-image: url('user${pageContext.request.contextPath}/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5" th:if="${session.user.role.id == 1 }">
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
	<c:if test="${sessionScope.user.role.id == 2 }">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 pr-lg-4">
                <div class="row">
                    <th:block th:if="${list.content.size() == 0}">
                        <div class="row form-group" >
                            <label for="company-website-tw d-block">Danh sách bài tuyển dụng </label> <br>
                            <div class="col-md-12">
                                <a href="/recruitment/post" class="btn px-4 btn-primary text-white">Đăng tuyển</a>
                            </div>
                        </div>

                    </th:block>
                   	<c:forEach var="rec" items="${recruitment}">
                        <div class="col-md-12 ">
                            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header align-items-center">
                                        <span class="subadge">full time</span>
                                        <h2 class="mr-3 text-black" ><a href="${pageContext.request.contextPath}${'/detail-post/'}${rec.id}">${rec.tittle}</a></h2>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span> <a href="#">${rec.company.name_company}</a></div>
                                        <div><span class="icon-my_location"></span> <span>${rec.address}</span></div>
                                    </div>
                                </div>

                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0" style="width: 330px !important;">
<!--                                    <div>-->
<!--                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">-->
<!--                                            <span class="icon-heart"></span>-->
<!--                                        </a>-->
<!--                                    </div>-->
                                    <a href="${pageContext.request.contextPath}${'/detail-post/'}${rec.id}"  class="btn btn-primary py-2 ml-2">Xem chi tiết</a>
                                    <a href="${pageContext.request.contextPath}${'/edit-job/'}${rec.id}"  class="btn btn-warning py-2 ml-2">Cập nhật</a>
                                    <a class="btn btn-danger py-2 ml-2" href="" data-toggle="modal" data-target="${'#exampleModal'}${rec.id}">Xóa</a>

                                </div>
                            </div>
                        </div><!-- end -->
                        <!-- Modal -->
                        <div class="modal fade" id="${'exampleModal'}${rec.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Bạn có chắc chắn muốn xóa ?</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Bài đăng : <span>${rec.tittle}</span>
                                        <form action="delrec" method="post">
                                            <input type="hidden" class="form-control" id="id" name="id" value="${rec.id}">
                                            <div class="modal-footer mt-1">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                                <button type="submit" class="btn btn-danger">Xóa</button>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- Modal -->
                    </c:forEach>
                </div>
                <div class="row mt-5">
                    <div class="col text-center">
                        <div class="block-27">
                            <ul>
                                <li th:if="${numberPage>0}"><a href="@{/user/list-post(page = ${list.number - 1})}">&lt;</a></li>
                                <th:block th:each="recruitment,state  : ${recruitmentList}">
<!--                                    <th:block th:if="${numberPage == 0}">-->
<!--                                        <li th:class="${numberPage == 0 ? 'active' : null }"><a th:href="@{/user/list-post(page = ${state.index})}" th:text="${state.index + 1}"></a></li>-->
<!--                                    </th:block>-->
                                        <li th:class="${numberPage == state.index  ? 'active' : null }"><a href="@{/user/list-post(page = ${state.index})}" th:text="${state.index + 1}"></a></li>
                                </th:block>
                                <li th:if="${numberPage<list.totalPages - 1}"><a href="@{/user/list-post(page = ${list.number + 1})}">&gt;</a></li>
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
    ClassicEditor.create(document.querySelector('#editorN')).then(eidt => {
        console.log("da" + eidt);
    })
        .catch(error => {
            console.error(error);
        });
</script>

<footer th:replace="public/fragments :: footer" class="ftco-footer ftco-bg-dark ftco-section">

</footer>
</body>
</html>