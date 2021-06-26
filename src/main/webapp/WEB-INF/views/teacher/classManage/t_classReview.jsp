<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Boutique | Ecommerce bootstrap template</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="all,follow">
  <!-- Bootstrap CSS-->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/css/bootstrap.min.css">
  <!-- Lightbox-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/css/lightbox.min.css">
  <!-- Range slider-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.css">
  <!-- Bootstrap select-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/css/bootstrap-select.min.css">
  <!-- Owl Carousel-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.theme.default.css">
  <!-- Google fonts-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon.png">
  <!-- Tweaks for older IEs--><!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

  <style>
    body {
      font-size: 15px;
    }

    table {
      text-align: center;
      font-size: 13px;
      color: black;
    }

    a {
      color: black;
    }
    
    .review-img {
      height: 50px;
      border-radius: 10%!important;
      margin-top: 8px;
      width: 50px;
    }
    
    nav {
      padding-top: 50px;
    }

    textarea {
      padding-top: 10px;
      width: 100%;
    }

    .btn {
      border-radius: 5px !important;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
    
    .btn-primary:hover {
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
  </style>



</head>
<body>
  <div class="page-holder">
    <!-- navbar-->
    <jsp:include page="../commons/header.jsp"/>

    <div class="container">
        <!-- sidebar -->
        <jsp:include page="../commons/sidebar.jsp"/>
      
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px;">
        
        <!-- 상단 메뉴바 -->
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classDetail.html" style="font-size: 15; color: black"><b>상세정보</b></a>
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classReview.html" style="font-size: 15; color: black"><b>후기</b></a>          
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classInquiry.html" style="font-size: 15; color: black"><b>고객문의</b></a>
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classAttendance.html" style="font-size: 15; color: black"><b>수강생 관리</b></a>
        </div>            
      </div>  
    
    <!-- 문의 게시판 -->
    <div class="col-sm-10" id="content-formatting" style="float: left;">
      <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
        <h4>후기 관리</h4>
      </div>
      <form>
        
        <!-- 리뷰 탭 -->
          <div class="p-4 p-lg-5 bg-white">
            <div class="row">
              <div class="col-lg-8">
                <div style="display:flex;">
                </div>
                <!-- 리뷰1 -->
                <div class="media mb-3">
                  <a href="img/review.png">
                    <img class="review-img" src="img/review.png">
                  </a>
                  <div class="media-body ml-3">
                    <div class="col-sm-12">
                      <h6 class="mb-0 text-uppercase">아무개</h6>
                      <p class="small text-muted mb-0 text-uppercase">2021-06-22</p>
                      <ul class="list-inline mb-1 text-xs">
                        <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                        <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                        <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                        <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                        <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
                      </ul>
                      <p class="text-small mb-0 text-muted">초보도 쉽게 그림을 그릴수 있어서 좋았어요!</p>
                      <div class="col-sm-12" style="padding: 0px;">
                        <textarea style="resize: none;"></textarea>
                      </div>
                      <div class="col-sm-12" style="padding: 0px; text-align: center;">
                        <button class="btn btn-sm btn-primary" type="button" onclick="location.href='t_classReviewDone.html'">완료</button>
                      </div>                    
                    </div>
                  </div>
                </div>
                <!-- 리뷰2 -->
                <div class="media mb-3">
                  <a href="img/review2.png">
                    <img class="review-img" src="img/review2.png">
                  </a>
                  <div class="media-body ml-3">
                    <h6 class="mb-0 text-uppercase">홍길동</h6>
                    <p class="small text-muted mb-0 text-uppercase">2021-06-24</p>
                    <ul class="list-inline mb-1 text-xs">
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
                    </ul>
                    <p class="text-small mb-0 text-muted">초보도 쉽게 그림을 그릴수 있고 작가님께서 그림 기본 틀부터 완성까지 그릴수 있도록 그리는 방법도 알려주시기 때문에 어렵지 않아서 좋았어요!</p>
                    <div class="col-sm-12" style="padding: 0px;">
                      <textarea style="resize: none;"></textarea>
                    </div>
                    <div class="col-sm-12" style="padding: 0px; text-align: center;">
                      <button class="btn btn-sm btn-primary" type="button" onclick="location.href='t_classReviewDone.html'">완료</button>
                    </div>      
                  </div>
                </div>
                <!-- 리뷰3 -->
                <div class="media mb-3">
                  <a href="">
                    <img class="review-img" src="">
                  </a>
                  <div class="media-body ml-3">
                    <h6 class="mb-0 text-uppercase">홍길동</h6>
                    <p class="small text-muted mb-0 text-uppercase">2021-06-24</p>
                    <ul class="list-inline mb-1 text-xs">
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
                    </ul>
                    <p class="text-small mb-0 text-muted">초보도 쉽게 그림을 그릴수 있고 작가님께서 그림 기본 틀부터 완성까지 그릴수 있도록 그리는 방법도 알려주시기 때문에 어렵지 않아서 좋았어요!</p>
                    <div class="col-sm-12" style="padding: 0px;">
                      <textarea style="resize: none;"></textarea>
                    </div>
                    <div class="col-sm-12" style="padding: 0px; text-align: center;">
                      <button class="btn btn-sm btn-primary" type="button" onclick="location.href='t_classReviewDone.html'">완료</button>
                    </div>     
                  </div>
                </div>
                <!-- 리뷰4 -->
                <div class="media mb-3">
                  <a href="img/review2.png">
                    <img class="review-img" src="img/review2.png">
                  </a>
                  <div class="media-body ml-3">
                    <h6 class="mb-0 text-uppercase">아무개</h6>
                    <p class="small text-muted mb-0 text-uppercase">2021-06-22</p>
                    <ul class="list-inline mb-1 text-xs">
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
                    </ul>
                    <p class="text-small mb-0 text-muted">초보도 쉽게 그림을 그릴수 있고 작가님께서 그림 기본 틀부터 완성까지 그릴수 있도록 그리는 방법도 알려주시기 때문에 어렵지 않아서 좋았어요!</p>
                    <div class="col-sm-12" style="padding: 0px;">
                      <textarea style="resize: none;"></textarea>
                    </div>
                    <div class="col-sm-12" style="padding: 0px; text-align: center;">
                      <button class="btn btn-sm btn-primary" type="button" onclick="location.href='t_classReviewDone.html'">완료</button>
                    </div>      
                  </div>
                </div>
                <nav aria-label="...">
                  <ul class="pagination" style="justify-content: center;">
                    <li class="page-item"><span class="page-link"><</span></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item"><a class="page-link" href="#">></a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
      </form>
    </div>


    <!-- JavaScript files-->
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  </div>
  </div>
</body>
<html>