<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

    <style>
      .text-small {
        font-size: 15px !important;
        width: 860px;
      }
      small, .small {
        font-size: 15px;
      }
      .nav-tabs .nav-link {
        font-size: 1rem;
      }
      .ml-3{
        padding-top: 5px;
      }
      .rounded-circle {
        border-radius: 50%!important;
        margin-top: 8px;
        width: 50px;
      }
      .class-category{
        font-size: 16px;
        font-weight: 600;
        color: black !important;
      }

      .datetimepicker{
        width: 200px;
        height: 40px;
        text-align: center;
        border:0 solid black; 
        border-bottom: 1px solid black !important;
      }

      small{
        font-size: 16px !important;
      }

      h3{
        font-size: 22px !important;
      }

      input:focus {outline:2px solid #d50000;}
      input:focus {outline:none;}

      .answer{
        background-color: #f1f5f7;
        padding: 0px;
        padding-left: 40px;
        padding-top: 15px;
        margin-top: -5px;
        width: 1020px !important;
        border-radius: 25px;
      }

      /* The Close Button */
      .close {
        position: absolute;
        top: 15px;
        right: 35px;
        color: #f1f1f1;
        font-size: 40px;
        font-weight: bold;
        transition: 0.3s;
      }

      .close:hover,
      .close:focus {
        color: #bbb;
        text-decoration: none;
        cursor: pointer;
      }

      #myImg {
        cursor: pointer;
        transition: 0.3s;
        padding: 5px;
        width: 90px;
        height: 90px;
        border-radius: 20px;
      }

      #myImg:hover {opacity: 0.7;}

      /* The Modal (background) */
      .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100% !important; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
      }

      /* Modal Content (image) */
      .modal-content {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
      }

      /* Caption of Modal Image */
      #caption {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
        text-align: center;
        color: #ccc;
        padding: 10px 0;
        height: 150px;
      }

      /* Add Animation */
      .modal-content, #caption {  
        -webkit-animation-name: zoom;
        -webkit-animation-duration: 0.6s;
        animation-name: zoom;
        animation-duration: 0.6s;
      }

      @-webkit-keyframes zoom {
        from {-webkit-transform:scale(0)} 
        to {-webkit-transform:scale(1)}
      }

      @keyframes zoom {
        from {transform:scale(0)} 
        to {transform:scale(1)}
      }

      .media{
        width: 1000px;
      }

      .btn{
        text-decoration:none !important;
        width: 90px;
        height: 35px;
      }

      .p-0{
        padding: 0!important;
        padding-bottom: 10px !important;
        margin-left: 60px;
        margin-top: -4px;
      }

      .m-0 {
        margin: auto !important;
      }

      i{
        font-family: "Font Awesome 5 Free" !important;
      }

      *{font-family:'Cafe24SsurroundAir' !important;}
      
      .feedbackArea{

	    width: 500px; 
	    height: 100px;
	    resize: none;
	    margin-bottom: 50px;
	    margin-left: 110px;
	    display: flex;
	}
    </style>
  </head>
  <body>
    <div class="page-holder bg-light">
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
      <section class="py-5">
        <div class="container">
          <div class="row mb-5">
            <div class="col-lg-6">
              <!-- PRODUCT SLIDER-->
              <div class="row m-sm-0">
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

            <!-- PRODUCT DETAILS-->
            <div class="col-lg-6">
              <ul class="list-inline mb-2">
                <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
              </ul>
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
                <div class="class-icon" style="padding-inline: 30px;">
                  <div><li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark"><img src="img/heart.png" width="18px">&nbsp;&nbsp;찜</a></li></div>
                  <div><li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark"><img src="img/share.png" width="18px">&nbsp;&nbsp;공유</a></li></div>
                </div>
              </ul>
            </div>
          </div>
          <div style="background-color: white; width: 1110px; height: 90px; border-radius: 50px; text-align: center; padding-top: 22px;">
            <!-- 날짜, 시간 선택 -->
            <!-- <div style="font-size: 20px; font-weight: 600;">클래스 일정을 선택해 주세요.</div><br> -->
            <img src="img/date.png" style="width: 30px;">&nbsp;&nbsp;<input class="datetimepicker" id="datetimepicker" type="text">&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="img/group.png" style="width: 30px;">&nbsp;&nbsp;<input type="number" class="datetimepicker">&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="class_payment.html" style="height: 40px; width: 170px; font-size: 16px;">신청하기</a></li>
          </div>
          <script>
            let timeValues = ['12:00', '13:00', '15:00','15:30'];
            jQuery('#datetimepicker').datetimepicker({
              datepicker:true,
              allowTimes: timeValues,
              onChangeDateTime:function(dp,$input){
              console.log($input.val());
              }
            });
          </script>
          
          <br><br><br>
          <!-- DETAILS TABS-->
          <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
            <li class="nav-item"><a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">상세보기</a></li>
            <li class="nav-item"><a class="nav-link" id="reviews-tab" data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">리뷰</a></li>
            <li class="nav-item"><a class="nav-link" id="reviews-tab" data-toggle="tab" href="#questions" role="tab" aria-controls="reviews" aria-selected="false">문의</a></li>
          </ul>

          <!-- 상세보기 탭 -->
          <div class="tab-content mb-5" id="myTabContent">
            <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
              <div class="p-4 p-lg-5 bg-white" style="text-align: center;">
                <ul class="list-unstyled small d-inline-block" style="width: 900px;">
                  <div style="text-align:left">
                    <div style="width: 550px; height: 70px; margin-top: 20px;">
                      <h3>※ 상세 정보</h3>
                    </div>
                    <pre style="font-size: 16px;">
                      야호 상세 페이지 인데요
                      쓸게 많다 아닙니까?? 그런데 이게 
                      무슨일일지 모르겠는데 
                      전혀 글이 자연스럽게 내려오지를 않
                      네요? br을  넣어야 하는걸까요??
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
                      <div><img src="../User_View/img/cat-img-3.jpg" alt="완성작" width="250px" height="250px"><br>우와 시계다.</div>
                      <div><img src="../User_View/img/cat-img-4.5db5d5ec.jpg" alt="완성작2" width="250px" height="250px"><br>우와 헤드셋이다.</div>
                    </div>
                    <br><br><br><hr>
                    <!-- 커리큘럼 -->
                    <div>
                      <br><h3>※ 커리큘럼</h3><br><br>
                      <div style="display: flex;">
                        <img src="../User_View/img/gradation10.png" width="25px" height="25px">
                        <div style="font-size: large;">1단계 : 스콘의 이해</div>
                      </div>
                      <div style="margin-left: 30px;">
                        <small>간단한 이론 설명 후 재료 소개를 진행합니다.</small>
                      </div>
                      <br><br>
                      <div style="display: flex;">
                        <img src="../User_View/img/gradation10.png" width="25px" height="25px">
                        <div style="font-size: large;">2단계 : 계량하기</div>
                      </div>
                      <div style="margin-left: 30px;">
                        <small>저울 사용법 등을 소개하고 레시피 대로 직접 계량합니다.</small>
                      </div>
                      <br><br>
                      <div style="display: flex;">
                        <img src="../User_View/img/gradation10.png" width="25px" height="25px">
                        <div style="font-size: large;">3단계 : 반죽 작업</div>
                      </div>
                      <div style="margin-left: 30px;">
                        <small>완성된 반죽합니다.</small>
                      </div>
                      <br><br>
                      <div style="display: flex;">
                        <img src="../User_View/img/gradation10.png" width="25px" height="25px">
                        <div style="font-size: large;">4단계 : 반죽 팬닝</div>
                      </div>
                      <div style="margin-left: 30px;">
                        <small>완성된 반죽을 컷팅 하고 모양을 만듭니다.</small>
                      </div>
                      <br><br>
                      <div style="display: flex;">
                        <img src="../User_View/img/gradation10.png" width="25px" height="25px">
                        <div style="font-size: large;">5단계 : 굽기</div>
                      </div>
                      <div style="margin-left: 30px;">
                        <small>계란물을 발라 바로 굽습니다.</small>
                      </div>
                      <br><br>
                      <div style="display: flex;">
                        <img src="../User_View/img/gradation10.png" width="25px" height="25px">
                        <div style="font-size: large;">6단계 : 포장</div>
                      </div>
                      <div style="margin-left: 30px;">
                        <small>식힌 후 시식 후 포장합니다.</small>
                      </div>
                    </div>
                    <br><br><br><hr>
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
                      <img src="../User_View/img/stayhome (1).png" alt="home" width="23px" height="23px;">
                      <div style="font-size: large;">&nbsp;&nbsp;&nbsp;아늑한 공방에서 수업합니다.</div>
                    </div>
                    <br>
                    <div style="display: flex; width: 550px;">
                      <img src="../User_View/img/wifi.png" alt="home" width="23px" height="23px">
                      <div style="font-size: large;">&nbsp;&nbsp;&nbsp;와이파이 가능합니다.</div>
                    </div>
                    <br>
                    <div style="display: flex; width: 550px;">
                      <img src="../User_View/img/no-coffee.png" alt="home" width="23px" height="23px">
                      <div style="font-size: large;">&nbsp;&nbsp;&nbsp;커피/음료는 별도 구매하셔야합니다.</div>
                    </div>
                    <!-- 지도 보기 -->
                    <div style="display: block; text-align: center;">
                      <br><br>
                      <img src="../User_View/img/화면 캡처 2021-06-23 011233.png">
                    </div>
                  </div>
                </ul>
              </div>
            </div>
            
            <!-- 리뷰 탭 -->
            <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
              <div class="p-4 p-lg-5 bg-white">
   
                <button onclick="reviewWrite1();" class="btn btn-dark" style="margin-left: 85%; width: 120px;">리뷰 작성</button>

                <div id="reviewWrite"  style="width: 200px; height: 180px; display: none;" >
                  <form action="detail.html">
                    <input type="file" style="margin-left: 55%; margin-bottom: 10px;">
                    <textarea class="feedbackArea" placeholder="리뷰를 작성해 주세요"></textarea>
                    <button class="btn btn-dark" type="submit" style="display: flex; margin-top: -85px; margin-left: 620px;">작성</button>
                  </form>
                </div>

                <!-- 리뷰 작성 눌렀을 시-->
                <script>
                  function reviewWrite1(){
                    if( document.getElementById("reviewWrite").style.display=="none"){
                      document.getElementById("reviewWrite").style.display="block";
                    } else if( document.getElementById("reviewWrite").style.display=="block"){
                      document.getElementById("reviewWrite").style.display="none";
                    }
                  }
                </script>

                <div class="row">
                  <div class="col-lg-8">
                    <!-- <div style="display:flex; text-align: center; justify-content: space-evenly; margin: auto;">
                      <div style="font-size: 18px;">클래스 후기<br><div style="font-size: 22px;">3</div></div>
                      <div>클래스 후기<br>3</div>
                    </div> -->
                    <!-- 리뷰1 -->
                    <div style="padding-bottom: 15px;">
                      <div class="media mb-3">
                        <img id="myImg" class="btn-img" src="img/review.png">
                        <div id="myModal" class="modal media mb-3">
                          <span class="close">&times;</span>
                          <img class="modal-content" id="img01" src="img/review.png">
                          <div id="caption"></div>
                        </div>
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
                          <p class="text-small mb-0 text-muted">초보도 쉽게 그림을 그릴수 있어서 좋았어요!</p>
                        </div>
                      </div>
                    </div>
                    <!-- 리뷰2 -->
                    <div style="padding-bottom: 15px;">
                      <div class="media mb-3">
                        <img id="myImg" class="btn-img" src="img/review2.png">
                        <div id="myModal" class="modal media mb-3">
                          <span class="close">&times;</span>
                          <img class="modal-content" id="img01" src="img/review2.png">
                          <div id="caption"></div>
                        </div>
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
                        </div>
                      </div>
                      <!-- 답변 -->
                      <div class="media mb-3 answer"><img class="rounded-circle" src="img/user.png" alt="" width="50">
                        <div class="media-body ml-3">
                          <h6 class="mb-0 text-uppercase">강사</h6>
                          <p class="small text-muted mb-0 text-uppercase">2021-06-11</p>
                          <p class="text-small mb-0 text-muted">답변드려요.답변드려요.답변드려요.답변드려요.답변드려요.답변드려요.답변드려요.답변드려요.답변드려요.답변드려요.답변드려요.답변드려요.답변드려요.답변드려요.</p>
                          <br>
                        </div>
                      </div>
                    </div>
                    <!-- 리뷰3 -->
                    <div style="padding-bottom: 15px;">
                      <div class="media mb-3">
                        <img id="myImg" class="btn-img" src="img/review.png">
                        <div id="myModal" class="modal media mb-3">
                          <span class="close">&times;</span>
                          <img class="modal-content" id="img01" src="img/review.png">
                          <div id="caption"></div>
                        </div>
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
                        </div>
                      </div>
                      <!-- 답변 -->
                      <div class="media mb-3 answer"><img class="rounded-circle" src="img/user.png" alt="" width="50">
                        <div class="media-body ml-3">
                          <h6 class="mb-0 text-uppercase">강사</h6>
                          <p class="small text-muted mb-0 text-uppercase">2021-06-11</p>
                          <p class="text-small mb-0 text-muted">답변드려요.</p>
                          <br>
                        </div>
                      </div>
                    </div>
                    <!-- 리뷰4 -->
                    <div style="padding-bottom: 15px;">
                      <div class="media mb-3">
                        <img id="myImg" class="btn-img" src="img/review2.png">
                        <div id="myModal" class="modal media mb-3">
                          <span class="close">&times;</span>
                          <img class="modal-content" id="img01" src="img/review2.png">
                          <div id="caption"></div>
                        </div>
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
                        </div>
                      </div>
                      <!-- 답변 -->
                      <div class="media mb-3 answer"><img class="rounded-circle" src="img/user.png" alt="" width="50">
                        <div class="media-body ml-3">
                          <h6 class="mb-0 text-uppercase">강사</h6>
                          <p class="small text-muted mb-0 text-uppercase">2021-06-11</p>
                          <p class="text-small mb-0 text-muted">답변드려요.</p>
                          <br>
                        </div>
                      </div>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>

            <!-- 문의 탭 -->
            <div class="tab-pane fade" id="questions" role="tabpanel" aria-labelledby="reviews-tab">
              <div class="p-4 p-lg-5 bg-white">
              
              <button onclick="inquiryWrite1();" class="btn btn-dark" style="margin-left: 85%; width: 120px;">문의 작성</button>

                <div id="inquiryWrite"  style="width: 200px; height: 180px; display: none;" >
                  <form action="detail.html">
                    <textarea class="feedbackArea" placeholder="강사님께 궁금하신 점을 작성해 주세요"></textarea>
                    <button class="btn btn-dark" type="submit" style="display: flex; margin-top: -85px; margin-left: 620px;">작성</button>
                  </form>
                </div>

                <!-- 문의 작성 눌렀을 시-->
                <script>
                  function inquiryWrite1(){
                    if( document.getElementById("inquiryWrite").style.display=="none"){
                      document.getElementById("inquiryWrite").style.display="block";
                    } else if( document.getElementById("inquiryWrite").style.display=="block"){
                      document.getElementById("inquiryWrite").style.display="none";
                    }
                  }
                </script>
                
                
                <div class="row">
                  <div class="col-lg-8">
                    <!-- 문의1 -->
                    <div style="padding-bottom: 15px;">
                      <div class="media mb-3"><img class="rounded-circle" src="img/user.png" alt="" width="50">
                        <div class="media-body ml-3">
                          <h6 class="mb-0 text-uppercase">김이박</h6>
                          <div class="small text-muted mb-0 text-uppercase">2021-06-11</div>
                          <p class="text-small mb-0 text-muted">클래스 수강 취소 가능한가요?</p>
                        </div>
                      </div>
                      <!-- 답변 -->
                      <div class="media mb-3 answer"><img class="rounded-circle" src="img/user.png" alt="" width="50">
                        <div class="media-body ml-3">
                          <h6 class="mb-0 text-uppercase">강사</h6>
                          <p class="small text-muted mb-0 text-uppercase">2021-06-11</p>
                          <p class="text-small mb-0 text-muted">답변드려요.</p>
                          <br>
                        </div>
                      </div>
                    </div>
                    <!-- 문의2 -->
                    <div style="padding-bottom: 15px;">
                      <div class="media mb-3"><img class="rounded-circle" src="img/user.png" alt="" width="50">
                        <div class="media-body ml-3">
                          <h6 class="mb-0 text-uppercase">최박</h6>
                          <p class="small text-muted mb-0 text-uppercase">2021-06-11</p>
                          <p class="text-small mb-0 text-muted">클래스 커리큘럼 문의드려요</p>
                        </div>
                      </div>
                      <!-- 답변 -->
                      <div class="media mb-3 answer"><img class="rounded-circle" src="img/user.png" alt="" width="50">
                        <div class="media-body ml-3">
                          <h6 class="mb-0 text-uppercase">강사</h6>
                          <p class="small text-muted mb-0 text-uppercase">2021-06-11</p>
                          <p class="text-small mb-0 text-muted">답변드려요.</p>
                          <br>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <br><br><br>
      
      	<%@include file="../commons/footer.jsp" %>

 </div>
  </body>
</html>