<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
      font-size: 13px;
    }
    
    body {
      font-size: 15px;
    }
    .btn {
      border-radius: 5px !important;
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
        
     <%-- <%@ include file="../commons/sidebar.jsp" %> --%>
          <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px;">
        
        <!-- 상단 메뉴바 -->
        <div class="col-sm-3 nowStep" id="content-formatting" style="float: left; margin: auto;">
          <a href="#" style="font-size: 15; color: black" ><b>상세정보</b></a>
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classReview.html" style="font-size: 15; color: black"><b>후기</b></a>          
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classInquiry.html" style="font-size: 15; color: black"><b>고객문의</b></a>
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="${pageContext.servletContext.contextPath }/teacher/studentManagement?classType=${classDetail.clsType}&clsNo=${ classDetail.clsNo }" style="font-size: 15; color: black"><b>수강생 관리</b></a>
        </div>            
      </div>
    <!-- 문의 게시판 -->
    <div class="col-sm-10" id="content-formatting" style="float: left;">
      <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
        <h4>상세정보</h4>
      </div>

      <div class="col-sm-10">
        <!-- PRODUCT SLIDER-->
        <div class="row">
          <div class="col-sm-2 p-sm-0 order-2 order-sm-1 mt-2 mt-sm-0">
            <div class="owl-thumbs d-flex flex-row flex-sm-column" data-slider-id="1">
            <c:forEach var="classPic" items="${ titlePicture }">
              <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="${pageContext.servletContext.contextPath }/${ classPic.titlePic}" alt="..."></div>
            </c:forEach>
            </div>
          </div>
          <div class="col-sm-10 order-1 order-sm-2">
            <div class="owl-carousel product-slider" data-slider-id="1">
            
            
            
            <c:forEach var="classPicSlide" items="${ titlePicture }" varStatus="status">
              <a class="d-block" href="${pageContext.servletContext.contextPath }/${ classPicSlide.titlePic}" data-lightbox="product" title="Product item ${status.count }">
                <img class="img-fluid" src="${pageContext.servletContext.contextPath }/${ classPicSlide.titlePic}" alt="...">
              </a>
            </c:forEach>
              <%-- <a class="d-block" href="img/class-sport2.png" data-lightbox="product" title="Product item 2">
                <img class="img-fluid" src="${pageContext.servletContext.contextPath }/resources/teacher/img/class-sport2.png" alt="...">
              </a>
              <a class="d-block" href="img/class-sport3.png" data-lightbox="product" title="Product item 3">
                <img class="img-fluid" src="${pageContext.servletContext.contextPath }/resources/teacher/img/class-sport3.png" alt="...">
              </a> --%>
            </div>
          </div>
        </div>
      </div>
	<hr>
      <div class="col-lg-10" >
        <ul class="list-inline mb-2">
<!--           <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li> -->
        </ul>
        <br>
       <br>
        <div class="sm-6" style="margin-left: 100px;">
          <h1>${ classDetail.title }</h1>
          <br>
          <p class="text-muted lead">클래스 정가 ${ classDetail.price } 원</p>
          <ul class="list-unstyled small d-inline-block" style="font-size: 16px; display: flex !important; padding-top: 15px;">
            <div class="class-icon">
              <c:choose>
                  <c:when test="${ classDetail.clsType eq 'O' }">
                      <div><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/calendar.png" width="20px">&nbsp;&nbsp;원데이클래스</div>
                  </c:when>
                  <c:otherwise>
                      <div><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/calendar.png" width="20px">&nbsp;&nbsp;정규클래스</div>
                  </c:otherwise>
              
              </c:choose>
              <%-- <div style="padding-top:15px"><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/pin.png" width="22px">&nbsp;&nbsp;00동</div> --%>
            </div>
            <div class="class-icon" style="padding-inline: 30px;">
              <div><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/clock.png" width="20px">&nbsp;&nbsp;소요시간  ${ classDetail.time }</div>
              <%-- <div style="padding-top:15px"><img src="${pageContext.servletContext.contextPath }/resources/teacher/img/users.png" width="20px">&nbsp;&nbsp;최대 4명 가능</div> --%>
            </div>
          </ul>
        </div>
      </div>

      <div class="col-sm-12" id="content-formatting" style="float: left; padding-top: 50px;">
        <div class="col-sm-10" style="text-align: center;">
          <ul class="list-unstyled small d-inline-block" style="width: 800px;">
<!--             <div style="text-align: center;">
              <strong class="text-uppercase text-dark">일정</strong> : 원데이클래스</a></li>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <strong class="text-uppercase text-dark">수강</strong> : 바로 수강 가능</a></li>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <strong class="text-uppercase text-dark">지역</strong> : 00동</a></li>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <strong class="text-uppercase text-dark">인원</strong> : 최대 4명 가능</a></li>
            </div> -->
            
            <!-- DETAILS TABS-->
            <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
            </ul>
            <hr>
  
            <!-- 상세보기 탭 -->
            <div class="tab-content mb-5" id="myTabContent">
              <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                <div class="p-4 p-lg-5 bg-white" style="text-align: center;">
                  <ul class="list-unstyled small d-inline-block" style="width: 900px;">
                    <div style="text-align:left">
                    <h4> <b style="font-size: 13px; ">●</b> 간단소개글</h4>
                    <pre style="font-size: 16px;">${ classDetail.simpleIntro }</pre>
                    
                    <hr style="margin: 15px 0px 15px 0px">
                    <h4> <b style="font-size: 13px; ">●</b> 클래스소개</h4>
                      <!-- <div style="width: 550px; height: 70px; margin-top: 20px;">
                      </div> -->
                      
                      <pre style="font-size: 16px;">
${ classDetail.intro }
                     </pre>
                      <br><br>
                      <hr><br>
                      <!-- 완성작 사진 -->
                      <h4> <b style="font-size: 13px; ">●</b> 클래스 완성작</h4><br>
                      <div style="width: 550px; display: flex;  text-align: center; justify-content: space-between; font-size: 16px;">
                      <c:forEach var="piece" items="${ classPiece }">
                        <div><img src="${pageContext.servletContext.contextPath }/resources/upload/${ piece.piecePic}" alt="완성작" width="250px" height="250px"><br>${ piece.pieceTitle }</div>
                      
                      
                      </c:forEach>
                      </div>
                      <br><br><br><hr>
                      <!-- 커리큘럼 -->
                      <div>
                        <br><h4><b style="font-size: 13px; ">●</b> 커리큘럼</h4><br><br>
                        <c:forEach var="curriculum" items="${ curriculum }">
                        <div style="display: flex;">
                          <img src="${pageContext.servletContext.contextPath }/resources/teacher/img/gradation10.png" width="25px" height="25px">
                          <div style="font-size: large;">${ curriculum.curriStep } 단계 : ${ curriculum.curriTitle }</div>
                        </div>
                        <div style="margin-left: 30px;">
                          <p style="font-size: 20px; font-weight: lighter;">${ curriculum.curriContent }.</p>
                        </div>
                        <br><br>
                        </c:forEach>
<!--                         <div style="display: flex;">
                          <img src="img/gradation10.png" width="25px" height="25px">
                          <div style="font-size: large;">2단계 : 계량하기</div>
                        </div>
                        <div style="margin-left: 30px;">
                          <small>저울 사용법 등을 소개하고 레시피 대로 직접 계량합니다.</small>
                        </div>
                        <br><br>
                        <div style="display: flex;">
                          <img src="img/gradation10.png" width="25px" height="25px">
                          <div style="font-size: large;">3단계 : 반죽 작업</div>
                        </div>
                        <div style="margin-left: 30px;">
                          <small>완성된 반죽합니다.</small>
                        </div>
                        <br><br>
                        <div style="display: flex;">
                          <img src="img/gradation10.png" width="25px" height="25px">
                          <div style="font-size: large;">4단계 : 반죽 팬닝</div>
                        </div>
                        <div style="margin-left: 30px;">
                          <small>완성된 반죽을 컷팅 하고 모양을 만듭니다.</small>
                        </div>
                        <br><br>
                        <div style="display: flex;">
                          <img src="img/gradation10.png" width="25px" height="25px">
                          <div style="font-size: large;">5단계 : 굽기</div>
                        </div>
                        <div style="margin-left: 30px;">
                          <small>계란물을 발라 바로 굽습니다.</small>
                        </div>
                        <br><br>
                        <div style="display: flex;">
                          <img src="img/gradation10.png" width="25px" height="25px">
                          <div style="font-size: large;">6단계 : 포장</div>
                        </div>
                        <div style="margin-left: 30px;">
                          <small>식힌 후 시식 후 포장합니다.</small>
                        </div>
                      </div>
                      <br><br> -->
                      <hr>
                      <br>
                      <!-- 추가 제공사항 및 유의사항 -->
                      <div style="font-size: large;">
                        <h3>※ 추가 제공사항 및 유의사항</h3>
                        <br>
                        <c:forEach items="${classDetail.addSup}" var="item" varStatus="status">
                          ${ status.count }. ${ item }<br>
                        </c:forEach>
                          <!-- 1. 주차는 불가하며 근처 공영 주차장 이용 부탁드립니다.<br>
                          2. 여러분들과 함께 하는 수업으로 시작을 꼭 지켜주세요.<br>
                          3. 10분전 입실 부탁드립니다.<br>
                          4. 최소인원 1인 최대 6인 입니다.<br> -->
                        <br><br>
                      </div>
                      <hr>
                      <br>
                      <h3>※ 편의사항</h3>
                      <br><br>
                      ${ classDetail.addInfo }
                      <div style="display: flex; width: 550px;">
                        <img src="img/stayhome (1).png" alt="home" width="23px" height="23px;">
                        <div style="font-size: large;">&nbsp;&nbsp;&nbsp;아늑한 공방에서 수업합니다.</div>
                      </div>
                      <br>
                      <div style="display: flex; width: 550px;">
                        <img src="img/wifi.png" alt="home" width="23px" height="23px">
                        <div style="font-size: large;">&nbsp;&nbsp;&nbsp;와이파이 가능합니다.</div>
                      </div>
                      <br>
                      <div style="display: flex; width: 550px;">
                        <img src="img/no-coffee.png" alt="home" width="23px" height="23px">
                        <div style="font-size: large;">&nbsp;&nbsp;&nbsp;커피/음료는 별도 구매하셔야합니다.</div>
                      </div>
                      <!-- 지도 보기 -->
                      <div style="display: block; text-align: left;">
                        <br><br>
                        <img src="img/map.png">
                      </div>
                    </div>
                  </ul>
                </div>
              </div>

            </div>
          </ul>
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
  </div>
  <jsp:include page="../commons/footer.jsp"/>
</body>
</html>