<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

  </head>
  <style>
    .login-find{
      display: flex;
      margin: auto;
      width: 200px;
      justify-content: space-evenly;
    }

    i{
      font-family: "Font Awesome 5 Free" !important;
    }

    *{font-family:'Cafe24SsurroundAir' !important;}
    
    .login-type{
	    text-align: center;
	    display: flex;
	    margin: auto;
	    width: 430px;
	    justify-content: space-evenly;
    }
  </style>
  <body>
    <!-- header -->
    <div class="page-holder">
      <!-- navbar-->
<<<<<<< HEAD
      
	<%@include file="../commons/header2.jsp" %>
	
=======
      <header class="header bg-white">
        <div class="container px-0 px-lg-3">

          <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="${ pageContext.servletContext.contextPath }/user/mypage/userLoginSuccessMain"><span class=" text-uppercase text-dark" style="font-size: 32px; font-family: Cafe24SsurroundAir;"><img src="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png" width="33px" height="33px">&nbsp;우리 동네 클래스</span></a>
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
	              <c:if test="${ empty sessionScope.userNo }">               
	                <li class="nav-item"><a class="nav-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
	                <li class="nav-item"><a class="nav-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1" ></i></a></li>
	              </c:if>
	              <c:if test="${ !empty sessionScope.userNo }">               
	                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/likeClassList"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
	                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1" ></i></a></li>
	              </c:if>
	              <c:if test="${ sessionScope.userNo ne null }">
	              	<li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/logout">로그아웃</a></li>
	              </c:if>
	              <c:if test="${ sessionScope.userNo eq null }">
	              	<li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/login">로그인</a></li>
	              </c:if>
              </ul>
            </div>
          </nav>
        </div>
      </header>
>>>>>>> refs/remotes/Final_WDC/ahyun
      <c:if test="${not empty message }">
          <script>
              alert("${message}");
          </script>
      </c:if>
      <br><br>
      <!-- body -->
      <form action="${ pageContext.servletContext.contextPath }/user/mypage/login" method="post">
	     <div class="container py-5">
	        <div class="col-lg-7" style="margin: auto;">
	          <div class="card mb-4" id="forms">
	            <div class="card-body"><br>
		            <h4 class="mb-5" style="text-align: center; font-size: 1.9rem;">Log In</h4>
	                <div class="form-group row">
	                  <label class="col-sm-3 col-form-label" for="tutorId">아이디</label>
	                  <div class="col-sm-12">
	                      <input class="form-control" id="tutorId" type="text" placeholder="아이디" name="userId">
	                  </div>
	                </div>
	                <div class="form-group row">
	                  <label class="col-sm-3 col-form-label" for="tutorPwd">비밀번호</label>
	                  <div class="col-sm-12">
	                    <input class="form-control" id="tutorPwd" type="password" placeholder="비밀번호" name="userPwd">
	                  </div>
	                </div><br><br>
	                <div class="form-group row">
	                  <div class="col-sm-3" style="margin: auto;">
	                    <button class="btn btn-primary" type="submit" style="margin-left: 10%;">로그인</button>
	                  </div>
	                </div>
	                <div class="login-find">
                      <a href="${ pageContext.servletContext.contextPath }/user/mypage/findId" style="color: #adb5bd !important;">아이디 찾기</a></li>
	                  <div style="color: #adb5bd">&nbsp;|&nbsp;</div>
	                  <a href="findPassword.html" style="color: #adb5bd !important;">비밀번호 찾기</a></li>
	                </div><br>
	                <div class="login-find" style="width: 300px; color: #adb5bd !important;">
	                 	 아직 회원이 아니신가요?
                      <a href="${ pageContext.servletContext.contextPath }/user/mypage/signup" style="color: #adb5bd !important;">회원가입</a></li><br>
	                </div>
	            </div>
            </div>
            <br>
            <div class="login-type">
           		* another page &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	            <a href="${ pageContext.servletContext.contextPath }/teacher" style="color: black !important;">강사 페이지</a></li>               
	            <a href="${ pageContext.servletContext.contextPath }/user/admin" style="color: black !important;">관리자 모드</a></li>
            </div>
	      </div>
	   </div>
    </form>
    <br><br><br>
    <%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>