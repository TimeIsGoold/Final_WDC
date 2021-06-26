<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
 	<%@include file="../commons/header.jsp" %>

    <style>
    .overlay {
      position: fixed;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      background: rgba(0, 0, 0, 0.7);
      transition: opacity 500ms;
      visibility: hidden;
      opacity: 0;
      z-index: 900;
    }

    .overlay:target {
      visibility: visible;
      opacity: 1;
    }

    .h4{
      text-align: center;
      font-size: 2em;
    }

    .payAgree{
      background-color: #6eceda;
      color: white;
      border-style: none;
      box-shadow: 0 3px 0 #0e8c73;
      border-radius: 10px;
      padding: 5px;
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
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle text-warning" id="pagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">클래스</a>
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
      <!--  Modal -->
      <div class="modal fade" id="productView" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-body p-0">
              <div class="row align-items-stretch">
                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(img/product-5.jpg)" href="img/product-5.jpg" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/product-5-alt-1.jpg" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/product-5-alt-2.jpg" title="Red digital smartwatch" data-lightbox="productview"></a></div>
                <div class="col-lg-6">
                  <button class="close p-4" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                  <div class="p-5 my-md-4">
                    <ul class="list-inline mb-2">
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                    </ul>
                    <h2 class="h4">Red digital smartwatch</h2>
                    <p class="text-muted">$250</p>
                    <p class="text-small mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ullamcorper leo, eget euismod orci. Cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus. Vestibulum ultricies aliquam convallis.</p>
                    <div class="row align-items-stretch mb-4">
                      <div class="col-sm-7 pr-sm-0">
                        <div class="border d-flex align-items-center justify-content-between py-1 px-3"><span class="small text-uppercase text-gray mr-4 no-select">Quantity</span>
                          <div class="quantity">
                            <button class="dec-btn p-0"><i class="fas fa-caret-left"></i></button>
                            <input class="form-control border-0 shadow-0 p-0" type="text" value="1">
                            <button class="inc-btn p-0"><i class="fas fa-caret-right"></i></button>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="cart.html">Add to cart</a></div>
                    </div><a class="btn btn-link text-dark p-0" href="#"><i class="far fa-heart mr-2"></i>Add to wish list</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light1">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">신고</h1>
              </div>
              <div class="col-lg-6 text-lg-right">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0">
                    <li class="breadcrumb-item"><a href="mypageScheduledClass.html">돌아가기</a></li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>
        <section class="py-5">
          <div class="row">
            <div class="col-lg-8 mb-4 mb-lg-0" style="margin-left: 17%;">
              <!-- CART TABLE-->
              <div class="table-responsive mb-4">
                <table class="table">
                  <thead class="bg-light">
                    <tr>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase">강의 이름</strong></th>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase" style="margin-left: 15px;">강사 명</strong></th>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase">신청 인원</strong></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th class="pl-0 border-0" scope="row">
                        <div class="media align-items-center"><a class="reset-anchor d-block animsition-link" href="detail.html"><img src="img/class-sport.png" alt="..." width="70" height="60px" style="border-radius: 5px;"/></a>
                          <div class="media-body ml-3"><strong class="h6"><a class="reset-anchor animsition-link" href="detail.html">리포머 하나면 가성비 홈짐 완성! 하루 30분 홈 리포머 필라테스</a></strong></div>
                        </div>
                      </th>
                      <td class="align-middle border-0">
                        <div class="quantity">
                          <button class="dec-btn p-0"><i class="fas"></i></button>
                          <p style="width: 50px; margin-top: 15px;">이해승</p>                         
                           <button class="inc-btn p-0"><i class="fas"></i></button>
                        </div>
                    </td>

                      <td class="align-middle border-0">
                          <div class="quantity">
                            <button class="dec-btn p-0"><i class="fas"></i></button>
                            <p style="margin-top: 15px; font-size: 17px;">1 명</p>
                            <button class="inc-btn p-0"><i class="fas"></i></button>
                          </div>
                      </td>

                    </tr>
                </tbody>
            </table>
                <li>&nbsp;&nbsp;&nbsp;신청 날짜 :&nbsp;&nbsp;&nbsp;
                <input type="text" style="margin-bottom: 10px; margin-top: 10px; width: 250px;" id="name" class="refunderInfo" value="2021-06-30" disabled></li>
                <br>
                <li>&nbsp;&nbsp;&nbsp;신청 시간 :&nbsp;&nbsp;&nbsp;
                <input type="text" style="width: 250px;" id="phone" class="refunderInfo" value="16:00 ~ 18:00" disabled> </li>
                <br>
              </div>
              <!-- 신청자 정보-->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left">
                      <i class="fas mr-2" style="display: flex;">
                        <h5 style="width: 200px; margin-top: 7px;">신고 제목 : 
                        </h5>
                        <input style="width: 500px; display: flex;" placeholder="신고 제목을 입력해 주세요"> 
                      </i>
                    </div>
                </div>
            </div>
            <input type="file" style="margin-left: 500px; margin-top: 10px;">
              <textarea style="resize: none; width: 550px; height: 250px; margin-top: 10px; border-radius: 5px; margin-left: 12%;" placeholder="신고 내용을 작성 해 주세요"></textarea>
              
              <br>
              <button style="margin-left: 41%;" onclick=writeComplate();>신고 작성하기 </button>



            </div>

          </div>
        </section>
      </div>

</div>
<script>
    function writeComplate(){
        alert("신고 작성되었습니다.")
        location.href="mypageReportList.html";
    }
</script>

      	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>