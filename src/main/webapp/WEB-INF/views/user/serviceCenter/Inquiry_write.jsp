<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

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
        justify-content: normal !important;
      }

      .form-control-lg {
        width: 450px;
      }

      .list-inline-item {
        margin-left: 50px;
      }

      .currentPage{
        font-weight: 600;
        font-size: 26px;

      }
      .form-control{
        border-radius: 5px;
      }

      .form-control {
        display: inline-block;
      }

      div.tab {
        width: 600px;
      }

      .tab {
          height: auto;
          border-bottom: 1px solid rgba(0,0,0,0.2);
          width: 1000px;
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
                <li class="nav-item"><a class="nav-link text-warning" href="serviceCenter.html"> <i class="fas  mr-1 text-gray"></i>고객센터</a></li>
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
                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(img/product-5.aff049a7.jpg)" href="img/product-5.aff049a7.jpg" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/product-5-alt-1.590676e9.jpg" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/product-5-alt-2.bfa04461.jpg" title="Red digital smartwatch" data-lightbox="productview"></a></div>
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
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 mb-0">문의 작성</h1>
                <p class="text-muted small text-uppercase mb-2"></p>
              </div>
            </div>
          </div>
        </section>
        
        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-2 order-lg-0">
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="serviceCenter.html">공지사항</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="frequentlyAskedQuestions.html">자주 묻는 질문</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="#">1대1 문의</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="reortList.html">나의 신고</a></strong></div>
                </div>

                		<!-- 문의작성 -->
		<div class="list_none" style="display: block; height: 604px; width: 850px; border: 1px solid lightgray;">
			<div class="writeNameBox">
				<div class="writeNameBoxContent" style="margin: auto;">
					<p style="text-align: center; font-weight: bold; margin-top: 10px;">문의 제목 :  <input type="text" class="titleInput" placeholder="제목을 입력하세요." required style="width: 500px;"> </p>
				</div>
			</div>
            <hr>
			<textarea class="wirteContent" style="border-radius: 5px; width: 825px; margin-left: 12px;" rows="21" name="" placeholder="문의 사항을 적어주세요." required="required"></textarea>
		</div>
		<br>
		<div class="list_none" style="display:block; text-align: center; width: 850px; margin-top: 10px; margin-left: 950px;">
			<button class="submit-btn" type="submit" onclick="location.href='mantomanInquiry.html'; notice();" >작성 완료</button>
		</div>
          </div>
                          
            <!-- 리스트 없을때 -->
          </div>
        </section>
      </div>
      <br>
      <br>
      <br>
      <br>
       	<%@include file="../commons/footer.jsp" %>
</div>
  </body>
</html>