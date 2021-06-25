<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>우리 동네 클래스 | 회원가입</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Lightbox-->
    <link rel="stylesheet" href="vendor/lightbox2/css/lightbox.min.css">
    <!-- Range slider-->
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">
    <!-- Bootstrap select-->
    <link rel="stylesheet" href="vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- Owl Carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel2/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor/owl.carousel2/assets/owl.theme.default.css">
    <!-- Google fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <style>
      .sign-btn{
        display: flex;
        margin: auto;
        justify-content: space-around;
        width: 300px;
      }

      i{
        font-family: "Font Awesome 5 Free" !important;
      }

    *{font-family:'Cafe24SsurroundAir' !important;}
    </style>
  </head>
  <body>
    <!-- header -->
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
                <li class="nav-item"><a class="nav-link" href="likeClassList.html"> <i class="far fa-heart mr-1"></i><small class="text-gray"></small></a></li>
                <li class="nav-item"><a class="nav-link" href="mypageMain.html"> <i class="fas fa-user-alt mr-1 text-gray hover-btn"></i></a></li>
                <li class="nav-item"><a class="nav-link" href="login.html">로그인</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </header>
      <br><br>
      <!-- body -->
      <div class="container py-5">
        <div class="col-lg-10" style="margin: auto;">
          <div class="card mb-4" id="forms">
            <div class="card-body"><br>
              <h1 class="mb-5" style="text-align: center; padding-bottom: 20px; font-size: 1.9rem;">Sign Up</h1>
              <form action="index.html">
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorId">아이디</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorId" type="text" placeholder="아이디를 입력하세요.">
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorPwd">비밀번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPwd" type="password" placeholder="비밀번호를 입력하세요.">
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorPwd2">비밀번호 확인</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPwd2" type="password" placeholder="비밀번호를 다시 입력해주세요.">
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorName">이름</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorName" type="text" placeholder="이름을 입력해주세요.">
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorName">생년월일</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorName" type="date" placeholder="이름을 입력해주세요.">
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorPhone">휴대폰 번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPhone" type="text" placeholder="특수문자(-) 없이 11자리를 입력해주세요.">
                  </div>
                  <div class="col-sm-2">
                    <button style="margin-left: -15px;" class="btn btn-sm btn-primary" type="button" onclick="request_verNo()">인증번호 요청</button>
                  </div>
                </div><br>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="verNo">인증번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="verNo" type="text" placeholder="7인증번호를 입력하세요.">
                  </div>
                </div><br>
                <div class="form-group row">                                   
                  <div class="col-sm-2">회원 약관</div>
                  <div class="col-sm-10">
                    <div class="custom-control custom-checkbox">
                      <input style="padding-top: 5px;" class="custom-control-input" id="serviceTerms" type="checkbox">
                      <label class="custom-control-label" for="serviceTerms"><a href="#">[필수] 서비스 이용약관</a></label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="custom-control-input" id="privacyTerms" type="checkbox">
                      <label class="custom-control-label" for="privacyTerms"><a href="#">[필수] 개인정보 처리약관</a></label>
                    </div>
                  </div>
                </div>
                <br><br>
                <div class="sign-btn">
                  <button class="btn btn-primary" type="submit">회원가입</button>
                  <button class="btn btn-primary" type="submit" onclick="location.href='index.html'">취소</button>
                </div>
              </form>
                <br><br>
            </div>
          </div>
        </div>
      </div>
      <br><br><br><br>
      <!-- footer -->
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
      <script>
      </script>
      <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
  </body>
</html>