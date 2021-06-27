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
        <h4>상세정보</h4>
      </div>

      <div class="col-sm-10">
        <!-- PRODUCT SLIDER-->
        <div class="row">
          <div class="col-sm-2 p-sm-0 order-2 order-sm-1 mt-2 mt-sm-0">
            <div class="owl-thumbs d-flex flex-row flex-sm-column" data-slider-id="1">
              <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="img/class-sport.png" alt="..."></div>
              <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="img/class-sport2.png" alt="..."></div>
              <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="img/class-sport3.png" alt="..."></div>
            </div>
          </div>
          <div class="col-sm-10 order-1 order-sm-2">
            <div class="owl-carousel product-slider" data-slider-id="1">
              <a class="d-block" href="img/class-sport.png" data-lightbox="product" title="Product item 1">
                <img class="img-fluid" src="img/class-sport.png" alt="...">
              </a>
              <a class="d-block" href="img/class-sport2.png" data-lightbox="product" title="Product item 2">
                <img class="img-fluid" src="img/class-sport2.png" alt="...">
              </a>
              <a class="d-block" href="img/class-sport3.png" data-lightbox="product" title="Product item 3">
                <img class="img-fluid" src="img/class-sport3.png" alt="...">
              </a>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-10">
        <ul class="list-inline mb-2">
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
          <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
        </ul>
        <div class="sm-6" style="margin-left: 100px;">
          <h1>리포머 하나면 가성비 홈짐 완성! 하루 30분 홈 리포머 필라테스</h1>
          <p class="text-muted lead">42,500 원</p>
          <ul class="list-unstyled small d-inline-block" style="font-size: 16px; display: flex !important; padding-top: 15px;">
            <div class="class-icon">
              <div><img src="img/calendar.png" width="20px">&nbsp;&nbsp;원데이클래스</div>
              <div style="padding-top:15px"><img src="img/pin.png" width="22px">&nbsp;&nbsp;00동</div>
            </div>
            <div class="class-icon" style="padding-inline: 30px;">
              <div><img src="img/clock.png" width="20px">&nbsp;&nbsp;2시간 소요</div>
              <div style="padding-top:15px"><img src="img/users.png" width="20px">&nbsp;&nbsp;최대 4명 가능</div>
            </div>
          </ul>
        </div>
      </div>

      <div class="col-sm-12" id="content-formatting" style="float: left; padding-top: 50px;">
        <div class="col-sm-10" style="text-align: center;">
          <ul class="list-unstyled small d-inline-block" style="width: 800px;">
            <div style="text-align: center;">
              <strong class="text-uppercase text-dark">일정</strong> : 원데이클래스</a></li>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <strong class="text-uppercase text-dark">수강</strong> : 바로 수강 가능</a></li>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <strong class="text-uppercase text-dark">지역</strong> : 00동</a></li>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <strong class="text-uppercase text-dark">인원</strong> : 최대 4명 가능</a></li>
            </div>
            <br><br><br>
            <!-- DETAILS TABS-->
            <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
            </ul>
  
            <!-- 상세보기 탭 -->
            <div class="tab-content mb-5" id="myTabContent">
              <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                <div class="p-4 p-lg-5 bg-white" style="text-align: center;">
                  <ul class="list-unstyled small d-inline-block" style="width: 900px;">
                    <div style="text-align:left">
                      <!-- <div style="width: 550px; height: 70px; margin-top: 20px;">
                      </div> -->
                      <pre style="font-size: 16px;">
                        야호 상세 페이지 인데요
                        쓸게 많다 아닙니까?? 그런데 이게 
                        무슨일일지 모르겠는데 
                        전혀 글이 자연스럽게 내려오지를 않
                        이거는 아닌거 같스빈다
                        여기디아아아아!
                        ------------------------------------------------------------------

                        클래스 신청하시면
                         제가 개인적으로 솜씨당 어플 내에 있는 1:1 채팅으로
                        맛 선택과 오시는 길을 자세히 설명 드립니다 !!

                        신청하신 분은

                        꼭!!! 1:1채팅 확인 부탁 드립니다 ^^
                        안녕하세요 마카롱 원데이 클래스를 진행합니다 ^ ^
                        곰미커피를 운영하며 8년동안
                        마카롱 집으로 인기를 얻은 비결!
                        취미 , 창업을 원하시는 분들도 상담 주세요!
                        현재 과정은 체험 과정으로 저렴한 가격으로
                        마카롱이 만들어지는 과정을 간단하게!
                        체험하는 교육입니다.
                        더 자세한 교육을 원하시는 분들은
                        전문가 클래스를 통해 교육을 신청해주세요 ^^
                        마카롱을 만들기 위해 대부분의 사람들이
                        고가의 오븐이 필요하다고 느끼지만
                        집에서 사용하는 저가오븐으로
                        고급스러운 마카롱을 만들수 있도록 도와드려요 ^^

                         **공지**
                         *마카롱 1가지를 배워 가실 수 있습니다.
                         체험 과정으로 레시피가 제공되지 않아요.
                         *맛은
                         순수우유, 딸기요거트, 블루베리, 누텔라 중
                         인당 택1 입니다.
                         *머랭치는 법을 시연하고 마카로나쥬 작업과
                         필링을 짜는 작업을 직접 하게 됩니다.
                         레시피가 제공이 안되고 저희가 만드는 부분이
                         꽤 있지만 체험이라는 부분을 꼭 기억해주세요 ^^
                         제대로 자세히 배우고 싶다면
                         전문가 클래스를 추천해드려요 ^^
                         #이런점이 좋아요.
                         마카롱에대해궁금했던분
                         집에 오븐이있으신분
                         선물하려고하시는분
                         #이런분들께 추천해요.
                         데이트 체험하시려는분
                         관련직업에관심있으신분
                     </pre>
                      <br><br>
                      <hr><br>
                      <!-- 완성작 사진 -->
                      <h3 style="padding-bottom: 20px;">※ 클래스 완성작</h3><br>
                      <div style="width: 550px; display: flex; margin: auto; text-align: center; justify-content: space-between; font-size: 16px;">
                        <div><img src="img/cat-img-3.jpg" alt="완성작" width="250px" height="250px"><br>우와 시계다.</div>
                        <div><img src="img/cat-img-4.5db5d5ec.jpg" alt="완성작2" width="250px" height="250px"><br>우와 헤드셋이다.</div>
                      </div>
                      <br><br><br><hr>
                      <!-- 커리큘럼 -->
                      <div>
                        <br><h3>※ 커리큘럼</h3><br><br>
                        <div style="display: flex;">
                          <img src="img/gradation10.png" width="25px" height="25px">
                          <div style="font-size: large;">1단계 : 스콘의 이해</div>
                        </div>
                        <div style="margin-left: 30px;">
                          <small>간단한 이론 설명 후 재료 소개를 진행합니다.</small>
                        </div>
                        <br><br>
                        <div style="display: flex;">
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
                      <br><br>
                      <hr>
                      <br>
                      <!-- 추가 제공사항 및 유의사항 -->
                      <div style="font-size: large;">
                        <h3>※ 추가 제공사항 및 유의사항</h3>
                        <br>
                          1. 주차는 불가하며 근처 공영 주차장 이용 부탁드립니다.<br>
                          2. 여러분들과 함께 하는 수업으로 시작을 꼭 지켜주세요.<br>
                          3. 10분전 입실 부탁드립니다.<br>
                          4. 최소인원 1인 최대 6인 입니다.<br>
                        <br><br>
                      </div>
                      <hr>
                      <br>
                      <h3>※ 편의사항</h3>
                      <br><br>
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
  <jsp:forward page="../commons/footer.jsp"/>
</body>
<html>