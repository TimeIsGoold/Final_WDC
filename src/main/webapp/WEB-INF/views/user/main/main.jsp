<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<%@include file="../commons/header.jsp" %>
	
    <style>
      .w-100 {
        width: 255px;
        height: 230px;
      }

      /* .reset-anchor{
        overflow:hidden;
        white-space:nowrap;
        text-overflow:ellipsis; 
        width: 200px;
      } */

      .pb-5, .py-5 {
        padding-bottom: 0rem!important;
      }

      h5, .h5 {
        font-size: 1.3rem;
      }

      .btn-outline-dark:hover {
        color: black;
        background-color: #fef0ae !important;
        border-color: #fef0ae !important;
      }

      fieldset {
        position: relative;
        display: inline-block;
        padding: 0 0 0 40px;
        background: #fff;
        border: none;
        border-radius: 5px;
      }

      input, button {
        position: relative;
        width: 500px;
        height: 50px;
        padding: 0;
        display: inline-block;
        float: left;
      }

      input {
        color: #666;
        z-index: 2;
        border: 0 none;
      }
      input:focus {
        outline: 0 none;
      }
      input:focus + button {
        -webkit-transform: translate(0, 0);
            -ms-transform: translate(0, 0);
                transform: translate(0, 0);
        -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
      }
      input:focus + button .fa {
        -webkit-transform: translate(0px, 0);
            -ms-transform: translate(0px, 0);
                transform: translate(0px, 0);
        -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
        color: #fff;
      }

      button {
        z-index: 1;
        width: 50px;
        border: 0 none;
        background: #ceb980;
        cursor: pointer;
        border-radius: 0 5px 5px 0;  
        -webkit-transform: translate(-50px, 0);
            -ms-transform: translate(-50px, 0);
                transform: translate(-50px, 0);
        -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
      }

      .hover-btn:hover{
        color: #ffc107;
      }
      
      i{
		font-family: "Font Awesome 5 Free" !important;
	   }
		
	  *{font-family:'Cafe24SsurroundAir' !important;}
	  
	  a:hover{
	  	color: #ffc107 !important;
	  }
	  
	   h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
    margin-bottom: 0.5rem;
    font-family: inherit;
    font-weight: 900 !important;
    line-height: 1.2;
    color: inherit;
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
                <li class="nav-item"><a class="nav-link" href="likeClassList.html"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1" ></i></a></li>
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
		
      <!-- HERO SECTION-->
      <div class="container">
        <section class="hero pb-3 bg-cover bg-center d-flex align-items-center" style="background: url(${pageContext.servletContext.contextPath }/resources/user/img/hero-banner-alt.jpg)">
          <div class="container py-5">
            <div class="row px-4 px-lg-5">
              <div class="col-lg-6">
                <p class="text-muted small text-uppercase mb-2">New Inspiration 2020</p>
                <h1 class="h2 text-uppercase mb-3">응원한 클래스가 개설되면 파격 할인 쿠폰 제공!!</h1><a class="btn btn-dark" href="shop.html">Browse collections</a>
              </div>
            </div>
          </div>
        </section>

        <!-- 신규 클래스 -->
        <section class="py-5">
          <header>
            <p class="small text-muted small text-uppercase mb-1">오늘 오픈했어요!</p>
            <h2 class="h5 text-uppercase mb-4">따끈따끈 신규 클래스</h2>
          </header>
          <div class="row">
            <!-- PRODUCT-->
            <c:forEach  var="newClassList" items="${ requestScope.newClassList }">
            <c:set value="${ i+1 }" var="i"></c:set>
              <!-- Modal -->
		      <div class="modal fade" id="classView${i}" tabindex="-1" role="dialog" aria-hidden="true">
		        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		          <div class="modal-content">
		            <div class="modal-body p-0">
		              <div class="row align-items-stretch">
		                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(${ pageContext.servletContext.contextPath }/${ newClassList.titlePic })" href="${ pageContext.servletContext.contextPath }/${ newClassList.titlePic }" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/class-sport2.png" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/class-sport3.png" title="Red digital smartwatch" data-lightbox="productview"></a></div>
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
		                    <h2 class="h4">${ newClassList.title }</h2>
		                    <p class="text-muted"><fmt:formatNumber value="${ newClassList.price }" pattern="#,###"/> 원</p>
		                    <p class="text-small mb-4">${ newClassList.simpleIntro }</p>
		                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="${ pageContext.servletContext.contextPath }/class/classDetail">클래스 보기</a></div>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
            <div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product text-center">
                <div class="position-relative mb-3">
                  <div class="badge text-white badge-info">New</div><a class="d-block" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ newClassList.clsNo }"><img class="img-fluid w-100" src="${ pageContext.servletContext.contextPath }/${ newClassList.titlePic }" alt="..."></a>
                  <div class="product-overlay">
                    <ul class="mb-0 list-inline" style="font-family: Libre Franklin !important;">
                      <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                      <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" data-toggle="modal" data-target="#classView${i}"><i class="fas fa-expand icon1"></i></a></li>
                    </ul>
                  </div>
                </div>
                <h6> <a class="reset-anchor" href="detail.html">${ newClassList.title }</a></h6>
                <p class="small text-muted"><fmt:formatNumber value="${ newClassList.price }" pattern="#,###"/> 원</p>
              </div>
            </div>
            </c:forEach>
           </div>
          </section>

          <!-- 리뷰 많은 클래스  -->
          <section class="py-5">
            <header>
              <p class="small text-muted small text-uppercase mb-1">우동클 별점왕★</p>
              <h2 class="h5 text-uppercase mb-4">우동클 인기 클래스</h2>
            </header>
            <div class="row">
            <!-- PRODUCT-->
            <c:forEach  var="topClassList" items="${ requestScope.topClassList }">
            <c:set value="${ j+5 }" var="j"></c:set>
             <!-- Modal -->
		      <div class="modal fade" id="classView${j}" tabindex="-1" role="dialog" aria-hidden="true">
		        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		          <div class="modal-content">
		            <div class="modal-body p-0">
		              <div class="row align-items-stretch">
		                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(${ pageContext.servletContext.contextPath }/${ topClassList.titlePic })" href="${ pageContext.servletContext.contextPath }/${ topClassList.titlePic }" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/class-sport2.png" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/class-sport3.png" title="Red digital smartwatch" data-lightbox="productview"></a></div>
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
		                    <h2 class="h4">${ topClassList.title }</h2>
		                    <p class="text-muted"><fmt:formatNumber value="${ topClassList.price }" pattern="#,###"/> 원</p>
		                    <p class="text-small mb-4">${ topClassList.simpleIntro }</p>
		                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="detail.html">클래스 보기</a></div>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
            <div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product text-center">
                <div class="position-relative mb-3">
                  <a class="d-block" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ topClassList.clsNo }"><img class="img-fluid w-100" src="${ pageContext.servletContext.contextPath }/${ topClassList.titlePic }" alt="..."></a>
                  <div class="product-overlay">
                    <ul class="mb-0 list-inline" style="font-family: Libre Franklin !important;">
                      <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                      <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" data-toggle="modal" data-target=#classView${j}><i class="fas fa-expand icon1"></i></a></li>
                    </ul>
                  </div>
                </div>
                <h6> <a class="reset-anchor" href="detail.html">${ topClassList.title }</a></h6>
                <p class="small text-muted"><fmt:formatNumber value="${ topClassList.price }" pattern="#,###"/> 원</p>
              </div>
            </div>
            </c:forEach>
           </div>
          </section>

            <!-- 오픈 예정 클래스  -->
          <section class="py-5">
            <header>
              <p class="small text-muted small text-uppercase mb-1">새로운 클래스가 열려요!</p>
              <h2 class="h5 text-uppercase mb-4">오픈 예정 클래스</h2>
            </header>
            <div class="row">
            <!-- PRODUCT-->
            <c:forEach  var="cheerClassList" items="${ requestScope.cheerClassList }">
            <c:set value="${ k+9 }" var="k"></c:set>
             <!-- Modal -->
		      <div class="modal fade" id="classView${k}" tabindex="-1" role="dialog" aria-hidden="true">
		        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		          <div class="modal-content">
		            <div class="modal-body p-0">
		              <div class="row align-items-stretch">
		                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(${ pageContext.servletContext.contextPath }/${ cheerClassList.titlePic })" href="${ pageContext.servletContext.contextPath }/${ cheerClassList.titlePic }" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/class-sport2.png" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/class-sport3.png" title="Red digital smartwatch" data-lightbox="productview"></a></div>
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
		                    <h2 class="h4">${ cheerClassList.title }</h2>
		                    <p class="text-muted"><fmt:formatNumber value="${ cheerClassList.price }" pattern="#,###"/> 원</p>
		                    <p class="text-small mb-4">${ cheerClassList.simpleIntro }</p>
		                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="detail.html">클래스 응원하기</a></div>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>      
			<div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product text-center">
                <div class="position-relative mb-3">
                  <a class="d-block" href="${ pageContext.servletContext.contextPath }/user/classDetail/${ cheerClassList.clsNo }"><img class="img-fluid w-100" src="${ pageContext.servletContext.contextPath }/${ cheerClassList.titlePic }" alt="..."></a>
                  <div class="product-overlay">
                    <ul class="mb-0 list-inline" style="font-family: Libre Franklin !important;">
                      <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                      <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" data-toggle="modal" data-target=#classView${k}><i class="fas fa-expand icon1"></i></a></li>
                    </ul>
                  </div>
                </div>
                <h6> <a class="reset-anchor" href="detail.html">${ cheerClassList.title }</a></h6>
                <p class="small text-muted"><fmt:formatNumber value="${ cheerClassList.price }" pattern="#,###"/> 원</p>
              </div>
            </div>
           </c:forEach>
          </div>
         </section>
         <br><br>
 		

        <!-- SERVICES-->
        <section class="py-5 bg-light" style="padding-bottom: 3rem!important;">
          <div class="container">
            <div class="row text-center">
              <div class="col-lg-4 mb-3 mb-lg-0">
                <div class="d-inline-block">
                  <div class="media align-items-end">
                    <svg class="svg-icon svg-icon-big svg-icon-light">
                      <use xlink:href="#delivery-time-1"> </use>
                    </svg>
                    <div class="media-body text-left ml-3">
                      <h6 class="text-uppercase mb-1">Free shipping</h6>
                      <p class="text-small mb-0 text-muted">Free shipping worlwide</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 mb-3 mb-lg-0">
                <div class="d-inline-block">
                  <div class="media align-items-end">
                    <svg class="svg-icon svg-icon-big svg-icon-light">
                      <use xlink:href="#helpline-24h-1"> </use>
                    </svg>
                    <div class="media-body text-left ml-3">
                      <h6 class="text-uppercase mb-1">24 x 7 service</h6>
                      <p class="text-small mb-0 text-muted">Free shipping worlwide</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="d-inline-block">
                  <div class="media align-items-end">
                    <svg class="svg-icon svg-icon-big svg-icon-light">
                      <use xlink:href="#label-tag-1"> </use>
                    </svg>
                    <div class="media-body text-left ml-3">
                      <h6 class="text-uppercase mb-1">Festival offer</h6>
                      <p class="text-small mb-0 text-muted">Free shipping worlwide</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>        
      </div>
      <br><br><br>
      
        	<%@include file="../commons/footer.jsp" %>

    </div>
  </body>
</html>