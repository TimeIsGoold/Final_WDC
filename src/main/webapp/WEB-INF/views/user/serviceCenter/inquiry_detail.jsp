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
        table.type09 tbody th {
            width: 110px;
            padding: 10px;
            font-weight: bold;
            vertical-align: top;
            border-bottom: 1px solid #ccc;
            background: #f3f6f7;
            text-align: center;
        }
        table.type09 td {
          width: 720px;
          padding: 10px;
          vertical-align: top;
          border-bottom: 1px solid #ccc;
        }
    
        i{
            font-family: "Font Awesome 5 Free" !important;
          }
    
        *{font-family:'Cafe24SsurroundAir' !important;}
    
        thead{
          border-bottom: 1px solid #ccc;
        }
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
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/notice">공지사항</a></strong></div>
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/faq">자주 묻는 질문</a></strong></div>
	                <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/inquiry">1:1 문의</a></strong></div>
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/report">나의 신고</a></strong></div>
	              </div> 
                  <div>
                    <table class="type09">
                      <thead>
                        <tr>
                          <th scope="cols"></th>
                          <th scope="cols"></th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">제목</th>
                          <td colspan="3">${ requestScope.inquiryDetail.queTitle }</td>
                        </tr>
                        <tr>
                          <th scope="row">작성일</th>
                          <td>${ requestScope.inquiryDetail.queDate }</td>
                        </tr>
                      </tbody>
                    </table>
                    <br><br>
                    <p style="margin-left: 50px; margin-right: 50px;">
			        	${ requestScope.inquiryDetail.queContent }
                    </p>
                    <br><br>
                    <hr>
                    <div style="margin-left: 35px;">
                      <b>관리자 답변</b><br>
                      <div style="padding-top: 12px;">
                      	<c:if test="${ !empty requestScope.inquiryAnswer }">
	                        <p class="form-control textarea-layer" style="width: 755px; height: 120px; padding: 20px;">
		                        ${ requestScope.inquiryAnswer.answerContent }
		                        <br><br>
		                        ${ requestScope.inquiryAnswer.answerTime }
	                        </p>
                        </c:if>
                        <c:if test="${ empty requestScope.inquiryAnswer }">
	                        <p class="form-control textarea-layer" style="width: 755px; height: 120px; padding: 20px;">
	                        	답변이 아직 등록되지 않았습니다.
	                        </p>
                        </c:if>
                      </div>
                    </div>
                    <hr>
                    <button class="btn btn-primary" type="submit" style="margin-left: 85%;" onclick="location.href='${ pageContext.servletContext.contextPath }/user/serviceCenter/inquiry'">목록보기</button>
                </div>
                <!-- 리스트 없을때 -->
              </div>
            </section>
          </div>
          <br><br><br><br>
        <%@include file="../commons/footer.jsp" %>
	</div>
  </body>
</html>