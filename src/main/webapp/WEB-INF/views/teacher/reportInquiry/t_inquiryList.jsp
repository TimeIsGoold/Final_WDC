<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    table {
      font-size: 13px;
    }

    a{
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
    <%@ include file="../commons/header.jsp" %>

    <div class="container">
    <%@ include file="../commons/sidebar.jsp" %>
<!--       <div class="col-lg-2 order-1 order-lg-1" style="float: left;">
        <h5 class="text-uppercase mb-4"><a class="nav-link" href="#" style="color: black; text-align: center;"><h2>홈</h1></a></h5>
        <div class="py-2 px-4 bg-light mb-3"><h5>클래스 관리</h5></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="t_classManagement.html">클래스 관리</a></li>
          <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><h5>매출/정산</h5></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="t_balanceList.html">정산내역 관리</a></li>
          <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><h5>문의하기</h5></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal mb-5">
          <li class="mb-2"><a class="reset-anchor" href="t_Inquiry.html">관리자 문의</a></li>
          <li class="mb-2"><a class="reset-anchor" href="t_inquiryList.html">문의내역 관리</a></li>
          <li class="mb-2"><a class="reset-anchor" href="t_FAQ.html">자주 묻는 질문</a></li>
          <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
      </div> -->
      
      <!-- main page -->
      <div class="col-lg-10 order-1 order-lg-1 mb-5 mb-lg-0" style="float: left;">
        <form>
          <div class="col-sm-12" id="content-formatting" style="float: left;">
            <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
              <P style="font-size: 20px; font-weight: bold;" >문의내역<P>
            </div>
            <div class="row" style="margin-left: 20px;">
              <div class='col-sm-2'>
                <select class="form-group" id="inquiryReply">
                	<option value="" selected disable hidden>선택하세요</option>
                	<option value="notyet">처리 중</option>
                	<option value="completed">답변완료</option>
                </select>
              </div>
         <!-- <div class='col-sm-6'>
                <div class="form-group">
                  <button type="submit" class="btn btn-primary">검색</button>
                  <button type="reset" class="btn btn-primary">초기화</button>                  
                </div>
              </div> -->
            </div>
            
            <div class="col-sm-12" id="content-formatting" style="float: left; padding-top: 20px; height: 800px">
              <table class="table table-hover" style="text-align: center;">
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>문의 날짜</th>
                    <th>답변 여부</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="QnAList" items="${ adminQnAList }" varStatus="status">
                  <tr>
                    <td>${ pageInfo.startRow + status.index }</td>
                    <td><a href="${pageContext.servletContext.contextPath }/teacher/teacherInquiryDetail?questinoNo=${QnAList.queNo }&answer=${QnAList.answerYn}">${ QnAList.queTitle }</a></td>
                    <td>${ QnAList.queDate }</td>
                    <c:choose>
                      <c:when test="${ QnAList.answerYn eq 'Y' }">
                      <td>답변완료</td>
                      </c:when>
                      <c:otherwise>
                      <td>처리중</td>
                      </c:otherwise>
                    </c:choose>
                  </tr>
                </c:forEach>
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
        </form>
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
  </div>
  
  <jsp:include page="../commons/footer.jsp"/>
</body>
<html>