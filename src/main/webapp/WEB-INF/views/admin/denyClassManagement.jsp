<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>우리동네 클래스</title>
        <link
            href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
            rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet"/>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
            crossorigin="anonymous"></script>
        
    </head>
    <body class="sb-nav-fixed">

                       	<!-- header -->
		<%@ include file="commons/header.jsp" %>
		
        <div id="layoutSidenav">
        
        	<!-- sideBar & footer -->
			<%@ include file="commons/sideBarAndFooter.jsp" %>
            

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4" style="margin-top: 30px;">
                        <div class="card mb-4">

                            <div class="card-header" style="font-size: x-large;">
                                <i class="fas fa-table me-1"></i>
                                반려 클래스
                            </div>
                            <section class="py-5">
                                <div class="container">
                                <div class="">
                                    <div style="font-size: xx-large; color: red; font-weight: bold;margin-bottom: 30px;">&nbsp;&nbsp;반려된 클래스</div>
									<div class="col-lg-6">
										<!-- PRODUCT SLIDER-->
												<div class=""
													data-slider-id="1" style="display:flex;">
													<c:forEach var="classPic" items="${ classPic }">
													<c:set var="i" value="${i+1}"></c:set>
														<div class="" >
															<img class="" src="${ pageContext.servletContext.contextPath }/${ classPic.titlePic }" alt="..." style="width: 450px; height:300px;">
															<input type="hidden" name="titlePic${i}" value="${ classPic.titlePic }"/>
														</div>
													</c:forEach>
												</div>
									</div>
                                  <!-- PRODUCT DETAILS-->
                                  <div class="" >

                                    <h1>${classDetail.title }</h1><br>
                                    <p class="text-muted lead">강의 카테고리 :                                         
                                        <c:choose>
                                        	<c:when test="${classDetail.categoryNo  eq '1'}">스포츠</c:when>
                                        	<c:when test="${classDetail.categoryNo  eq '2'}">요리/베이킹</c:when>
                                        	<c:when test="${classDetail.categoryNo  eq '3'}">미술/공예/공연전시</c:when>
                                        	<c:when test="${classDetail.categoryNo  eq '4'}">뷰티</c:when>
                                        	<c:when test="${classDetail.categoryNo  eq '5'}">컴퓨터/IT</c:when>
                                        	<c:when test="${classDetail.categoryNo  eq '6'}">언어/스피치</c:when>
                                        	<c:otherwise>재테크/창업</c:otherwise>
                                        </c:choose> </p>
                                    <p class="text-muted lead">신청 날짜 : ${ classDetail.dateAplct } </p>
                                    <p class="text-muted lead">클래스 가격 : <fmt:formatNumber value="${ classDetail.price }" pattern="#,###"/> 원</p><br>
                                      <div style="display:flex;">
                                        <div style="margin-left:50px"><img src="${ pageContext.servletContext.contextPath }/resources/user/img/calendar.png" id="logoutIcon1">&nbsp;&nbsp;
                                        <c:choose>
                                        	<c:when test="${classDetail.clsType  eq 'O'}">원데이 클래스</c:when>
                                        	<c:otherwise>정규 클래스</c:otherwise>
                                        </c:choose>
                                        </div>
                                        <div style="margin-left:50px"><img src="${ pageContext.servletContext.contextPath }/resources/user/img/pin.png" id="logoutIcon1">&nbsp;&nbsp;${classDetail.address }</div>
                                        <div style="margin-left:50px"><img src="${ pageContext.servletContext.contextPath }/resources/user/img/clock.png" id="logoutIcon1">&nbsp;&nbsp;${classDetail.time }</div>
                                        <div style="margin-left:50px"><img src="${ pageContext.servletContext.contextPath }/resources/user/img/users.png" id="logoutIcon1">&nbsp;&nbsp;최대 4명 가능</div>
                                      </div>
                                  </div>
                                  <div>
	                            <button class="btn btn-primary" style="margin-left: 90%;margin-bottom: 20px;" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=reject'">뒤로가기</button>
	                            <br>
                            </div>
                                </div>
                            </div>
                            <div style="background-color: #f5f5f5; width: 1200px; height: 200px; margin: auto;font-size: large; padding: 3%;">
                                ${reason }
                            </div>
                              </section>
                        </div>
                    </div>
                </main>
            </div>

        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
            crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>