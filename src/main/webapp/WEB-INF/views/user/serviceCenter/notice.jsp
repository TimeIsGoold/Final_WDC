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
	  
	  a.form-control-lg {
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

      *{  margin: 0; padding: 0; }
      ul{list-style: none;}
      .accordion-box{
        width: 100%; max-width: 600px;
        margin:  0 auto;
      }
      p.title{
        width: 100%;  
        line-height: 60px; 
        background: #fef0ae; 
        color: black; 
        box-sizing: border-box;
        padding: 0 10px;
      }
      .con{
        padding: 20px; 
        display:none;
      }

      .tr-hover:hover{
        background-color: #f8f9fa !important;
      }

      td{
        vertical-align: unset !important;
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
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 mb-0">고객 센터</h1>
                <p class="text-muted small text-uppercase mb-2"></p>
              </div>
            </div>
          </div>
        </section>
        
        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-0 order-lg-0">
                <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="#">공지사항</a></strong></div>
                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="frequentlyAskedQuestions.html">자주 묻는 질문</a></strong></div>
                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="mantomanInquiry.html">1대1 문의</a></strong></div>
                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="reortList.html">나의 신고</a></strong></div>
              </div> 
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0" style="text-align: center;">
                <div class="container p-0">
                  <div class="row">
                    <table class="table table-hover" style="width: 850px;">
                      <thead>
                          <tr>
                          <th><b>번호</b></th>
                          <th><b>공지 제목</b></th>
                          <th><b>등록 일자</b></th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr class="tr-hover">
                          <th>2</th>
                          <td onclick="location.href='notice_detail.html'" style="cursor:pointer;">강의 나이 제한 안내</td>
                          <td>21.05.13</th>
                        </tr>   
                        <tr>
                          <tr class="tr-hover">
                            <th>1</th>
                            <td onclick="location.href='notice_detail.html'" style="cursor:pointer;">환불 처리 기간 안내</td>
                            <td>21.04.18</th>
                          </tr>   
                        </tr>   
                      </tbody>
                    </table>
                  </div>
                  <!-- PAGINATION-->
                  <nav aria-label="Page navigation example" style="margin-left: 300px; margin-top: 50px;">
                    <ul class="pagination justify-content-center justify-content-lg-end">
                      <li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                      <li class="page-item active"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </section>
      <br><br><br><br>
      </div>
      
      	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>