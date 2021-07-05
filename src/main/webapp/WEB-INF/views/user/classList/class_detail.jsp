<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<%@include file="../commons/header.jsp"%>

<style>
.text-small {
	font-size: 15px !important;
	width: 860px;
}

small, .small {
	font-size: 15px;
}

.nav-tabs .nav-link {
	font-size: 1rem;
}

.ml-3 {
	padding-top: 5px;
}

.rounded-circle {
	border-radius: 50% !important;
	margin-top: 8px;
	width: 50px;
}

.class-category {
	font-size: 16px;
	font-weight: 600;
	color: black !important;
}

.datetimepicker {
	width: 200px;
	height: 40px;
	text-align: center;
	border: 0 solid black;
	border-bottom: 1px solid black !important;
}

small {
	font-size: 16px !important;
}

h3 {
	font-size: 22px !important;
}

input:focus {
	outline: 2px solid #d50000;
}

input:focus {
	outline: none;
}

.answer {
	background-color: #f1f5f7;
	padding: 0px;
	padding-left: 40px;
	padding-top: 15px;
	margin-top: -5px;
	width: 1020px !important;
	border-radius: 25px;
	height: 100px;
}

/* The Close Button */
.close {
	position: absolute;
	top: 15px;
	right: 35px;
	color: #f1f1f1;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

#myImg {
	cursor: pointer;
	transition: 0.3s;
	padding: 5px;
	width: 90px;
	height: 90px;
	border-radius: 20px;
}

#myImg:hover {
	opacity: 0.7;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100% !important; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
}

/* Caption of Modal Image */
#caption {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 10px 0;
	height: 150px;
}

/* Add Animation */
.modal-content, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.6s;
	animation-name: zoom;
	animation-duration: 0.6s;
}

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}
.media {
	width: 1000px;
}

.btn {
	text-decoration: none !important;
	width: 90px;
	height: 35px;
}

.p-0 {
	padding: 0 !important;
	padding-bottom: 10px !important;
	margin-left: 60px;
	margin-top: -4px;
}

.m-0 {
	margin: auto !important;
}

i {
	font-family: "Font Awesome 5 Free" !important;
}

* {
	font-family: 'Cafe24SsurroundAir' !important;
}

.feedbackArea {
	width: 700px;
	height: 100px;
	resize: none;
	margin-bottom: 50px;
	margin-left: 110px;
	display: flex;
}

.btn-dark:focus, .btn-dark.focus {
  background-color: #fef0ae !important;
  border: none !important;
  color: black !important;
}

.non{
	opacity:0;
	width: 0px;
}
									
.star-size{
	width:25px;
	height:25px;
	cursor:pointer;
}

.star-count{
	width: 400px;
    margin-left: 100px;
    padding: 10px;
    margin-bottom: 10px;
}

.file-upload{
/* 	content:url("${pageContext.servletContext.contextPath }/resources/user/img/picture.png");*/	
	width:1000px;
	margin-left: 55%;
    margin-bottom: 10px;
    font-size: 15px;
}

</style>
</head>
<body>
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
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/likeClass"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1" ></i></a></li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/login">로그인</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </header>
	  <%@include file="../commons/search.jsp" %>
	  <form action="${ pageContext.servletContext.contextPath }/user/payment" method="post">
		<section class="py-5">
			<div class="container">
				<div class="row mb-5">
					<div class="col-lg-6">
						<!-- PRODUCT SLIDER-->
						<div class="row m-sm-0">
							<div class="col-sm-2 p-sm-0 order-2 order-sm-1 mt-2 mt-sm-0">
								<div class="owl-thumbs d-flex flex-row flex-sm-column"
									data-slider-id="1">
									<c:forEach var="classPic" items="${ requestScope.classPic }">
									<c:set var="i" value="${i+1}"></c:set>
										<div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0">
											<img class="w-100" src="${ pageContext.servletContext.contextPath }/${ classPic.titlePic }" alt="...">
											<input type="hidden" name="titlePic${i}" value="${ classPic.titlePic }"/>
										</div>
									</c:forEach>
								</div>
							</div>
							<div class="col-sm-10 order-1 order-sm-2">
								<div class="owl-carousel product-slider" data-slider-id="1">
									<c:forEach var="classPic" items="${ requestScope.classPic }">
										<c:set value="${ i+1 }" var="i" ></c:set>
										<a class="d-block" href="${ pageContext.servletContext.contextPath }/${ classPic.titlePic }"
											data-lightbox="product" title="Product item ${i}"> <img
											class="img-fluid" src="${ pageContext.servletContext.contextPath }/${ classPic.titlePic }" alt="...">
										</a> 
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<!-- PRODUCT DETAILS-->
					<div class="col-lg-6">
					
						<!-- 별점 평균 -->
						<ul class="list-inline mb-2">
							<c:forEach var="i" begin="1" end="${ requestScope.classStar.avgScore }" step="1">
								<li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
							</c:forEach>
							<c:if test="${ requestScope.classStar.avgScore % 1 ne 0 }">
								<li class="list-inline-item m-0"><i class="fas fa-star-half-alt text-warning"></i></li>
							</c:if>
						</ul>
						<input type="hidden" name="title" value="${ requestScope.classDetail.title }"/>
						<h1>${ requestScope.classDetail.title }</h1>
						<p class="text-muted lead"><fmt:formatNumber value="${ requestScope.classDetail.price }" pattern="#,###"/> 원</p>
						<input type="hidden" name="price" value="${ requestScope.classDetail.price }"/>
						<ul class="list-unstyled small d-inline-block"
							style="font-size: 16px; display: flex !important; padding-top: 15px;">
							<div class="class-icon">
								<div>
									<img src="${pageContext.servletContext.contextPath }/resources/user/img/calendar.png" width="20px">&nbsp;&nbsp;
									<c:if test="${ requestScope.classDetail.clsType == 'R' }">
										<c:out value="정규" />
									</c:if>
									
									<c:if test="${ requestScope.classDetail.clsType == 'O' }">
										<c:out value="원데이" />
									</c:if>
								</div>
								<div style="padding-top: 15px">
									<img src="${pageContext.servletContext.contextPath }/resources/user/img/pin.png" width="22px">&nbsp;&nbsp;${ requestScope.classDetail.address }
								</div>
							</div>
							<div class="class-icon" style="padding-inline: 30px;">
								<div>
									<img src="${pageContext.servletContext.contextPath }/resources/user/img/clock.png" width="20px">&nbsp;&nbsp;${ requestScope.classDetail.time } 소요
								</div>
								<div style="padding-top: 15px">
									<img src="${pageContext.servletContext.contextPath }/resources/user/img/users.png" width="20px">&nbsp;&nbsp;최대 4명
								</div>
							</div>
							<div class="class-icon" style="padding-inline: 30px;">
								<div>
									<li class="list-inline-item m-0 p-0"><a
										class="btn btn-sm btn-outline-dark"><img
											src="${pageContext.servletContext.contextPath }/resources/user/img/heart.png" width="18px">&nbsp;&nbsp;찜</a></li>
								</div>
								<div>
									<li class="list-inline-item m-0 p-0"><a
										class="btn btn-sm btn-outline-dark"><img
											src="${pageContext.servletContext.contextPath }/resources/user/img/share.png" width="18px">&nbsp;&nbsp;공유</a></li>
								</div>
							</div>
						</ul>
					</div>
				</div>

				<c:if test="${ requestScope.classDetail.dicsionStatus eq 'S'}">
					<div style="background-color: white; width: 1110px; height: 90px; border-radius: 50px; text-align: center; padding-top: 22px;">
						<!-- 날짜, 시간 선택 -->
						<!-- <div style="font-size: 20px; font-weight: 600;">클래스 일정을 선택해 주세요.</div><br> -->
						<img src="${pageContext.servletContext.contextPath }/resources/user/img/date.png" style="width: 30px;">
						&nbsp;&nbsp;
						<input class="datetimepicker" id="datetimepicker" type="text" name="stringScheduleDate">
						&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<img src="${pageContext.servletContext.contextPath }/resources/user/img/group.png" style="width: 30px;">
						&nbsp;&nbsp;<input type="number" class="datetimepicker" name="ppl">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<li class="list-inline-item m-0 p-0">
							<button class="btn btn-sm btn-outline-dark" type="submit" style="height: 40px; width: 170px; font-size: 16px;"> 
								<input type="hidden" name="clsNo" value="${ requestScope.classDetail.clsNo }"/>신청하기 
							</button>
						</li>
					</div>
					</form>
					
		            <script>
		               let times = new Array();
		               let days = new Array();
		               
		               <c:forEach var="schedule" items="${ requestScope.schedule }">
		               	times.push("${schedule.scheduleStart}");
		               	days.push("${schedule.scheduleDate}");
		               </c:forEach>
		
		               let timeValues = times;
		               let dayValues = days;
		               
		               jQuery('#datetimepicker').datetimepicker({               
		                  datepicker : true,
		                  allowTimes : timeValues,
		                  format:'Y-m-d H:i',
		                  onChangeDateTime : function(dp, $input) {
		                     console.log($input.val());
		                     var datetimepicker2 = document.getElementById('datetimepicker2');
		                     
		                     $("#datetimepicker2")[0].value = $input.val();
		                     $("#datetimepicker2")[0].innerText = $input.val();
		                  },
		                  allowDates : days,
		                  formatDate:'Y-m-d',
		                  scrollMonth : false
				<c:if test="${ requestScope.classDetail.dicsionStatus eq 'S'}">
				<div style="background-color: white; width: 1110px; height: 90px; border-radius: 50px; text-align: center; padding-top: 22px;">
					<!-- 날짜, 시간 선택 -->
					<!-- <div style="font-size: 20px; font-weight: 600;">클래스 일정을 선택해 주세요.</div><br> -->
					<img src="${pageContext.servletContext.contextPath }/resources/user/img/date.png" style="width: 30px;">
					&nbsp;&nbsp;
					<input class="datetimepicker" id="datetimepicker" type="text" name="stringScheduleDate">
					&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<img src="${pageContext.servletContext.contextPath }/resources/user/img/group.png" style="width: 30px;">
					&nbsp;&nbsp;<input type="number" class="datetimepicker" name="ppl" max="4" min="1">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<li class="list-inline-item m-0 p-0">
						<button class="btn btn-sm btn-outline-dark" type="submit" style="height: 40px; width: 170px; font-size: 16px;"> 
							<input type="hidden" name="clsNo" value="${ requestScope.classDetail.clsNo }"/>신청하기 
						</button>
					</li>
				</div>
				</form>
				</c:if>
	            <script>
	               let times = new Array();
	               let days = new Array();
	               
	               <c:forEach var="schedule" items="${ requestScope.schedule }">
	               	times.push("${schedule.scheduleStart}");
	               	days.push("${schedule.scheduleDate}");
	               </c:forEach>
	
		               });
		            </script>
	            </c:if>
	            
	            <c:if test="${ requestScope.classDetail.dicsionStatus eq 'F'}">
		            <div style="background-color: white; width: 1110px; height: 90px; border-radius: 50px; text-align: center; padding-top: 22px;">
		            	클래스가 오픈되도록 응원해주세요.&nbsp;&nbsp;&nbsp;&nbsp;
		            	응원한 클래스가 오픈되면 <b>할인 쿠폰</b>까지!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		           		<li class="list-inline-item m-0 p-0">
							<button class="btn btn-sm btn-outline-dark" type="submit" style="height: 40px; width: 170px; font-size: 16px;"> 
								<input type="hidden" name="clsNo" value="${ requestScope.classDetail.clsNo }"/>클래스 응원하기 
							</button>
						</li>
					</div>
	            </c:if>

				<br>
				<br>
				<br>
				<!-- DETAILS TABS-->
				<ul class="nav nav-tabs border-0" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="description-tab" data-toggle="tab" href="#description"
						role="tab" aria-controls="description" aria-selected="true">상세보기</a></li>
					<li class="nav-item"><a class="nav-link" id="reviews-tab"
						data-toggle="tab" href="#reviews" role="tab"
						aria-controls="reviews" aria-selected="false">리뷰</a></li>
					<li class="nav-item"><a class="nav-link" id="reviews-tab"
						data-toggle="tab" href="#questions" role="tab"
						aria-controls="reviews" aria-selected="false">문의</a></li>
				</ul>

				<!-- 상세보기 탭 -->
				<div class="tab-content mb-5" id="myTabContent">
					<div class="tab-pane fade show active" id="description"
						role="tabpanel" aria-labelledby="description-tab">
						<div class="p-4 p-lg-5 bg-white" style="text-align: center;">
							<ul class="list-unstyled small d-inline-block"
								style="width: 900px;">
								<div style="text-align: left">
									<div style="width: 550px; height: 70px; margin-top: 20px;">
										<h3>※ 상세 정보</h3>
									</div>
									<pre style="font-size: 16px;">${ requestScope.classDetail.intro }</pre>
									<br>
									<hr>
									<br>
									<!-- 완성작 사진 -->
									<h3 style="padding-bottom: 20px;">※ 클래스 완성작</h3>
									- ${ requestScope.classDetail.cExpl }<br>
									<div style="width: 550px; display: flex; margin: auto; text-align: center; justify-content: space-between; font-size: 16px;">
										<c:forEach var="classPiece" items="${ requestScope.classPiece }">
											<div>
												<img src="${ pageContext.servletContext.contextPath }/resources/upload/${ classPiece.piecePic }" width="250px" height="250px">
												<br><br>${ classPiece.pieceTitle }
											</div>
										</c:forEach>
									</div>
									<br><br><br>
									<hr>
									<!-- 커리큘럼 -->
									<div>
										<br>
										<h3>※ 커리큘럼</h3>
										<br>
										<br>
										<c:forEach var="curriculum" items="${ requestScope.curriculum }">
											<div style="display: flex;">
												<img src="${pageContext.servletContext.contextPath }/resources/user/img/gradation10.png" width="25px" height="25px">
												<div style="font-size: large;">${ curriculum.curriStep }단계 : ${ curriculum.curriTitle }</div>
											</div>
											<div style="margin-left: 30px;">
												<small>${ curriculum.curriContent }</small>
											</div>
											<br><br>
										</c:forEach>
									</div>
									<br><br>
									<hr>
									<br>
									<!-- 추가 제공사항 및 유의사항 -->
									<div style="font-size: 16px;">
									<h3>※ 추가 제공사항 및 유의사항</h3>
										<br>
										${ requestScope.classDetail.addInfo }
									</div>
									<br><br><br>
									<hr>
									<br>
									<h3>※ 편의사항</h3>
									<br>
									<br>
									<div style="display: flex; width: 550px;">
									<img src="${pageContext.servletContext.contextPath }/resources/user/img/stayhome.png" alt="home"
											width="23px" height="23px;">
										<div style="font-size: 16px;">&nbsp;&nbsp;&nbsp;
											${ requestScope.classDetail.addSup }</div>
									</div>
									<br>
									<div style="display: flex; width: 550px;">
										<img src="${pageContext.servletContext.contextPath }/resources/user/img/wifi.png" alt="home" 
										width="23px" height="23px">
										<div style="font-size: 16px;">&nbsp;&nbsp;&nbsp;
											와이파이 가능합니다.</div>
									</div>
									<!-- 지도 보기 -->
									<div style="display: block; text-align: center;">
										<br>
										<br> <img
											src="${pageContext.servletContext.contextPath }/resources/user/img/화면 캡처 2021-06-23 011233.png">
									</div>
								</div>
							</ul>
						</div>
					</div>

					<!-- 리뷰 탭 -->
					<div class="tab-pane fade" id="reviews" role="tabpanel"
						aria-labelledby="reviews-tab">
						<div class="p-4 p-lg-5 bg-white">
							<button onclick="reviewWrite1();" type="button" class="btn btn-dark" style="margin-left: 88%; width: 112px; font-size: 15px;">리뷰 작성</button>
							<div id="reviewWrite" style="width: 200px; height: 180px; display: none; margin-left: -100px; margin-bottom: 70px;">
								<form action="${ pageContext.servletContext.contextPath }/user/classDetail" method="post">
									<div class="file-upload">
										▷ 수강 사진을 첨부해주세요. (1장 필수)&nbsp;:&nbsp;&nbsp;<input name="reviewPic" type="file">
									</div>
									<div class="star-count">
										▷ 클래스는 어떠셨나요?&nbsp;:&nbsp;
									  <label class="list-inline-item m-0">
									  	<input type="radio" class="non" name="star" id="star1" value="1" onclick="starScore1()">
									  	<img id="star-img1" class="star-size" src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png">
									  </label>
									  <label class="list-inline-item m-0">
									  	<input type="radio" class="non" name="star" id="star2" value="2" onclick="starScore2()">
									  	<img id="star-img2" class="star-size" src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png">
									  </label>
									  <label class="list-inline-item m-0">
									  	<input type="radio" class="non" name="star" id="star3" value="3" onclick="starScore3()">
									  	<img id="star-img3" class="star-size" src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png">
									  </label>
									  <label class="list-inline-item m-0">
									  	<input type="radio" class="non" name="star" id="star4" value="4" onclick="starScore4()">
									  	<img id="star-img4" class="star-size" src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png">
									  </label>
									  <label class="list-inline-item m-0">
									  	<input type="radio" class="non" name="star" id="star5" value="5" onclick="starScore5()">
									  	<img id="star-img5" class="star-size" src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png">
									  </label>
									</div>
									
									<script>
										function starScore1(){
											document.getElementById("star-img1").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img2").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
											document.getElementById("star-img3").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
											document.getElementById("star-img4").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
											document.getElementById("star-img5").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
										}
										function starScore2(){
											document.getElementById("star-img1").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img2").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img3").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
											document.getElementById("star-img4").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
											document.getElementById("star-img5").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";

										}
										function starScore3(){
											document.getElementById("star-img1").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img2").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img3").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img4").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
											document.getElementById("star-img5").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";

										}
										function starScore4(){
											document.getElementById("star-img1").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img2").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img3").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img4").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img5").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";

										}
										function starScore5(){
											document.getElementById("star-img1").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img2").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img3").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img4").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
											document.getElementById("star-img5").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										}
									</script>

									<textarea name="reviewContent"class="feedbackArea" style="font-size: 15px; border-color: lightgray" placeholder="리뷰를 작성해 주세요."></textarea>
									<button class="btn btn-dark" type="submit" style="display: flex; margin-top: -85px; margin-left: 820px; font-size: 15px; width: 80px;">작성
									</button>
								</form>
							</div>

							<!-- 리뷰 작성 눌렀을 시-->
							<script>
								function reviewWrite1() {
									if (document.getElementById("reviewWrite").style.display == "none") {
										document.getElementById("reviewWrite").style.display = "block";
									} else if (document
											.getElementById("reviewWrite").style.display == "block") {
										document.getElementById("reviewWrite").style.display = "none";
									}
								}
							</script>

							<div class="row">
								<div class="col-lg-8">
									<!-- <div style="display:flex; text-align: center; justify-content: space-evenly; margin: auto;">
						                      <div style="font-size: 18px;">클래스 후기<br><div style="font-size: 22px;">3</div></div>
						                      <div>클래스 후기<br>3</div>
						                 </div> 
						            -->
								<!-- 리뷰 -->
								<c:if test="${ !empty requestScope.review }">
									<c:forEach var="review" items="${ requestScope.review }">
										<div style="padding-bottom: 15px;">
											<div class="media mb-3">
												<img id="myImg" class="btn-img" src="${ pageContext.servletContext.contextPath }/${ review.reviewPic }">
												<div id="myModal" class="modal media mb-3">
													<span class="close">&times;</span> 
													<img class="modal-content" id="img01" src="${ pageContext.servletContext.contextPath }/${ review.reviewPic }">
													<div id="caption"></div>
												</div>
												<div class="media-body ml-3">
													<h6 class="mb-0 text-uppercase">${ review.userName }</h6>
													<p class="small text-muted mb-0 text-uppercase">${ review.reviewEnrollDate }</p>
													<!-- 별점 -->
													<ul class="list-inline mb-1 text-xs">
														<c:forEach var="i" begin="1" end="${ review.reviewScore }" step="1">
															<li class="list-inline-item m-0"><i class="fas fa-star text-warning"></i></li>
														</c:forEach>
													</ul>
													<p class="text-small mb-0 text-muted">${ review.reviewContent }</p>
												</div>
											</div>
											<!-- 답변 -->
											<div class="media mb-3 answer">
												<img class="rounded-circle" src="${ pageContext.servletContext.contextPath }/resources/upload/${ review.answer.tePic }" alt="" width="50" height="50">
												<div class="media-body ml-3">
													<h6 class="mb-0 text-uppercase">${ review.answer.teName }</h6>
													<p class="small text-muted mb-0 text-uppercase">${ review.answer.ansDate }</p>
													<p class="text-small mb-0 text-muted" style="margin-top: 7px;">${ review.answer.ansContent }</p>
													<br>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:if>
								<c:if test="${ empty requestScope.review }">
									<div style="margin-left: 390px; color: #6c757dde; padding: 40px;">등록된 리뷰가 없습니다.</div>
								</c:if>
							</div>
						</div>
					</div>
				</div>

					<!-- 문의 탭 -->
					<div class="tab-pane fade" id="questions" role="tabpanel"
						aria-labelledby="reviews-tab">
						<div class="p-4 p-lg-5 bg-white">
							<button onclick="inquiryWrite1();" type="button" class="btn btn-dark"
								style="margin-left: 88%; width: 112px; font-size: 15px;">문의
								작성</button>
							<div id="inquiryWrite"
								style="width: 200px; height: 180px; display: none; margin-left: -100px;">
									<textarea class="feedbackArea"
										style="font-size: 15px; border-color: lightgray"
										placeholder="문의 사항을 작성해 주세요."></textarea>
								<form action="">
									<button class="btn btn-dark" type="submit"
										style="display: flex; margin-top: -85px; margin-left: 820px; font-size: 15px; width: 80px;">작성
									</button>
								</form>
							</div>

							<!-- 문의 작성 눌렀을 시-->
							<script>
								function inquiryWrite1() {
									if (document.getElementById("inquiryWrite").style.display == "none") {
										document.getElementById("inquiryWrite").style.display = "block";
									} else if (document
											.getElementById("inquiryWrite").style.display == "block") {
										document.getElementById("inquiryWrite").style.display = "none";
									}
								}
							</script>

							<div class="row">
								<div class="col-lg-8">
									<!-- 문의 -->
									<c:if test="${ !empty requestScope.qna }">
										<c:forEach var="qna" items="${ requestScope.qna }">
											<div style="padding-bottom: 15px;">
												<div class="media mb-3">
													<div class="media-body ml-3">
														<h6 class="mb-0 text-uppercase">${ qna.userName }</h6>
														<div class="small text-muted mb-0 text-uppercase">${ qna.queDate }</div>
														<p class="text-small mb-0 text-muted">${ qna.queContent }</p>
													</div>
												</div>
												<!-- 답변 -->
												<div class="media mb-3 answer">
													<img class="rounded-circle" src="${ pageContext.servletContext.contextPath }/resources/upload/${ qna.answer.tePic }"  width="50" height="50">
													<div class="media-body ml-3">
														<h6 class="mb-0 text-uppercase">${ qna.answer.teName }</h6>
														<p class="small text-muted mb-0 text-uppercase">${ qna.answer.answerTime }</p>
														<p class="text-small mb-0 text-muted">${ qna.answer.answerContent }</p>
														<br>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:if>
									<c:if test="${ empty requestScope.qna }">
										<div style="margin-left: 390px; color: #6c757dde; padding: 40px;">등록된 문의가 없습니다.</div>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<br>
		<br>
		<br>

		<%@include file="../commons/footer.jsp"%>

	</div>
</body>
</html>