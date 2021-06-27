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
     html {

		position: relative;
		margin: 0;
		background: white;
	}
    table {
      text-align: center;
    }

    body {
      font-size: 15px;
    }

    a {
      color: black;
    }
    .btn {
      border-radius: 5px !important;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
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
        <h4>고객문의</h4>
      </div>
      <form>
        <div class='col-sm-10' style="margin-left: 10px;">
          <div class="form-group">
            <div class="row">
              <div class="col-sm-3" style="margin-left: 10px;">
                <h5>답변 상태 검색</h5>
              </div>
              <div class='col-sm-3'>
                <select class="form-control" name="답변 상태" id="reply">
                	<option value="notyet">답변 대기중</option>
                	<option value="completed">답변 완료</option>
                </select>
              </div>
              <div class='col-sm-3'>
                <button type="submit" class="btn btn-primary">검색</button>   
              </div>
            </div>
            </div>
        </div>
      </form>

      <div class="col-sm-12" id="content-formatting" style="float: left; padding-top: 50px;">
        <table class="table table-hover" style="text-align: center;">
          <thead>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>답변</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td><a href="t_classInquiryDetail.html">클래스 재료는 준비 안해도 되나요?</a></td>
              <td>유승제</td>
              <td>2021-06-20</td>
              <td>답변 중</td>
            </tr>
            <tr>
              <td>2</td>
              <td><a href="t_classInquiryDetail.html">둘이서 같이 신청해도 되나요?</a></td>
              <td>김인식</td>
              <td>2021-06-02</td>
              <td>답변 중</td>
            </tr>
            <tr>
              <td>3</td>
              <td><a href="t_classInquiryReply.html">클래스 리뷰 수정</a></td>
              <td>김인식</td>
              <td>2021-06-01</td>
              <td>답변 완료</td>
            </tr>
            <tr>
              <td>4</td>
              <td><a href="t_classInquiryReply.html">환불하고 싶어요</a></td>
              <td>하동운</td>
              <td>2021-05-02</td>
              <td>답변 완료</td>
            </tr>
            <tr>
              <td>5</td>
              <td><a href="t_classInquiryReply.html">할인 쿠폰은 어디있나요</a></td>
              <td>조준형</td>
              <td>2021-04-02</td>
              <td>답변 완료</td>
            </tr>
          </tbody>
        </table><br><br>
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
  </div>
  
  <jsp:forward page="../commons/footer.jsp"/>
</body>
<html>