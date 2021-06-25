<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

  </head>
  <style>
      i{
        font-family: "Font Awesome 5 Free" !important;
      }

    *{font-family:'Cafe24SsurroundAir' !important;}
  </style>
  <body>
    <!-- header -->
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
      <!-- body -->
      <div class="container py-5">
        <div class="col-lg-7" style="margin: auto;">
          <div class="card mb-4" id="forms">
            <div class="card-body"><br>
              <h4 class="mb-5">비밀번호재설정</h4>
              <form>
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorId">아이디</label>
                  <div class="col-sm-12">
                    <input class="form-control" id="tutorId" type="text" placeholder="아이디">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorPwd">휴대폰번호</label>
                  <div class="col-sm-12">
                    <input class="form-control" type="text" placeholder="휴대폰번호">
                  </div>
                </div>
                <br>
                <div class="col-sm-12" align="center" style="padding: 0px 0px 0px 0px;">
                  <button style="width:100%; height: 38px;">휴대폰 번호로 인증번호 전송</button>
                </div>
                <br>
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorPwd">인증번호</label>
                  <div class="col-sm-12 form-inline" >
                    <input class="form-control"style="width: 440px;" type="text" placeholder="인증번호를 입력하세요">
                    <button style="margin-left: 20px; height: 36px;">인증번호확인</button>
                  </div>
                </div><br><br>
                <div class="form-group row">
                  <div class="col-sm-12" align="center" style="padding: 0px 0px 0px 0px;">
                    <button style="width:100%; height: 38px;" type="button" class="btn btn-primary" data-toggle="modal" data-target="#idFind">비밀번호 재설정하러 가기</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- 아이디찾기팝업 -->
      <div id="idFind"class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title" id="gridSystemModalLabel">비밀번호 입력</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
              <div class="container">
                <div class="form-group">
                  <h6 style="margin-bottom: -20px;">비밀번호 입력</h6><br>
                  <input type="text" class="form-control" style="margin-bottom: 20px;" >
                  <h6 style="margin-bottom: -20px;">비밀번호 확인</h6><br>
                  <input type="text" class="form-control"  >
                </div>
              </div>
            </div>
            <div class="modal-footer" style="display: block;" align="center">
              <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 200px; border: 1px solid rgba(0, 0, 0, 0.25);">닫기</button>
              <button type="button" class="btn btn-primary" style="width: 200px;" onclick="pwdRepalce();">비밀번호 재 설정</button>
            </div>
          </div>
        </div>
      </div>
      <script>
          function pwdRepalce(){
              alert("비밀번호 재 설정 되었습니다.")
              location.href="login.html"
          }
      </script>
      <!-- /아이디찾기 -->
      <!-- footer -->
      	<%@include file="../commons/footer.jsp" %>
</div>
  </body>
</html>