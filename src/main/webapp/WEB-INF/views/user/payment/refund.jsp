<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
 	<%@include file="../commons/header.jsp" %>

    <%@ page import="java.sql.Timestamp" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<style>
.overlay {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
  z-index: 900;
}

.overlay:target {
  visibility: visible;
  opacity: 1;
}

.h4{
	text-align: center;
	font-size: 2em;
}

.payAgree{
	background-color: #6eceda;
	color: white;
	border-style: none;
	box-shadow: 0 3px 0 #0e8c73;
	border-radius: 10px;
	padding: 5px;
}

i{
        font-family: "Font Awesome 5 Free" !important;
      }

*{font-family:'Cafe24SsurroundAir' !important;}

.bg-light1 {
  background-color: #f8f9fa !important;
}
a:hover{
  color: #ffc107 !important;
}
.table {
    font-size: 15px;
}

.text-small {
    font-size: 15px !important;
}

.mb-4, .my-4 {
    margin-bottom: 0.5rem!important;
}

p {
    margin-top: 0;
    margin-bottom: 0.5rem;
}

h5, .h5 {
    font-size: 18px;
    margin-bottom: 1.2rem;
}
    </style>
  </head>
  <body>
<!-- 현재 시간  -->
<%Timestamp now = new Timestamp(System.currentTimeMillis());

SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd");

String strDate = formats.format(now); %>
<c:set value="<%=strDate %>" var="cDate"></c:set>
				
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
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/likeClass"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1" ></i></a></li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/login">로그인</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </header>
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light1">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">환불</h1>
              </div>
              <div class="col-lg-6 text-lg-right">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0">
                    <li class="breadcrumb-item"><a href="mypageScheduledClass.html">돌아가기</a></li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>
        <section class="py-5">
          <div class="row">
            <div class="col-lg-8 mb-4 mb-lg-0">
              <!-- CART TABLE-->
              <div class="table-responsive mb-4">
                <table class="table">
                  <thead class="bg-light">
                    <tr>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase">신청한 강의</strong></th>
                      <th class="border-0" scope="col"> </th>
                      <th class="border-0" scope="col"> </th>
                      <th class="border-0" scope="col"> </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th class="pl-0 border-0" scope="row">
                        <div class="media align-items-center"><a class="reset-anchor d-block animsition-link" href="detail.html"><img src="img/class-sport.png" alt="..." width="70" height="60px" style="border-radius: 5px;"/></a>
                          <div class="media-body ml-3"><strong class="h6"><a class="reset-anchor animsition-link" href="detail.html">리포머 하나면 가성비 홈짐 완성! 하루 30분 홈 리포머 필라테스</a></strong></div>
                        </div>
                      </th>
                      <td class="align-middle border-0">
                          <div class="quantity">
                            <button class="dec-btn p-0"><i class="fas"></i></button>
                            <input class="border-0 shadow-0 p-0" type="text" value="1"/> 명
                            <button class="inc-btn p-0"><i class="fas"></i></button>
                          </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <div class="table-responsive mb-4">
                  <table class="table">
                    <tbody>
                      <tr>
                        <th class="pl-0 border-0" scope="row" style="width: 140px;">
                          &nbsp;&nbsp;&nbsp;&nbsp;신청 날짜
                        </th>
                        <td style="border-top: 0px !important">
                          <input type="text" style="width: 250px;" id="name" class="refunderInfo" value="2021-06-30" disabled>
                        </td>
                      </tr>
                      <tr>
                        <th class="pl-0 border-0" scope="row">
                          &nbsp;&nbsp;&nbsp;&nbsp;신청 시간
                        </th>
                        <td style="border-top: 0px !important">
                          <input type="text" style="width: 250px;" id="phone" class="refunderInfo" value="16:00 ~ 18:00" disabled>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <!-- 신청자 정보-->
              <table class="table">
                <thead class="bg-light">
                  <tr>
                    <th class="border-0" scope="col"> <strong class="text-small text-uppercase">신청자 정보</strong></th>
                    <th class="border-0" scope="col"> </th>
                    <th class="border-0" scope="col"> </th>
                    <th class="border-0" scope="col"> </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th class="pl-0 border-0" scope="row" style="width: 140px;">
                      &nbsp;&nbsp;&nbsp;&nbsp;이름
                    </th>
                    <td style="border-top: 0px !important">
                      <input type="text" placeholder="신청자 이름을 입력해 주세요" style="width: 250px;" id="name" class="refunderInfo" value="한 불" disabled>
                    </td>
                  </tr>
                  <tr>
                    <th class="pl-0 border-0" scope="row">
                      &nbsp;&nbsp;&nbsp;&nbsp;휴대폰번호
                    </th>
                    <td style="border-top: 0px !important">
                      <input type="text" placeholder="휴대폰 번호를 입력해 주세요" style="width: 250px;" id="phone" class="refunderInfo" value="010-1234-5678" disabled>
                    </td>
                  </tr>
                  <tr>
                    <th class="pl-0 border-0" scope="row">
                      &nbsp;&nbsp;&nbsp;&nbsp;입금 은행
                    </th>
                    <td style="border-top: 0px !important">
                      <input type="text" placeholder="계좌 번호를 입력해 주세요" style="width: 250px;" id="phone" class="refunderInfo" >
                    </td>
                  </tr>
                  <tr>
                    <th class="pl-0 border-0" scope="row">
                      &nbsp;&nbsp;&nbsp;&nbsp;환불 계좌
                    </th>
                    <td style="border-top: 0px !important">
                      <select style="width: 200px;">
                        <option>        </option>
                        <option>농협은행</option>
                        <option>국민은행</option>
                        <option>기업은행</option>
                        <option>우리은행</option>
                        <option>신한은행</option>
                        <option>카카오뱅크</option>
                      </select>
                    </td>
                  </tr>
                  <tr>
                    <th class="pl-0 border-0" scope="row">
                      &nbsp;&nbsp;&nbsp;&nbsp;예금주
                    </th>
                    <td style="border-top: 0px !important">
                      <input type="text" placeholder="" style="width: 250px;" id="phone" class="refunderInfo" value="한 불" disabled>
                    </td>
                  </tr>
                </tbody>
              </table>
              <br>
              <!--강의 진행 상태-->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left"><b>강의 진행 상태</b>
                </div>
                <c:choose>
                	<c:when test="${ requestScope.userClassDTO.clsType eq 'R'}">
                		<c:if test="${ requestScope.userClassDTO.startDate < cDate}">
                		<div style="margin-left: 20px;"> <input type="text" disabled style="border: 1px solid black; border-radius: 5px; width: 150px;" value="강의 진행중" class="refunderInfo"></div>
                		</c:if>
                	</c:when>
                	<c:otherwise>
                		<div style="margin-left: 20px;"> <input type="text" disabled style="border: 1px solid black; border-radius: 5px; width: 150px;" value="강의 진행 전" class="refunderInfo"></div>                	
                	</c:otherwise>
                </c:choose>
			  </div>
              </div>
              <br>
              <!-- 취소 사유 선택 -->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left"><b>취소 사유 선택</b>
                </div>
                <div style="margin-left: 20px;"></div>
                </div>
              </div>
              <div class="refundBackground"><input type="radio" value="refund1" name="refundReason" class="refundReasonInput"> 개인 일정</div>
              <br>
              <div class="refundBackground"><input type="radio" value="refund1" name="refundReason" class="refundReasonInput"> 작가와의 일정 협의 실패</div>
              <br>
              <div class="refundBackground"><input type="radio" value="refund1" name="refundReason" class="refundReasonInput"> 작가와 연락이 안됨</div>
              <br>
              <div class="refundBackground"><input type="radio" value="refund1" name="refundReason" class="refundReasonInput"> 다른 클래스 구매 위해</div>
              <br>
              <div class="refundBackground"><input type="radio" value="refund1" name="refundReason" class="refundReasonInput"> 작가님의 요청</div>
              <br>
              <div class="refundBackground" style=""><input type="radio" value="refund1" name="refundReason" class="refundReasonInput">&nbsp; 기타 
              </div>
              <textarea style="resize: none; width: 620px; height: 100px; margin-top: 40px; margin-left: 45px; border-radius: 5px;" placeholder="기타 사유를 작성해 주세요"></textarea>
              <br><br>
              <!-- 약관 동의 -->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left"><b>환불 약관</b></div>
                </div>
              </div>
              <textarea style="width: 730px; height: 230px; margin-top: 10px; font-size: 12px">
                - **강좌 공통 안내**
                - 모든 상품은 정해진 수강기간 동안 신청하신 강좌를 반복하여 수강할 수 있습니다.
                - 수강기간이 종료 전 연장 상품, 종료된 후 재수강 상품을 구매할 수 있습니다 (일부상품 제외).
                - OS(윈도우,맥,리눅스)에 관계 없이 크롬브라우저에서 인강수강이 가능합니다.
                - 모바일 기기는 고객센터 > FAQ에 명시된 지원 기기일 때 정상 이용 가능합니다.
                - **일반강좌 구매 안내**
                - 일반 강좌(단과 강좌)는 결제일로부터 7일 이후에 자동 시작됩니다. (시작일 선택시 7일 이전 수강 가능)
                - **프리패스 및 패키지 상품 구매 안내 (프리패스, BIG3 등)**
                - 프리패스 및 패키지 상품은 아래 기기정보 수집 동의 시에 구매 가능합니다.
                - 프리패스 상품은 휴강 서비스가 지원되지 않습니다.
                - (자단기 프리패스 및 패키지 상품은 휴강 서비스가 지원되지 않습니다.)
                - **교재 구매 안내**
                - 해외 및 군부대 교재 배송 서비스는 제공되지 않습니다.
                - 프리패스(BIG3 포함) 구매 시 교재비는 별도이며 프리패스 구매 후 구매할 수 있습니다.
                - **캐시 결제 안내**
                - 캐시 결제는 각 상품별로 적용해 결제가 가능합니다.
                - 교재, 배송비, BIG3, 태블릿PC 결합상품,단기탭몰 상품은 캐시 사용이 불가합니다.
                - 단기학교에 따라 캐시 결제는 제한 될 수 있습니다.
                - 학원프리패스, 스펙업프리패스 등 전체 학원 강좌는 한도 5만원까지 캐시사용이 가능합니다.
                - **할인권(쿠폰) 이용 안내**
                - 쿠폰을 지급 받은 단기학교 상품에만 적용이 가능합니다.
                - 쿠폰을 적용한 상품 환불 및 취소 시 쿠폰은 반환되지 않습니다.
                - 쿠폰은 유효기간내에만 이용이 가능합니다.
                - **환불안내**
                - 프리패스 상품은 결제일로부터 7일 이내 2강 이하로 수강했을 경우 전액 환불 신청이 가능합니다.
                - (한 ID 당 전액환불은 동일한 상품에 한하여 1회만 가능합니다.)
                - 단과강좌 상품은 실제 수강한 강좌 수를 공제하여 환불 금액이 책정됩니다.
                - 온라인 교재는 배송 완료 후 10일 이내(사용한 흔적이 없는 경우, 랩핑이 제거되지 않은 상태)에 환불 신청이 가능합니다.
                - 테블릿PC 등 지급기기가 포함된 상품 환불 시 환불 금액은 지급기기 금액과 수강한 강좌의 정가가 차감됩니다.
                - **학원 강좌 구매 안내**
                - 학원강좌 환불사유 발생 시, 수강 이전에는 수강료 전액이 환불되며 수강 이후에는 경과 기간에 따라 부분환불이 가능합니다.
                - **미성년자 고객 고지사항**
                - 전자상거래 등에서의 소비자보호에 관한 법률 제 13조 제 3항에 따라 미성년자 고객의 계약에 대해 안내드립니다.
                - 미성년자의 법정대리인이 본 구매 계약에 대하여 동의를 하지 아니하면 미성년자 본인 또는 법정대리인이 그 계약을 취소할 수 있습니다.
                - 법정대리인의 동의 없이 진행된 계약에 대해 취소를 원하는 경우에는 당사 고객센터 혹은 1:1 게시판으로 연락하시기 바랍니다.
              </textarea>
              <div class="bg-light px-4 py-3">
                <div class="col-md-6 text-md-right" style="margin-left: 350px;">
                  <input type="checkbox" id="checkagree">&nbsp;&nbsp;약관에 동의합니다.
                </div>            
              </div>
          </div>
          
            <!-- ORDER TOTAL-->
            <div class="col-lg-4">
                <div class="card border-0 rounded-0 p-lg-4 bg-light">
                  <div class="card-body">
                    <h5 class="text-uppercase mb-4">총 환불 금액</h5>
                    <ul class="list-unstyled mb-0">
                      <li class="d-flex align-items-center justify-content-between"><strong class="text-uppercase small font-weight-bold">결제 금액</strong><span class="text-muted small">42,500 원</span></li>
                      <li class="d-flex align-items-center justify-content-between"><strong class="text-uppercase small font-weight-bold" style="margin-top: 10px;">환불 수수료</strong><span class="text-muted small" style="margin-top: 10px;">- 5000 원</span></li>
                      <!-- <li class="d-flex align-items-center justify-content-between"><strong class="text-uppercase small font-weight-bold" style="margin-top: 10px;">강의 진행도에 따른 수수료</strong><span class="text-muted small" style="margin-top: 10px;">- 5000 원</span></li> -->
                      <li class="border-bottom my-2"></li>
                      <li class="d-flex align-items-center justify-content-between mb-4"><strong class="text-uppercase small font-weight-bold">Total</strong><span>37,500 원</span></li>
                      <li>
                          <div class="form-group mb-0">
                          <br>
                            <button class="btn btn-dark btn-sm btn-block" onclick="checkContent();" data-toggle="modal"><b>환불 신청하기</b></button>
                          </div>
                      </li>
                    </ul>
                  </div>
                </div>
            </div>
          </div>
        </section>
      </div>
</div>
<!-- 결제 팝업 -->

  <div id="pop01" class="overlay">
    <div class="popup">
                <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                  <div class="modal-content">
                    <div class="modal-body p-0">
                      <div class="row align-items-stretch">
                        <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(img/class-sport.png)" href="img/class-sport.png" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/class-sport2.png" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/class-sport3.png" title="Red digital smartwatch" data-lightbox="productview"></a></div>
                        <div class="col-lg-6">
                          <button class="close p-4" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><a href="#none" class="close">x</a></span></button>
                          <div class="p-5 my-md-4">
                            <h2 class="h5"> 리포머 하나면 가성비 홈짐 완성! 하루 30분 홈 리포머 필라테스</h2>
                            <h2 class="h5">강사 : 이해승</h2>
                            <p class="text-small mb-4">
                                <p class="text-muted">강의 날짜 : 2021-06-30</p>
                                <p class="text-muted">강의 시간 : 16:00 ~ 18:00</p>
                                <p class="text-muted">신청 인원 : 1 명</p>
                                <p class="text-muted">환불 금액 : 37,500 원</p>
                            </p>
                            <hr>
                            <ul style="font-size: 15px;">
								<li style="margin-left: -30px;">환불 신청시 취소 할 수 없습니다. 신중히 결정해 주세요</li>
								<li style="margin-left: -30px;">영업일 기준 1~7일 후 취소 금액 확인 가능합니다.</li>
							</ul>
                            <hr>
                            <div>
								<button onclick="location.href='#none';" class="btn btn-dark" style="background-color: lightgray; border: lightgray; margin-left: 50px;"></a>취소</button>
                                <!-- 카카오 페이 연결 -->
								<button id = "doPay"type = "button" class="btn btn-dark" style="margin-left: 50px;" onclick="paymentSuccess();">환불하기</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
    </div>
</div>
            <!-- 결제 스크립트 -->
     <script>
         function checkContent(){
	        // var name = document.getElementById("name").value;
    	    // var phone = document.getElementById("phone").value;
            // var check = document.getElementById("checkagree").checked;
            // if(name.length == 0){
	        // 	alert("이름을 입력하세요");
    	    // 	return;
    	    // }
	        // if(phone.length ==0){
	        // 	alert("전화번호를 입력하세요");
    	    // 	return
    		// }
    		        
    	    // if(check == false){
    		// 	alert("규정에 동의하셔야 결제가 가능합니다.");
    		// 	return;
    		// }
    		location.href='#pop01';
    		       
        }

        function paymentSuccess(){
            alert("환불 처리 되었습니다.");
            location.href="mypageScheduledClass.html";
        }
    </script>

    <%@include file="../commons/footer.jsp" %>
	</div>
  </body>
</html>