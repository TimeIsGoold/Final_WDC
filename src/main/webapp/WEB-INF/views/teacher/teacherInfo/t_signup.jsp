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
    <!-- header -->
    <div class="page-holder">
      <header class="header bg-white" style="padding-top: 80px;">
        <div class="container px-0 px-lg-3">
          <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="index.html"><span class="font-weight-bold text-uppercase text-dark"><h1>우리동네 클래스</h1></span></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                </li>
                <li class="nav-item">
                </li>
                <li class="nav-item"><a class="nav-link" href="t_main.html"><h3>강사 페이지</h3></a>
                </li>
                <li class="nav-item dropdown">
                </li>
              </ul>
              <ul class="navbar-nav ml-auto">               
                <li class="nav-item"></li>
                <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>회원가입</a></li>
                <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>로그인</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </header>

      <!-- body -->
      <div class="container py-5">
        <div class="col-lg-10" style="margin: auto;">
          <div class="card mb-4" id="forms">
            <div class="card-body"><br>
              <h1 class="mb-5" style="text-align: center; padding-bottom: 20px;">회원가입</h1>
              <form>
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
                  <label class="col-sm-2 col-form-label" for="tutorPwd2">비밀번호 재입력</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPwd2" type="password" placeholder="비밀번호를 다시 입력해주세요.">
                  </div>
                </div><br>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorType">회원 형태</label>
                  <div class="col-sm-8">
                    <div class="custom-control custom-radio" id="tutorType">
                      <input class="custom-control-input" id="entrepreneur" type="radio" name="customRadio">
                      <label class="custom-control-label" for="entrepreneur">개인/법인 사업자</label>
                    </div>
                    <div class="custom-control custom-radio" id="tutorType">
                      <input class="custom-control-input" id="freelancer" type="radio" name="customRadio">
                      <label class="custom-control-label" for="freelancer">프리랜서(개인)</label>
                    </div>
                  </div>
                </div><br>
                <!--사업자 등록번호와 주민등록번호가 같은 input으로 다른 column에 들어갈 수 없을 것 같으니 별도로 생성 -->
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="entrepreneurNo">사업자 등록번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="entrepreneurNo" type="text" placeholder="사업자등록번호 10자리를 특수문자(-) 없이 입력하세요.">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="RegistrationNo">주민등록번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="RegistrationNo" type="text" placeholder="주민등록번호 13자리를 특수문자(-) 없이 입력하세요.">
                  </div>
                </div><br>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorName">이름</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorName" type="text" placeholder="이름을 입력해주세요.">
                  </div>
                </div><br>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="tutorPhone">휴대폰 번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="tutorPhone" type="text" placeholder="특수문자(-) 없이 11자리를 입력해주세요.">
                  </div>
                  <div class="col-sm-2">
                    <button class="btn btn-sm btn-primary" type="button" onclick="request_verNo()">인증번호 요청</button>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="verNo">인증번호</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="verNo" type="text" placeholder="7인증번호를 입력하세요.">
                  </div>
                </div><br>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="verNo">은행명</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="bank" type="text" placeholder="은행 이름을 입력해주세요. (예: KB국민은행)">
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="verNo">예금주명</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="bank" type="text" placeholder="계좌에 등록된 예금주명을 입력해주세요.">
                  </div>
                </div>
                
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label" for="verNo">계좌정보 입력</label>
                  <div class="col-sm-8">
                    <input class="form-control" id="verNo" type="text" placeholder="특수문자(-) 없이 력해주세요.">
                  </div>
                </div><br>

                <div class="form-group row">                                   
                  <div class="col-sm-2">회원 약관</div>
                  <div class="col-sm-10">
                    <div class="custom-control custom-checkbox">
                      <input class="custom-control-input" id="serviceTerms" type="checkbox">
                      <label class="custom-control-label" for="serviceTerms"><a href="#">[필수] 서비스 이용약관</a></label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="custom-control-input" id="privacyTerms" type="checkbox">
                      <label class="custom-control-label" for="privacyTerms"><a href="#">[필수] 개인정보 처리약관</a></label>
                    </div>
                  </div>
                </div>

                <br><br><br>
                <div class="form-group row">
                  <div class="col-sm-3" style="margin: auto;">
                    <button class="btn btn-lg btn-primary" type="button" onclick="location.href='t_login.html'">회원가입</button>
                  </div>
                </div><br>
              </form>
            </div>
          </div>
        </div>
      </div>
      
      <!-- footer -->
      <footer class="bg-dark text-white">
        <div class="container py-4">
          <div class="row py-5">
            <div class="col-md-1 mb-3 mb-md-0">
              <h5 class="text-uppercase mb-3"><p> </p></h5>
            </div>
            <div class="col-md-2 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
                공지사항</a></h3>
            </div>
            <div class="col-md-2 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
                서비스<br>이용약관</a></h3>
            </div>
            <div class="col-md-2 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
                개인정보<br>처리약관</a></h3>
            </div>
            <div class="col-md-2 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
                자주 묻는<br>질문</a></h3>
            </div>
            <div class="col-md-2 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
                문의하기</a></h3>
            </div>
            <div class="col-md-1 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><p> </p></h3>
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
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>
      <script>

      </script>
      <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
  </body>
</html>