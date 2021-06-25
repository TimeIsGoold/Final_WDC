<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<
<!DOCTYPE html>
<html>
  <head>

	<jsp:include page="${pageContext.servletContext.contextPath }/commons/header/header.jsp"></jsp:include>  
	  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Boutique | Ecommerce bootstrap template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/user/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Lightbox-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/user/vendor/lightbox2/css/lightbox.min.css">
    <!-- Range slider-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/user/vendor/nouislider/nouislider.min.css">
    <!-- Bootstrap select-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/user/vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- Owl Carousel-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/user/vendor/owl.carousel2/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/user/vendor/owl.carousel2/assets/owl.theme.default.css">
    <!-- Google fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/user/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/user/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
>>>>>>> branch 'master' of https://github.com/TimeIsGoold/Final_WDC.git
      <style>
      .class-link {
        color: black;
      } 

      .class-link:hover {
        color:black;
      }

      .card-body{
        height: 400px;
        margin-left: 100px;

      }
    
      .justify-content-lg-end {
        justify-content: center !important;
      }

      .form-control-lg {
        width: 450px;
      }

      .currentPage{
        font-weight: 600;
        font-size: 26px;

      }
      .form-control{
        border-radius: 5px;
      }

      .img-fluid{
        height: 180px;
        width: 250px;
        border-radius: 5px;
      }

      .bottom_badge{
        position: absolute;
        top: 12rem;
        right: 3.3rem;
        z-index: 999;
        font-size: 12.5px;
        background-color: #f8f9fa;
        color: black !important;
      }

      i{
        font-family: "Font Awesome 5 Free" !important;
      }

      *{font-family:'Cafe24SsurroundAir' !important;}
    </style>
  </head>
  <body>
    <div class="page-holder">
      <!-- navbar-->
      <header class="header bg-white">
        <div class="container px-0 px-lg-3">
          <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="index.html"><span class=" text-uppercase text-dark" style="font-size: 32px; font-family: Cafe24SsurroundAir;"><img src="../User_View/img/favicon.png" width="33px" height="33px">&nbsp;우리 동네 클래스</span></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="pagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">클래스</a>
                  <div class="dropdown-menu mt-3" aria-labelledby="pagesDropdown">
                    <a class="dropdown-item border-0 transition-link" href="class_all.html">전체보기</a>
                    <a class="dropdown-item border-0 transition-link" href="class_sport.html">스포츠</a>
                    <a class="dropdown-item border-0 transition-link" href="class_beauty.html">뷰티</a>
                    <a class="dropdown-item border-0 transition-link" href="class_art.html">미술 · 공예 · 공연전시</a>
                    <a class="dropdown-item border-0 transition-link" href="class_cook.html">요리 · 베이킹</a>
                    <a class="dropdown-item border-0 transition-link" href="class_it.html">컴퓨터 · IT</a>
                    <a class="dropdown-item border-0 transition-link" href="class_language.html">언어 · 스피치</a>
                    <a class="dropdown-item border-0 transition-link" href="class_revenue.html">재태크 · 창업</a>
                  </div>
                </li>
                <li class="nav-item"><a class="nav-link" href="serviceCenter.html"> <i class="fas  mr-1 text-gray"></i>고객센터</a></li>
              </ul>
              <ul class="navbar-nav ml-auto">               
                <li class="nav-item"><a class="nav-link text-warning" href="likeClassList.html"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
                <li class="nav-item"><a class="nav-link" href="mypageMain.html"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1"></i></a></li>
                <li class="nav-item"><a class="nav-link" href="login.html">로그인</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </header>
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 mb-0">My Page</h1>
                <p class="text-muted small text-uppercase mb-2"></p>
              </div>
            </div>
          </div>
        </section>

        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-2 order-lg-1">
  
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="likeClassList.html">찜 목록</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="cheerClassList.html">응원한 클래스</a></strong></div>


              </div>
              <!-- SHOP LISTING-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row">
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                        <div class="badge text-white badge-danger">D - 2</div>
                        <div class="bottom_badge text-white badge-primary">현재 응원 수 : 1</div>
                        <div class="position-relative mb-3">
                      <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]마카롱 만들기 체험</a></h6>
                      <p class="small text-muted">30000원 </p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                        <div class="badge text-white badge-danger">D - 4</div>
                        <div class="bottom_badge text-white badge-primary">현재 응원 수 : 1</div>
                        <div class="position-relative mb-3">
                        <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/dance.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]아이돌 댄스 배우기</a></h6>
                      <p class="small text-muted">40000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                        <div class="badge text-white badge-danger">D - 8</div>
                        <div class="bottom_badge text-white badge-primary">현재 응원 수 : 3</div>
                        <div class="position-relative mb-3">
                        <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/baking.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]백종원의 베이킹 수업</a></h6>
                      <p class="small text-muted">30000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                        <div class="badge text-white badge-danger">D - 8</div>
                        <div class="bottom_badge text-white badge-primary">현재 응원 수 : 5</div>
                        <div class="position-relative mb-3">
                        <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron2.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[정규]마카롱 만들기 체험2</a></h6>
                      <p class="small text-muted">100000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <!-- <div class="badge text-white badge-danger">Sold</div> -->
                      <div class="badge text-white badge-danger">D - 8</div>
                      <div class="bottom_badge text-white badge-primary">현재 응원 수 : 2</div>
                      <div class="position-relative mb-3">
                        <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron3.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]마카롱 만들기 체험3</a></h6>
                      <p class="small text-muted">50000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="badge text-white badge-danger">D - 9</div>
                      <div class="bottom_badge text-white badge-primary">현재 응원 수 : 4</div>
                      <div class="position-relative mb-3">
                        <div class="badge text-white badge-"></div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron4.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]마카롱 만들기 체험4</a></h6>
                      <p class="small text-muted">50000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="badge text-white badge-danger">D - 9</div>
                      <div class="bottom_badge text-white badge-primary">현재 응원 수 : 5</div>
                      <div class="position-relative mb-3">
                        <div class="badge text-white badge-"></div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron5.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]마카롱 만들기 체험5</a></h6>
                      <p class="small text-muted">100000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                        <div class="badge text-white badge-danger">D - 9</div>
                        <div class="bottom_badge text-white badge-primary">현재 응원 수 : 2</div>
                        <div class="position-relative mb-3">
                          <div class="badge text-white badge-"></div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron6.jpg" alt="..."></a>
                          <div class="product-overlay">
                            <ul class="mb-0 list-inline">
                            </ul>
                          </div>
                        </div>
                        <p style="margin-bottom: 50px;"></p>
                        <h6> <a class="reset-anchor" href="detail.html">[정규]마카롱 만들기 체험6</a></h6>
                        <p class="small text-muted">500000원</p>
                      </div>
                   </div>
                  </div>
                <br><br>
                <!-- PAGINATION-->
                <nav aria-label="Page navigation example">
                  <ul class="pagination justify-content-center justify-content-lg-end">
                    <li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </section>
      </div>
      <footer class="bg-dark text-white">
        <div class="container py-4">
          <div class="row py-5">
            <div class="col-md-4 mb-3 mb-md-0">
              <h6 class="text-uppercase mb-3">Customer services</h6>
              <ul class="list-unstyled mb-0">
                <li><a class="footer-link" href="#">Help &amp; Contact Us</a></li>
                <li><a class="footer-link" href="#">Returns &amp; Refunds</a></li>
                <li><a class="footer-link" href="#">Online Stores</a></li>
                <li><a class="footer-link" href="#">Terms &amp; Conditions</a></li>
              </ul>
            </div>
            <div class="col-md-4 mb-3 mb-md-0">
              <h6 class="text-uppercase mb-3">Company</h6>
              <ul class="list-unstyled mb-0">
                <li><a class="footer-link" href="#">What We Do</a></li>
                <li><a class="footer-link" href="#">Available Services</a></li>
                <li><a class="footer-link" href="#">Latest Posts</a></li>
                <li><a class="footer-link" href="#">FAQs</a></li>
              </ul>
            </div>
            <div class="col-md-4">
              <h6 class="text-uppercase mb-3">Social media</h6>
              <ul class="list-unstyled mb-0">
                <li><a class="footer-link" href="#">Twitter</a></li>
                <li><a class="footer-link" href="#">Instagram</a></li>
                <li><a class="footer-link" href="#">Tumblr</a></li>
                <li><a class="footer-link" href="#">Pinterest</a></li>
              </ul>
            </div>
          </div>
          <div class="border-top pt-4" style="border-color: #1d1d1d !important">
            <div class="row">
              <div class="col-lg-6">
                <p class="small text-muted mb-0">&copy; 2020 All rights reserved.</p>
              </div>
              <div class="col-lg-6 text-lg-right">
                <p class="small text-muted mb-0">Template designed by <a class="text-white reset-anchor" href="https://bootstraptemple.com/p/bootstrap-ecommerce">Bootstrap Temple</a></p>
              </div>
            </div>
          </div>
        </div>
      </footer>
      <!-- JavaScript files-->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="vendor/lightbox2/js/lightbox.min.js"></script>
      <script src="vendor/nouislider/nouislider.min.js"></script>
      <script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
      <script src="vendor/owl.carousel2/owl.carousel.min.js"></script>
      <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
      <script src="js/front.js"></script>      
      <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
  </body>
</html>