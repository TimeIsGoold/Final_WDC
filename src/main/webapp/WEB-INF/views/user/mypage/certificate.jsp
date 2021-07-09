<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
 	<%@include file="../commons/header.jsp" %>
 	    <%@ page import="java.sql.Timestamp" %>
    <%@ page import="java.text.SimpleDateFormat" %>

  <style>
      .infoInput{
          border: 1px solid black;
          border-radius: 5px;
          margin-bottom: 10px;
      }
    
      i{
        font-family: "Font Awesome 5 Free" !important;
      }

    *{font-family:'Cafe24SsurroundAir' !important;}
  </style>
  </head>
  <body>
                  <!-- 현재 시간  -->
<%Timestamp now = new Timestamp(System.currentTimeMillis());

SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd");

String strDate = formats.format(now); %>
<c:set value="<%=strDate %>" var="cDate"></c:set>
				
    <div class="page-holder bg-light">
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
      <!--  Modal -->
      <div class="modal fade" id="productView" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-body p-0">
              <div class="row align-items-stretch">
                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(img/product-5.jpg)" href="img/product-5.jpg" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/product-5-alt-1.jpg" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/product-5-alt-2.jpg" title="Red digital smartwatch" data-lightbox="productview"></a></div>
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
                    <h2 class="h4">Red digital smartwatch</h2>
                    <p class="text-muted">$250</p>
                    <p class="text-small mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut ullamcorper leo, eget euismod orci. Cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus. Vestibulum ultricies aliquam convallis.</p>
                    <div class="row align-items-stretch mb-4">
                      <div class="col-sm-7 pr-sm-0">
                        <div class="border d-flex align-items-center justify-content-between py-1 px-3"><span class="small text-uppercase text-gray mr-4 no-select">Quantity</span>
                          <div class="quantity">
                            <button class="dec-btn p-0"><i class="fas fa-caret-left"></i></button>
                            <input class="form-control border-0 shadow-0 p-0" type="text" value="1">
                            <button class="inc-btn p-0"><i class="fas fa-caret-right"></i></button>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="cart.html">Add to cart</a></div>
                    </div><a class="btn btn-link text-dark p-0" href="#"><i class="far fa-heart mr-2"></i>Add to wish list</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 시작 -->
      <div class="container" style="background-color: white;">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light1">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">수료증</h1>
              </div>
              <div class="col-lg-6 text-lg-right">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0" style="background: #fef0ae">
                    <li class="breadcrumb-item"><a href="complateClassDetail.html">돌아가기</a></li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>
        <section class="py-5">
          <div class="row">
            <div class="col-lg-8 mb-4 mb-lg-0" style="margin-left: 17%;">
                <h2>수료증</h2>

                <div class="bg-light px-4 py-3">
                    <div class="row align-items-center text-center">
                      <div class="col-md-6 mb-3 mb-md-0 text-md-left">
                          <i class="fas mr-2" style="display: flex;">
                            <h5 style="width: 200px; margin-top: 7px; height: 10px;">성명 : ${ userInfoDTO.userName }
                            </h5>
                          </i>
                        </div>
                    </div>
                </div>
                <hr>

                <div class="bg-light px-4 py-3">
                    <div class="row align-items-center text-center">
                      <div class="col-md-6 mb-3 mb-md-0 text-md-left">
                          <i class="fas mr-2" style="display: flex;">
                            <h5 style="width: 500px; margin-top: 7px; height: 10px;">수강 신청일 : ${ cDate }
                            </h5>
                          </i>
                        </div>
                    </div>
                </div>
                <hr>

                <div class="bg-light px-4 py-3">
                    <div class="row align-items-center text-center">
                      <div class="col-md-6 mb-3 mb-md-0 text-md-left">
                          <i class="fas mr-2" style="display: flex;">
                          <c:if test="${ userClassDTO.clsType eq 'R' }">
                            <h5 style="width: 500px; margin-top: 7px; height: 10px;">수강 기간 : ${ userClassDTO.startDate } ~ ${ userClassDTO.endDate }
                            </h5>
                          </c:if>
                          <c:if test="${ userClassDTO.clsType eq 'O' }">
                            <h5 style="width: 500px; margin-top: 7px; height: 10px;">수강 기간 : ${ userClassDTO.scheduleDate }
                            </h5>
                          </c:if>
                          </i>
                        </div>
                    </div>
                </div>
                <hr>

                <div class="bg-light px-4 py-3">
                    <div class="row align-items-center text-center">
                      <div class="col-md-6 mb-3 mb-md-0 text-md-left">
                          <i class="fas mr-2" style="display: flex;">
                            <h5 style="width: 500px; margin-top: 7px; height: 10px;">식별 번호 : ${ userInfoDTO.userNo }${ randomNum }
                            </h5>
                          </i>
                        </div>
                    </div>
                </div>
                <hr>

              <div class="table-responsive mb-4">
                <table class="table">
                  <thead class="bg-light">
                    <tr>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase">강의 이름</strong></th>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase" style="margin-left: 15px;">강사 명</strong></th>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase"></strong></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th class="pl-0 border-0" scope="row">
                        <div class="media align-items-center">
                          <c:if test="${ userClassDTO.clsType eq 'O' }">
                          <div class="media-body ml-3"><strong class="h6"><a class="reset-anchor animsition-link" href="detail.html">[원데이] ${ userClassDTO.title }</a></strong></div>
                          </c:if>                  
                          <c:if test="${ userClassDTO.clsType eq 'R' }">
                          <div class="media-body ml-3"><strong class="h6"><a class="reset-anchor animsition-link" href="detail.html">[정규] ${ userClassDTO.title }</a></strong></div>
                          </c:if>
                        </div>
                      </th>
                      <td class="align-middle border-0">
                        <div class="quantity">
                          <button class="dec-btn p-0"><i class="fas"></i></button>
                          <p style="width: 80px; ">${ userClassDTO.teName }</p>                        
                           <button class="inc-btn p-0"><i class="fas"></i></button>
                        </div>
                    </td>
                      <td class="align-middle border-0">
                          <div class="quantity">
                            <button class="dec-btn p-0"><i class="fas"></i></button>
                            <button class="inc-btn p-0"><i class="fas"></i></button>
                          </div>
                      </td>
                    </tr>
                </tbody>
            </table>
					<hr>
            <table class="table">
                <thead class="bg-light">
                  <tr>
                    <th class="border-0" scope="col"> <strong class="text-small text-uppercase">${ cDate }</strong></th>
                    <th class="border-0" scope="col"> <strong class="text-small text-uppercase" style="margin-left: 15px;"> </strong></th>
                    <th class="border-0" scope="col"> <strong class="text-small text-uppercase" style="margin-left: 200px;">위 수강 현황은 사실과 같음을 증명합니다. (주)우동클</strong></th>
                  </tr>
                </thead>
                <tbody>
 
              </tbody>
          </table>
          					<hr>
	<br>	<br>	<br>
	
	
	
              <button style="margin-left: 41%;" onclick="window.print()">인쇄하기 </button>



            </div>

          </div>
        </section>
      </div>
       	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>