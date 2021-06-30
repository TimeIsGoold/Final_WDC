<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

  <style>
    .w-100 {
        width: 255px;
        height: 230px;
    }

    .class-link {
      color:black;
    }

    .class-link:hover {
      color:black;
    }

    .btn-outline-dark:hover {
      color: black;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
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
      <!-- Modal -->
      <div class="modal fade" id="classView" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-body p-0">
              <div class="row align-items-stretch">
                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(img/class-sport.png)" href="img/class-sport.png" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/class-sport2.png" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/class-sport3.png" title="Red digital smartwatch" data-lightbox="productview"></a></div>
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
                    <h2 class="h4">스포츠 클래스</h2>
                    <p class="text-muted">42,500 원</p>
                    <p class="text-small mb-4">
                      이런 분들을 위한 클래스예요<br>
                      내몸의 상태 점검이 필요한 분들<br>
                      어깨와 목이 항상 뻐근한 분들<br>
                      고관절, 골반통, 허리통증을 달고 사시는 분<br>
                      체중감량이 필요한 분, 몸에 탄력을 찾고 싶은 분들<br>
                    </p>
                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="detail.html">클래스 보기</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <!-- SHOP SIDEBAR-->
              <div class="col-lg-3 order-2 order-lg-1">
                <h5 class="text-uppercase mb-4">Category</h5>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/all">전체보기</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/sports">스포츠</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/beauty">뷰티</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/art">미술 · 공예 · 공연전시</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/cook">요리 · 베이킹</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/computer">컴퓨터 · IT</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/language">언어 · 스피치</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/category/revenu">재태크 · 창업</a></strong></div>
                <br><br>
                <h6 class="text-uppercase mb-4">Price range</h6>
                <div class="price-range pt-4 mb-5">
                  <div id="range"></div>
                  <div class="row pt-2">
                    <div class="col-6"><strong class="small font-weight-bold text-uppercase"></strong></div>
                    <div class="col-6 text-right"><strong class="small font-weight-bold text-uppercase"></strong></div>
                  </div>
                </div>
                <br>
                <h6 class="text-uppercase mb-3">Show Only</h6>
                <div class="custom-control custom-checkbox mb-1">
                  <input class="custom-control-input" id="customCheck1" type="checkbox">
                  <label class="custom-control-label text-small" for="customCheck1">진행 중인 클래스</label>
                </div>
                <div class="custom-control custom-checkbox mb-1">
                  <input class="custom-control-input" id="customCheck2" type="checkbox">
                  <label class="custom-control-label text-small" for="customCheck2">오픈 예정 클래스</label>
                </div>
                <div class="custom-control custom-checkbox mb-1">
                  <input class="custom-control-input" id="customCheck3" type="checkbox">
                  <label class="custom-control-label text-small" for="customCheck3">마감된 클래스</label>
                </div>
              </div>
              <!-- SHOP LISTING-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row mb-3 align-items-center">
                  <div class="col-lg-6 mb-2 mb-lg-0">
                    <!-- <p class="text-small text-muted mb-0">Showing 1–12 of 53 results</p> -->
                  </div>
                  <div class="col-lg-6">
                    <ul class="list-inline d-flex align-items-center justify-content-lg-end mb-0">
                      <li class="list-inline-item">
                        <select class="selectpicker ml-auto" name="sorting" data-width="200" data-style="bs-select-form-control" data-title="정렬기준">
                          <option value="popularity">최신등록순</option>
                          <option value="popularity">인기순</option>
                          <option value="low-high">높은가격순</option>
                          <option value="high-low">낮은가격순</option>
                        </select>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="row">
                  <!-- PRODUCT-->
                  <c:forEach  var="classList" items="${ requestScope.artClassList }">
                  <div class="col-lg-4 col-sm-6">
                    <div class="product text-center">
                     <c:choose>
                     <c:when test="${ classList.dicsionStatus eq 'F' }">
                     <div class="badge text-white badge-danger">D - ${classList.dDay} </div>
                     <div class="bottom_badgeCheer text-white badge-primary" style="color: black !important;">현재 응원 수 : 2</div>
                     </c:when>
                     </c:choose>
                      <div class="mb-3 position-relative">
                        <div class="badge text-white badge-"></div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="${pageContext.servletContext.contextPath }/${classList.titlePic}" alt="..."></a>
                        <div class="product-overlay">
                          <c:choose>
                           <c:when test="${ classList.dicsionStatus eq 'S' }">
                          <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart"></i></a></li>
                            <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classView" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                          </ul>
                           </c:when>
                           <c:when test="${ classList.dicsionStatus eq 'F' }">
                           <ul class="mb-0 list-inline">
                            <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="cart.html">응원하기</a></li>
                            <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classPreview" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                            </ul>
                           </c:when>
                          </c:choose>
                        </div>
                      </div>
                      <c:choose>
                      <c:when test="${ classList.dicsionStatus eq 'S' }">                      
                        <h6 style="margin-top: 15px;"> <a class="reset-anchor" href="detail.html">${ classList.title}</a></h6>
                      </c:when>
                      <c:when test="${ classList.dicsionStatus eq 'F' }">
                        <h6 style="margin-top: 42px;"> <a class="reset-anchor" href="detail.html">${ classList.title}</a></h6>
                      </c:when>
                      </c:choose>
                      <p class="small text-muted"><fmt:formatNumber value="${classList.price}" pattern="#,###"/> 원</p>
                    </div>
                  </div>
                  </c:forEach>
                  
				</div>
				
                
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