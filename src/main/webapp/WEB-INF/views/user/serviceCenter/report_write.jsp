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
          <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="${ pageContext.servletContext.contextPath }/"><span class=" text-uppercase text-dark" style="font-size: 32px; font-family: Cafe24SsurroundAir;"><img src="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png" width="33px" height="33px">&nbsp;우리 동네 클래스</span></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="pagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">클래스</a>
                  <div class="dropdown-menu mt-3" aria-labelledby="pagesDropdown">
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/all">전체보기</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/sports">스포츠</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/beauty">뷰티</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/art">미술 · 공예 · 공연전시</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/cook">요리 · 베이킹</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/computer">컴퓨터 · IT</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/language">언어 · 스피치</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/revenu">재태크 · 창업</a>
                  </div>
                </li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/notice"> <i class="fas mr-1 text-gray"></i>고객센터</a></li>
              </ul>
              <ul class="navbar-nav ml-auto">               
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/likeClass"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1" ></i></a></li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/login">로그인</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </header>

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
            <textarea style="resize: none; width: 725px; height: 220px; margin-top: 10px; border-radius: 5px; margin-left: 3px; padding: 15px;" placeholder="신고 내용을 작성 해 주세요"></textarea>
      
            <label for="input-file" style="margin-left: 10px;">
              <input id="input-file" type="file" style="margin-left: 500px; margin-top: 10px; display: none;">
              첨부 파일
            </label>
            <br>  
            <button style="margin-left: 40%; margin-top: -5px;" onclick=writeComplate(); class="btn btn-dark submitbtn">신고 작성하기 </button>



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