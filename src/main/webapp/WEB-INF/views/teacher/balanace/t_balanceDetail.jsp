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
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->\
  <style>

    body {
      font-size: 15px;
    }

    table {
      font-size: 13px;
    }
    
    small {
      text-align: right;
      color: gray;
      float: right;
    }
    .btn {
      border-radius: 5px;
      background-color: #fef0ae;
      border-color: #fef0ae;
    }
    
    .btn-primary:hover {
      background-color: #fef0ae;
      border-color: #fef0ae;
    }

  </style>



</head>
<body>
  <div class="page-holder" style="margin: 50px;">
    <header class="header bg-white" style="padding-top: 80px; padding-bottom: 30px;">
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
    
    <div class="container">

      <!-- sidebar -->
      <div class="col-lg-2 order-1 order-lg-1" style="float: left; height: 100%;">
        <h5 class="text-uppercase mb-4"><a class="nav-link" href="#" style="color: black;"><h2>홈</h1></a></h5>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">클래스 관리</strong>
        </div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="#">클래스 관리</a></li>
          <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">매출/정산</strong>
        </div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="#">정산내역 관리</a></li>
          <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">문의하기</strong>
        </div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal mb-5">
          <li class="mb-2"><a class="reset-anchor" href="#">관리자 문의</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">문의내역 관리</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">자주 묻는 질문</a></li>
          <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
      </div> 
      
      <!-- 정산 상세화면 -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left;">
        <form>
          <div class="col-sm-12" id="content-formatting" style="float: left;">
            <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
              <h3>정산내역 관리</h3>
            </div>
            <div class="row" style="margin-left: 40px;">
              <div class='col-sm-12'><p>정산기간 검색</p>
              </div><br>
              <div class='col-sm-3'>
                <div class="form-group">
                  <input type="date" id="startDate" class="form-control">
                </div>
              </div>
              <div class='col-sm-3'>
                <div class="form-group">
                  <input type="date" id="EndDate" class="form-control">
                </div>
              </div>
              <div class='col-sm-6'>
                <div class="form-group">
                  <button type="submit" class="btn btn-primary">검색</button>
                  <button type="reset" class="btn btn-primary">초기화</button>                  
                </div>
              </div>
            </div>
            
            <div class="col-sm-13" id="content-formatting" style="float: left; padding-top: 50px;">
              <table class="table table-hover" style="text-align: center;">
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>클래스명</th>
                    <th>구매일</th>
                    <th>구매자</th>
                    <th>작가 매출</th>
                    <th>결제 금액</th>
                    <th>할인 금액</th>
                    <th>취소 금액</th>
                    <th>취소 수수료</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>초보 피아노 클..</td>
                    <td>2021-05-25</td>
                    <td>김소라</td>
                    <td>0원</td>
                    <td>60,000원</td>
                    <td>0원</td>
                    <td>60,000원</td>
                    <td>0원</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>드럼 클래스</td>
                    <td>2021-05-30</td>
                    <td>김현빈</td>
                    <td>35,000원</td>
                    <td>50,000원</td>
                    <td>2,500원</td>
                    <td>0원</td>
                    <td>5,000원</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>드럼 클래스</td>
                    <td>2021-05-30</td>
                    <td>강민</td>
                    <td>35,000원</td>
                    <td>50,000원</td>
                    <td>2,500원</td>
                    <td>0원</td>
                    <td>5,000원</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>드럼 클래스</td>
                    <td>2021-05-30</td>
                    <td>김현빈</td>
                    <td>35,000원</td>
                    <td>50,000원</td>
                    <td>2,500원</td>
                    <td>0원</td>
                    <td>5,000원</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>[서울대입구] 컵케인...</td>
                    <td>2021-05-30</td>
                    <td>노민규</td>
                    <td>0원</td>
                    <td>60,000원</td>
                    <td>0원</td>
                    <td>60,000원</td>
                    <td>0원</td>
                  </tr>
                </tbody>
              </table>
              <div style="padding-bottom: 50px;">
                <small>※ 결제 금액에서 상기 항목과는 별개로 우동클 수수료 10%가 별도로 차감됩니다.</small>
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
        </form>
      </div>
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
  </div>
</body>
<html>