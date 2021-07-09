<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

    <style>
      hr {
     	margin-top: 0;
     	margin-bottom: 0;
      }
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
        justify-content: normal !important;
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

      .form-control {
        display: inline-block;
      }

      .faq-box{
        padding-left: 20px;
        padding-right: 20px;
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
	<%@include file="../commons/header2.jsp" %>

      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 mb-0">고객 센터</h1>
                <p class="text-muted small text-uppercase mb-2"></p>
              </div>
            </div>
          </div>
        </section>
        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-0 order-lg-0">
                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/notice">공지사항</a></strong></div>
                <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/faq">자주 묻는 질문</a></strong></div>
                <c:if test="${ empty sessionScope.userNo }">               
	             	<div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')">1:1 문의</a></strong></div>
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')">나의 신고</a></strong></div>
             	</c:if>
                <c:if test="${ !empty sessionScope.userNo }">
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/inquiry">1:1 문의</a></strong></div>
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/report">나의 신고</a></strong></div>              
              	</c:if>
              </div> 
              <div id="cont_area" style="margin-top: -50px;"><!-- 본문 콘텐츠-->
                <div class="cont_inner" id="policy_page" style="min-height: 435px; text-align: left; float: left; width: 850px;">
                    <br><br>
                    <div style="font-weight: bold;">Q. 회원 가입 이후에 객실등록은 어떻게 하나요?</div>
                    <p class="faq-box" style="background: #dee2e657;">
                        <br>
                        (1) 회원 가입은 별도의 가입비용 발생 없이 가입자의 이메일, 비밀번호만 입력하면 누구나 가입이 가능합니다.<br>
                        (2) 가입 이후 4단계 (마이페이지 작성, 소개 작성, 정책 작성, 객실 등록)을 모두 완료하시면 등록 요청이 완료 됩니다.
                        <br><br>
                    </p>
                    <br>
                    <div style="font-weight: bold;">Q. 숙소 소개 작성시 주의사항이 궁금해요.</div>
                    <p class="faq-box" style="background: #dee2e657;">
                        <br>
                        (1) 정보 등록 항목은 필수 정보와 부가 정보로 나뉘며 부가 정보 항목은는 기입할 내용이 없으면 작성하지 않으셔도 됩니다.<br>
                        (2) 우측 끝 “?” 아이콘은 화면 뷰가 어떻게 앱에서 표시되는지 미리 볼 수 있는 화면 이미지 입니다.<br>
                        (3) 작성시 어려움이 있으실 경우, ‘예시 문구 및 화면보기’를 클릭하여 알맞은 예시를 확인할 수 있습니다.
                        <br><br>
                    </p>
                    <br>
                    <div style="font-weight: bold;">Q. 숙소 정책 설정 시 주의사항이 궁금해요.</div>
                    <p class="faq-box" style="background: #dee2e657;">
                        <br>
                        (1) 이용시간, 예약 유형, 예약 마감 시간 설정, 성수기 설정, 연박 할인 등 주요 정책(규칙)을 설정할 수 있습니다.<br>
                        (2) 예약 유형, 예약 마감 시간 설정, 연박 할인 설정은 11/15일 등록 및 변경이 가능합니다.
                        <br><br>
                    </p>
                </div>
            </div>

              </div>
            </div>
          </div>
        </section>
      </div>
      
      	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>