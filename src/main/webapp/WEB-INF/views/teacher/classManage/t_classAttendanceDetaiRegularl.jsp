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
    table {
      text-align: center;
    }
    
    body {
      font-size: 15px;
      font-family: "Libre Franlin";
    }

    pre {
      font-family: "Libre Franlin";
      font-size: 15px;
    }

    td {
      width: 100%;
    }

    th {
      width: 100%;
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
  <div class="page-holder">
    <!-- navbar-->
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
        <div class="col-lg-2 order-1 order-lg-1" style="float: left;">
          <h5 class="text-uppercase mb-4"><a class="nav-link" href="#" style="color: black; text-align: center;"><h2>홈</h1></a></h5>
          <div class="py-2 px-4 bg-light mb-3"><h5>클래스 관리</h5></div>
          <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
            <li class="mb-2"><a class="reset-anchor" href="t_classManagement.html">클래스 관리</a></li>
            <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
          </ul>
          <div class="py-2 px-4 bg-light mb-3"><h5>매출/정산</h5></div>
          <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
            <li class="mb-2"><a class="reset-anchor" href="t_balanceList.html">정산내역 관리</a></li>
            <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
          </ul>
          <div class="py-2 px-4 bg-light mb-3"><h5>문의하기</h5></div>
          <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal mb-5">
            <li class="mb-2"><a class="reset-anchor" href="t_Inquiry.html">관리자 문의</a></li>
            <li class="mb-2"><a class="reset-anchor" href="t_inquiryList.html">문의내역 관리</a></li>
            <li class="mb-2"><a class="reset-anchor" href="t_FAQ.html">자주 묻는 질문</a></li>
            <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
          </ul>
        </div>
      
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
    
    <!-- 클래스 정보 -->
    <div class="col-sm-10" id="content-formatting" style="float: left;">
      <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
        <div class="row" style="padding-bottom: 15px;">
          <div class="col-sm-9">
            <h5>클래스명 : 초코식빵 만들기 클래스</h5>
          </div>
          <div class="col-sm-2`" style="float: right;">
            <p><b>수업일 : </b></p>
          </div>
          <div class="col-sm-1" style="float: right;">
            <input type="date"></h6>
          </div>
        </div>
        <div class="col-sm-12">
          <pre><b>클래스 기간  :  </b>2020년 5월 20일 ~ 2020년 6월 30일</pre>
        </div>  
        <div class="col-sm-12">
          <pre><b>강의 횟수  :  </b>7회 / 총 10회</pre>
        </div>        
        <div class="col-sm-12">
          <pre><b>수강 인원  :  </b>8명 / 최대 10명</pre>
        </div>
      </div>

      <!-- 출석표1 -->
      <div class="col-sm-12" id="content-formatting" style="float: left; height: 600px; overflow: auto;">
        <table class="table table-hover" style="text-align: center;">
          <thead>
            <tr>
              <th rowspan="2" nowrap style="vertical-align: middle;">번호</th>
              <th rowspan="2" nowrap style="vertical-align: middle;">이름</th>
              <th nowrap>1회차</th>
              <th nowrap>2회차</th>
              <th nowrap>3회차</th>
              <th nowrap>4회차</th>
              <th nowrap>5회차</th>
              <th nowrap>6회차</th>
              <th nowrap>7회차</th>
              <th nowrap>8회차</th>
              <th nowrap>9회차</th>
              <th nowrap>10회차</th>
              <th nowrap>11회차</th>
              <th nowrap>12회차</th>
              <th nowrap>13회차</th>
              <th nowrap>14회차</th>
            </tr>
            <tr>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td nowrap>1</td>
              <td nowrap>조준영</td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
              <td ><input type="checkbox"></td>
            </tr>
            <tr>
              <td>2</td>
              <td>최영주</td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
            <tr>
              <td>3</td>
              <td>조준영</td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
            <tr>
              <td>4</td>
              <td>조준영</td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
            <tr>
              <td>5</td>
              <td>김주완</td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
            <tr>
              <td>6</td>
              <td>김현빈</td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
            <tr>
              <td>7</td>
              <td>민연준</td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
            <tr>
              <td>8</td>
              <td>민연준</td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
            <tr>
              <td>9</td>
              <td>민연준</td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
            <tr>
              <td>10</td>
              <td>민연준</td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
            <tr>
              <td>11</td>
              <td>김준현</td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <td><input type="checkbox"></td>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
              <th><input type="checkbox"></th>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="col-sm-12" id="content-formatting" style="float: left;">
        <div class='col-sm0-2' style="float:right; text-align: right; margin-top: 30px;">
          <p><b>총 인원 : 3명</b></p>
        </div>
        <div class='col-sm-3' style="margin:auto; padding-top: 70px; padding-bottom: 50px;">
          <button type="submit" class="btn btn-primary">수업시작</button> <!-- insert되고 목록으로 돌아가기 -->
        </div>
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