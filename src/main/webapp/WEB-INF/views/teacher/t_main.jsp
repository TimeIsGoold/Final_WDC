<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Boutique | Ecommerce bootstrap template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Lightbox-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/css/lightbox.min.css">
    <!-- Range slider-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.css">
    <!-- Bootstrap select-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- Owl Carousel-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.theme.default.css">
    <!-- Google fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  <style>
  
   html {

		position: relative;
		margin: 0;
		background: white;
	}
		
    body {
        font-size: 15px;
		min-height: 100%;
    }
    container {
    	height: 100%;
    }

    table {
      	text-align: center;
    }
    
    .card-header {
      	margin-bottom: 20px;
    }
    
    .btn {
      	border-radius: 5px;
      	background-color: #fef0ae;
      	border-color: #fef0ae;
    }

    image {
      	height: 200px;
      	width: 100px;
    }
    
    .rounded-circle {
        border-radius: 50%!important;
        margin-top: 8px;
        width: 50px;
        background-color: #fef0ae;
    }

    .thumbnail-file-area input[type=file] {
      	display:none;
    }

    .card-header {
      	font-weight: bold;
      	font-size: 17px;
    }

    .card-img-top {
      	width: 80%;
    }

    .card-body {
      	text-align: center;
    }

  </style>
  </head>
  <body>
  	
    <div class="wrapper">
		
		<!-- header -->
		<%@ include file="commons/header.jsp" %>

      	<div class="container">
        
        	<!-- sidebar -->
			<%@ include file="commons/sidebar.jsp" %>

        	<!-- main page -->
	        <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left;">
	          <div class="col-mb-12" id="notice">
	            <div class="card-header">공지사항</div>
	              <div class="card-body">
	                <table class="table table-hover">
	                  <thead>
	                    <tr>
	                      <th>번호</th>
	                      <th>제목</th>
	                      <th>등록일</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    <tr>
	                      <td>1</td>
	                      <td>[모집] 2021 신규 일정 작가 혜택 안내</td>
	                      <td>2021-06-18</td>
	                    </tr>
	                    <tr>
	                      <td>2</td>
	                      <td>개인정보 이용약관 변경 안내</td>
	                      <td>2021-06-10</td>
	                    </tr>
	                    <tr>
	                      <td>3</td>
	                      <td>코로나19 사태로 인한 클래스 인원 정책 업데이트</td>
	                      <td>2021-06-08</td>
	                    </tr>
	                    <tr>
	                      <td>4</td>
	                      <td>개인정보 이용약관 변경 안내</td>
	                      <td>2021-06-03</td>
	                    </tr>
	                    <tr>
	                      <td>5</td>
	                      <td>결제정보 변경안내</td>
	                      <td>2021-05-20</td>
	                    </tr>
	                  </tbody>
	                </table>
	                <nav aria-label="...">
	                  <ul class="pagination" style="justify-content: center;">
	                    <li class="page-item"><span class="page-link"><</span></li>
	                    <li class="page-item"><a class="page-link" href="#">1</a></li>
	                    <li class="page-item"><a class="page-link" href="#">2</a></li>
	                    <li class="page-item"><a class="page-link" href="#">3</a></li>
	                    <li class="page-item"><a class="page-link" href="#">4</a></li>
	                    <li class="page-item"><a class="page-link" href="#">5</a></li>
	                    <li class="page-item"><a class="page-link" href="#">></a></li>
	                  </ul>
	                </nav>
	              </div>
	            </div>
	          </div>        
	          
	          <!-- 메인 하단 프로필 및 기타 정보 -->
	          <div class="col-sm-4" id="content-formatting" style="float: left; margin-left: 6%;">
	            <div class="card-header">강사 프로필
	            </div>
	            <div class="card-body">
	              <img class="card-img-top" src="img/customer-2.png" alt="Card image"><br><br>
	              <h5>김민규</h5>
	              <p class="text-muted"></p>
	              <p class="text-warning"></p>
	              <p class="text-danger"></p>
	              <p class="text">기타 클래스<br>test123@</p>
	              <p class="text-primary"></p>
	              <p><button class="btn btn-primary" type="button" class="btn btn-primary" data-toggle="modal" data-target="#editProfile">편집</button></p>
	              <p style="padding-top: 50px;"></p>
	            </div>
	          </div>
	
	          <!-- 프로필편집 팝업 -->
	          <div id="editProfile"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	            <div class="modal-dialog">
	              <div class="modal-content" >
	                <div class="modal-header">
	                  <h4 class="modal-title" id="gridSystemModalLabel">프로필편집</h4>
	                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                </div>
	                <div class="modal-body">
	                  <div class="container">
	                    <h6>프로필사진 편집</h6><br>
	                    <div class="row">
	                      <div class="col-md-3"></div>
	                      <div class="content-img-area1 col-md-6" id="contentImgArea1" align="center">
	                        <img id="contentImg1" width="150" height="120">
	                        <button style="margin-top: 10px;">사진등록</button>
	                      </div>
	                      <div class="thumbnail-file-area">
	                        <input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this,1)">
	                      </div>
	                      <div class="col-md-3"></div>
	                    </div>
	                    <hr>
	                    <div class="form-group">
	                      <p>소개글 작성</p>
	                      <textarea class="form-control" rows="7"></textarea>
	                    </div>
	                  </div>
	                </div>
	                <div class="modal-footer" style="display: block;" align="center">
	                  <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 200px; border: 1px solid rgba(0, 0, 0, 0.25);">작성취소</button>
	                  <button type="button" class="btn btn-primary" style="width: 200px;">작성완료</button>
	                </div>
	              </div>
	            </div>
	          </div>
	          <!-- /프로필편집 팝업 -->
	
	          <div class="col-sm-4" style="float: left; margin-bottom: 30px; margin-left: 3%;">
	            <div class="card-header" id="profile">정산 정보
	            </div>
	            <div class="card-body" style="vertical-align: auto; height: 150px;">
	              <b>누적 정산 금액 : </b><br>10,000,000 원
	            </div>
	          </div>
	
	          <div class="col-sm-4" style="float: left; margin-left: 3%">
	            <div class="card-header" id="totalClass">클래스 정보         
	            </div>
	            <div class="card-body" style="margin-bottom: 300px">
	              <b>운영중인 클래스 수</b><br>
	              <p>3 개</p>
	            <div class="card-body"></div>
	              <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#classRegist">클래스 등록</button>
	            </div>
	          </div>
	        </div>

        	<!-- 클래스1단계 등록 팝업 -->
	        <div id="classRegist"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	          <div class="modal-dialog modal-lg">
	            <div class="modal-content">
	              <!-- <div class="modal-header">
	                <h4 class="modal-title" id="gridSystemModalLabel">스케쥴등록</h4>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	              </div> -->
	              <div class="modal-body" style="margin-top: 20px;">
	                <div class="container" style=" padding-left: 20px;">
	                  <strong style="background-color: #fef0ae; border-radius: 5px; padding: 10px 15px 10px 15px;">클래스등록하기</strong>란?
	                  <p style="font-size: 13px; margin: 20px 0 0 0;">우동클 '클래스'에서 작가님의 재능을 공유해보세요.</p>
	                  <p style="font-size: 13px;">간단한 기본정보와 스케쥴 등록으로 직접 내가 클래스를 만들고 운영할 수 있어요!</p>
	                  <br>
	                  <h6>클래스 등록은 이렇게 운영돼요</h6>
	                  <div class="row">
	                    <div class="col-md-2" style="text-align: center; margin-left: 20px;font-size: 13px; border: 1px solid; padding: 3px 13px 3px 13px; border-radius: 5px;">Step1<br>클래스 등록 및 심사</div>
	                    <div style="text-align: center; font-size: 13px; width: 35px; margin-top: 15px;">></div>
	                    <div class="col-md-2" style="text-align: center; font-size: 13px; border: 1px solid; padding: 3px 13px 3px 13px; border-radius: 5px;">Step2<br> 클래스 승인</div>
	                    <div style="text-align: center; font-size: 13px; width: 35px; margin-top: 15px">></div>
	                    <div class="col-md-2" style="text-align: center; font-size: 13px; border: 1px solid; padding: 3px 13px 3px 13px; border-radius: 5px;">Step3<br> 수업진행 및 정산</div>
	                  </div>
	                  <br><br><hr><br>
	                  <h6>클래스등록을 시작해볼까요?</h6>
	                  <p style="font-size: 12px;">등록하려는 클래스의 카테고리를 선택해주세요.</p>
	                  <div class="row">
	                    <div class="col-md-11" style="border: 2px solid #fef0ae; border-radius: 5px; padding: 10px 20px 10px 20px; font-size: 13px;" onclick="location.href='t_oneDay1_basicInfo.html'">
	                        	원데이<br>
	                        *원데이란? 수강생과 하루 & 최대 6시간 내외로 수업하는 경우 선택해주세요.
	                    </div>
	                    <div class="col-md-1">
	                    </div>
	                    <div class="col-md-11" style="border: 2px solid #fef0ae; border-radius: 5px; margin-top: 20px; padding: 10px 20px 10px 20px; font-size: 13px;" onclick="location.href='t_regCourse1_basicInfo.html'">
	                      	정규과정<br>
	                      *정규과정이란? 수강생과 최소 2일 이상 수업하는 경우 선택해주세요.
	                    </div>
	                    <div class="col-md-1">
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <br><br>
	              <!-- <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	                <button type="button" class="btn btn-primary">다음</button>
	              </div> -->
	            </div>
	          </div>
	        </div>
        	<!-- /클래스1단계 등록 팝업 -->
      
      <!-- JavaScript files-->
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>

      		<!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
    
 	<!-- footer -->
	<!-- <%@ include file="commons/footer.jsp" %> -->
  	
  </body>
</html>