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
        justify-content: center !important;
      }

      .form-control-lg {
        width: 450px;
      }

      .currentPage{
        font-weight: 600;
        font-size: 26px;

      }
      .form-control{
        border-radius: 5px;
      }

      .img-fluid{
        height: 180px;
        width: 250px;
        border-radius: 5px;
        background-color: #ffe66a;
      }
      i{
        font-family: "Font Awesome 5 Free" !important;
      }

      .w-100{
        transition: all 0.2s linear;
      }
      .btn-dark:hover{
        background-color: #ffe66a;
        border: #ffe66a;
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
                <li class="nav-item"><a class="nav-link" href="serviceCenter.html"> <i class="fas  mr-1 text-gray"></i>고객센터</a></li>
              </ul>
              <ul class="navbar-nav ml-auto">               
                <li class="nav-item"><a class="nav-link" href="likeClassList.html"> <i class="far fa-heart mr-1"></i><small class="text-gray"></small></a></li>
                <li class="nav-item"><a class="nav-link text-warning" href="mypageMain.html"> <i class="fas fa-user-alt mr-1 text-warning hover-btn"></i></a></li>
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
                <h1 class="h2 mb-0">My Page</h1>
              </div>
              <div class="col-lg-6 text-lg-right">
                <nav aria-label="">
                  <ol class=" justify-content-lg-end mb-0 px-0">
                   <a href="mypageScheduledClass.html" style="color: black; font-weight: 600;">돌아가기</a>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>

        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-2 order-lg-1">
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="mypageMain.html">내 정보</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="mypageScheduledClass.html">참여 예정 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="mypageParticipatingClass.html">참여 중인 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="mypageComplateClass.html">참여 완료 클래스</a></strong></div>

                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="mypageCouponList.html">내 쿠폰</a></strong></div>


              </div>
              <!-- SHOP LISTING-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row">
                  <div class="col-xl-10 col-lg-4 col-sm-6" style="margin-left: 30px; ">
                    
                  <div class="row"  style="width: 1500px; height: 200px;">

                    <img class="w-100" src="${pageContext.servletContext.contextPath }/${complateDetailUserClassDTO.titlePic}"  alt="..." style="width: 200px !important; height: 150px !important; margin-right: 30px; border-radius: 2px;">

                    <ul class="list-inline mb-2">
                      <li class="list-inline-item m-0">
                        <i class="fas fa-caret-right small text-dark" style="display: flex; margin-left: 3px; ">
                          <p style="margin-left: 10px; margin-top: 2px;"> 강의명</p>
                        </i>
                      </li> 
                      <h4><a href="detail.html" style="color: black;">${ requestScope.complateDetailUserClassDTO.title }</a></h4>
                      <br>  
                      <li class="list-inline-item m-0">
                        <i class="fas fa-caret-right small text-dark" style="display: flex; margin-left: 3px; ">
                          <p style="margin-left: 1px; margin-top: 2px;"> 강사명</p>
                        </i>
                      </li> : ${ requestScope.complateDetailUserClassDTO.teName } 강사님
                      <br>
                    </ul>
                  </div>
                  <!-- PRODUCT-->

                    <div style="text-align: left; margin-top: -30px;">
                    <hr>
                    <c:if test="${ requestScope.complateDetailUserClassDTO.clsType eq 'O' }">
                    <li>강의 날짜 : ${ requestScope.complateDetailUserClassDTO.scheduleDate }</li>
                    </c:if>
                    <c:if test="${ requestScope.complateDetailUserClassDTO.clsType eq 'R' }">
                    <li>강의 날짜: ${ requestScope.complateDetailUserClassDTO.startDate } ~ ${ requestScope.complateDetailUserClassDTO.endDate }</li>
                    </c:if>
                    <hr>
                    <li>강의 진행 시간 : ${ requestScope.complateDetailUserClassDTO.scheduleStart }</li>
                    <hr>
                    <li>강의 소요 시간 : ${ requestScope.complateDetailUserClassDTO.time }</li>
                    <hr>
                    <li>결제 날짜 : ${ requestScope.complateDetailUserClassDTO.clsAplDate }</li>
                    <hr>
                    <li>신청 인원 : ${ requestScope.complateDetailUserClassDTO.ppl } 명 </li>
                    <hr>
                    <li>결제 금액 : <fmt:formatNumber value="${ requestScope.complateDetailUserClassDTO.payPrice }" pattern="#,###"/></li>
                    <hr>
                    </div>
                    <br>

                    <div style="margin-left: 25%;">
                      <div style="width: 200px; height: 40px; display: inline-flex;">
                        <form action="class_report.html" style="display: flex;">
                          <button class="btn btn-dark" type="submit" style="display: flex;">클래스 신고하기</button>
                        </form>
                      </div>
                    <c:if test="${ requestScope.complateDetailUserClassDTO.payStatus eq '완료' }">
                      <div style="width: 200px; height: 40px; display: inline-flex;">
                        <form action="class_certificatesView.html" style="display: flex;">
                          <button class="btn btn-dark" type="submit" style="display: flex;">수료증 보기</button>
                        </form>
                      </div>                    
                    </c:if> 
                    </div>


                <br><br>
                <!-- PAGINATION-->

              </div>
            </div>
          </div>
        </section>
	</div>
       <%@include file="../commons/footer.jsp" %>
       </div>
 
  </body>
</html>