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
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
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
    }

    table {
      font-size: 15px;
      text-align: center;
    }

    a {
      color: black;
    }

    .btn {
      border-radius: 5px !important;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
    
    .btn-primary:hover {
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
  </style>
</head>

<body>
  <div class="page-holder">
    <!-- navbar-->
    <jsp:include page="../commons/header.jsp"/>

    <div class="container">
      
        <!-- sidebar -->
        <jsp:include page="../commons/sidebar.jsp"/>
      
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left; padding-bottom: 50px;">
        
        <!-- 상단 메뉴바 -->
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classDetail.html" style="font-size: 15; color: black"><b>상세정보</b></a>
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classReview.html" style="font-size: 15; color: black"><b>후기</b></a>          
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classInquiry.html" style="font-size: 15; color: black"><b>고객문의</b></a>
        </div>
        <div class="col-sm-3" id="content-formatting" style="float: left; margin: auto;">
          <a href="t_classAttendance.html" style="font-size: 15; color: black"><b>수강생 관리</b></a>
        </div>            
      </div>  
      
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left;">
        <form>
          <div class="col-sm-12" id="content-formatting" style="float: left;">
            <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
              <p style="font-size: 20px; font-weight: bold;">클래스 관리하기</p>
            </div>
            <div class="row" style="margin-left: 40px;">
              <div class='col-sm-12'><a>모집기간 검색</a>
              </div><br>
              <div class='col-sm-3'>
                <div class="form-group">
                  <input type="date" id="startDate" class="form-control">
                </div>
              </div>
              <div class='col-sm-3'>
                <div class="form-group">
                  <input type="date" id="EndDate" class="form-control">
                </div>
              </div>
              
              <div class="row">     
                <div class='col-sm-3' style="padding-top: 20px; float: left;">
                  <a style="margin-left: 15px;">클래스 타입</a>
                  <div class="col-auto my-1">
                    <select class="custom-select mr-sm-2" id="classType">
                      <option selected>선택</option>
                      <option value="1">개별일정</option>
                      <option value="2">요일반복</option>
                      <option value="3">상시모집</option>
                      <option value="4">정규모집</option>
                    </select>
                  </div>
                </div>

                <div class='col-sm-3' style="padding-top: 20px; float: left;">
                  <a style="margin-left: 15px;">클래스 상태</a>              
                  <div class="col-auto my-1">
                    <label class="mr-sm-3 sr-only" for="classStatus"></label>
                      <select class="custom-select mr-sm-2" id="classStatus">
                        <option selected>선택</option>
                        <option value="1">모집중</option>
                        <option value="2">마감</option>
                        <option value="3">완료</option>
                        <option value="4">미달</option>
                      </select>  
                  </div>
                </div>
                <div class='col-sm-5' style="padding-top: 20px; float: left;">
                  <h5 style="margin-left: 15px;"></h5>
                  <div class="col-auto my-1" style="padding-top: 15px;">
                    <label class="mr-sm-3 sr-only" for="inlineFormCustomSelect"></label>
                    <!-- <input type="text" class="form-control" id="search"> -->
                    <button type="submit" class="btn btn-primary">검색</button>
                    <button type="reset" class="btn btn-primary">초기화</button>
                  </div>
                </div>
                <div class='col-sm-5' style="padding-top: 30px; margin: auto;">
                </div>
              </div>
              
              <!-- 결과 게시판 -->
              <div class="col-sm-12" id="content-formatting" style="float: left; padding-top: 30px; padding-bottom: 280px">
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th>번호</th>
                      <th>클래스 이름</th>
                      <th>인원</th>
                      <th>타입</th>
                      <th>가격</th>
                      <th>상태</th>
                      <th>심사상태</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td><a href="t_classDetail.html">6가지맛 마카롱 클래스</a></td>
                      <td>2/4</td>
                      <td>개별일정</td>
                      <td>60,000원</td>
                      <td>모집중</td>
                      <td>승인</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td><a href="t_classDetail.html">호두, 초코 쿠키 클래스</a></td>
                      <td>4/4</td>
                      <td>요일반복</td>
                      <td>50,000원</td>
                      <td>마감</td>
                      <td>승인</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td><a href="t_classDetail.html">정규 제빵 클래스</a></td>
                      <td>4/4</td>
                      <td>정규모집</td>
                      <td>240,000원</td>
                      <td>완료</td>
                      <td>승인</td>
                    </tr>
                    <tr>
                      <td>4</td>
                      <td><a href="t_classDetail.html">컵케익 만들기 클래스</a></td>
                      <td>0/4</td>
                      <td>개별일정</td>
                      <td>80,000원</td>
                      <td>미달</td>
                      <td>승인</td>
                    </tr>
                    <tr>
                      <td>5</td>
                      <td><a href="t_classDetail.html">6가지 맛 마카롱 클래스</a></td>
                      <td>0/4</td>
                      <td>개별일정</td>
                      <td>100,000원</td>
                      <td></td>
                      <td>반려</td>
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
              <!-- 결과 게시판 끝 -->
            </div>
          </div>
        </form>
      </div>

    </div>
  </div>
          
  
    <!-- JavaScript files-->
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>
  
  <jsp:include page="../commons/footer.jsp"/>
</body>
<html>