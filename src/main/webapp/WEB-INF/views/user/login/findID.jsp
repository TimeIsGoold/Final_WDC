<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>
  </head>
  <style>
    .modal{
      vertical-align: middle;
      margin-top: 13%;
    }

    .modal-sm{
      max-width: 500px !important;
    }

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
      <br><br>
      <!-- body -->
      <div class="container py-5">
        <div class="col-lg-7" style="margin: auto;">
          <div class="card mb-4" id="forms">
            <div class="card-body"><br>
              <h4 class="mb-5" style="text-align: center;">아이디찾기</h4>
              <form>
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorId">이름</label>
                  <div class="col-sm-12">
                    <input class="form-control" style="width: 420px;" id="tutorId" type="text" placeholder="이름">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorPwd">휴대폰번호</label>
                  <div class="col-sm-12 form-inline" style="flex-wrap: nowrap; justify-content: space-between;">
                    <input class="form-control" style="width: 420px;" type="text" placeholder="휴대폰번호를 입력하세요">
                    <button class="btn btn-primary">인증번호 전송</button>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-3 col-form-label" for="tutorPwd">인증번호</label>
                  <div class="col-sm-12 form-inline" style="flex-wrap: nowrap; justify-content: space-between;">
                    <input class="form-control"style="width: 420px;" type="text" placeholder="인증번호를 입력하세요">
                    <button class="btn btn-primary">인증번호 확인</button>
                  </div>
                </div><br><br>
                <div class="form-group row">
                  <div class="col-sm-12" text-align="center" style="padding: 0px 0px 0px 0px;">
                    <button style="width: 95%; height: 38px; margin-left: 14px;" type="button" class="btn btn-primary" data-toggle="modal" data-target="#idFind">아이디 찾기</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <br><br><br>
      <!-- 아이디찾기팝업 -->
      <div id="idFind"class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title" id="gridSystemModalLabel">아이디찾기 결과</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
              <div class="container">
                <div class="form-group">
                  <br><h6>내 아이디</h6>
                  <input type="text" class="form-control" readonly>
                </div>
              </div>
            </div>
            <div class="modal-footer" style="display: block; text-align: center;">
              <button type="button" class="btn btn-primary" style="width: 145px;" onclick="location.href='t_login.html'">로그인하기</button><br>
              <button type="button" class="btn btn-primary" style="width: 145px;" onclick="location.href='t_findPWD.html'">비밀번호찾기</button><br><br>
              <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 145px; border: 1px solid rgba(0, 0, 0, 0.25);">닫기</button>
            </div>
          </div>
        </div>
      </div>      
      
      <%@include file="../commons/footer.jsp" %>
 	</div>
  </body>
</html>