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

      .img-fluid{
        height: 180px;
        width: 250px;
        border-radius: 5px;
      }
      
      .bottom_badge{
        position: absolute;
        top: 12rem;
        right: 3rem;
        z-index: 999;
        font-size: 7px;
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
      
      <%@include file="../commons/search.jsp" %>
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 mb-0">찜 목록</h1>
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
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="likeClassList.html">찜 목록</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/cheerClassList">응원한 클래스</a></strong></div>
              </div>
              <!-- SHOP LISTING-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row">
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="badge text-white badge-primary">06.21 / 16:00</div>
                      <div class="position-relative mb-3">
                      <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                          </ul>
                        </div>
                      </div>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]마카롱 만들기 체험</a></h6>
                      <p class="small text-muted">30000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="position-relative mb-3">
                        <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/dance.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                          </ul>
                        </div>
                      </div>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]아이돌 댄스 배우기</a></h6>
                      <p class="small text-muted">40000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="position-relative mb-3">
                        <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/baking.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                          </ul>
                        </div>
                      </div>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]백종원의 베이킹 수업</a></h6>
                      <p class="small text-muted">30000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <div class="badge text-white badge-primary">06.28 / 13:00</div>
                      <div class="position-relative mb-3">
                        <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron2.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                          </ul>
                        </div>
                      </div>
                      <h6> <a class="reset-anchor" href="detail.html">[정규]마카롱 만들기 체험2</a></h6>
                      <p class="small text-muted">100000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                      <!-- <div class="badge text-white badge-danger">Sold</div> -->
                      <div class="badge text-white badge-danger">받은 찜♥ : 50개</div>
                      <div class="bottom_badge text-white badge-primary">클래스 종료일 : 06/30</div>
                      <div class="position-relative mb-3">
                        <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron3.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]마카롱 만들기 체험3</a></h6>
                      <p class="small text-muted">50000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                        <div class="badge text-white badge-danger">받은 찜♥ : 50개</div>
                        <div class="bottom_badge text-white badge-primary">클래스 종료일 : 06/30</div>
                        <div class="position-relative mb-3">
                        <div class="badge text-white badge-"></div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron4.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]마카롱 만들기 체험4</a></h6>
                      <p class="small text-muted">50000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                        <div class="badge text-white badge-danger">받은 응원 : 1개</div>
                        <div class="bottom_badge text-white badge-primary">클래스 폐강까지 10일</div>
                      <div class="position-relative mb-3">
                        <div class="badge text-white badge-"></div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron5.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[원데이]마카롱 만들기 체험5</a></h6>
                      <p class="small text-muted">100000원</p>
                    </div>
                  </div>
                  <!-- PRODUCT-->
                  <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="product text-center">
                        <div class="badge text-white badge-danger">받은 응원 : 1개</div>
                        <div class="bottom_badge text-white badge-primary">클래스 폐강까지 10일</div>
                      <div class="position-relative mb-3">
                        <div class="badge text-white badge-"></div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/macaron6.jpg" alt="..."></a>
                        <div class="product-overlay">
                          <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                          </ul>
                        </div>
                      </div>
                      <p style="margin-bottom: 50px;"></p>
                      <h6> <a class="reset-anchor" href="detail.html">[정규]마카롱 만들기 체험6</a></h6>
                      <p class="small text-muted">500000원</p>
                    </div>
                  </div>
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
 </div>
  </body>
</html>