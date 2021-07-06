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
      }

      .bottom_badge{
        position: absolute;
        top: 12rem;
        right: 3.3rem;
        z-index: 999;
        font-size: 12.5px;
        background-color: #f8f9fa;
        color: black !important;
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
      <%@include file="../commons/search.jsp" %>
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 mb-0">My Page</h1>
                <p class="text-muted small text-uppercase mb-2"></p>
              </div>
            </div>
          </div>
        </section>

        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-2 order-lg-1">
  
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="likeClassList.html">찜 목록</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="cheerClassList.html">응원한 클래스</a></strong></div>


              </div>
              <!-- SHOP LISTING-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row">
                  <c:choose>
                  	<c:when test="${ empty requestScope.cheerClassDTOList && empty requestScope.cheerClassDTOList }">
                  		진행 예정 클래스가 없습니다.
                  	</c:when>
                  </c:choose>
                  <!-- PRODUCT-->
                  <c:forEach  var="classList" items="${ requestScope.cheerClassDTOList }">
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="productNoneOpacity text-center">
                      <div class="badge text-white badge-danger">D - ${classList.dDay} </div>
                      <div class="position-relative mb-3" style="max-width: 184px; max-height: 180px;">
                        <a class="d-block" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }"><img class="img-fluid w-100" src="${pageContext.servletContext.contextPath }/${classList.titlePic}" alt="..."></a>
                      </div>
                      <h6> 
                      <c:if test="${classList.clsType eq 'O'}">
                      <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }">
                        [원데이] ${classList.title}
                      </a>
                      </c:if>
                      <c:if test="${classList.clsType eq 'R'}">
                      <a class="reset-anchor" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ classList.clsNo }">
                        [정규] ${classList.title}
                      </a>
                      </c:if>
                      </h6>
                    </div>
                  </div>
                  </c:forEach>

                   
                  </div>
                <br><br>
                <!-- PAGINATION-->
                <nav aria-label="Page navigation example">
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
        </section>
      </div>

      	<%@include file="../commons/footer.jsp" %>

      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
  </body>
</html>