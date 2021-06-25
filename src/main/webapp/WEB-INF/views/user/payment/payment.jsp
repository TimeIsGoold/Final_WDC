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
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Lightbox-->
    <link rel="stylesheet" href="vendor/lightbox2/css/lightbox.min.css">
    <!-- Range slider-->
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">
    <!-- Bootstrap select-->
    <link rel="stylesheet" href="vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- Owl Carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel2/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor/owl.carousel2/assets/owl.theme.default.css">
    <!-- Google fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

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
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light1">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 text-uppercase mb-0">결제</h1>
              </div>
              <div class="col-lg-6 text-lg-right">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-lg-end mb-0 px-0">
                    <li class="breadcrumb-item"><a href="detail.html">돌아가기</a></li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>
        <section class="py-5">
          <h2 class="h5 text-uppercase mb-4">Shopping cart</h2>
          <div class="row">
            <div class="col-lg-8 mb-4 mb-lg-0">
              <!-- CART TABLE-->
              <div class="table-responsive mb-4">
                <table class="table">
                  <thead class="bg-light">
                    <tr>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase">강의 이름</strong></th>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase">금액</strong></th>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase">신청 인원</strong></th>
                      <th class="border-0" scope="col"> <strong class="text-small text-uppercase">Total</strong></th>
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
                        <p class="mb-0 small">42,500</p>
                      </td>
                      <td class="align-middle border-0">
                          <div class="quantity">
                            <button class="dec-btn p-0"><i class="fas fa-caret-left"></i></button>
                            <input class="form-control form-control-sm border-0 shadow-0 p-0" type="text" value="1"/> 명
                            <button class="inc-btn p-0"><i class="fas fa-caret-right"></i></button>
                          </div>
                        </div>
                      </td>
                      <td class="align-middle border-0">
                        <p class="mb-0 small">42,500</p>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- 신청자 정보-->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left"><i class="fas mr-2">신청자 정보 </i></div>
                </div>
              </div>
              <li>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;이름 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="text" placeholder="신청자 이름을 입력해 주세요" style="margin-bottom: 10px; margin-top: 10px; width: 250px;" id="name"></li>
              <br>
              <li>휴대폰 번호 :&nbsp;
              <input type="text" placeholder="휴대폰 번호를 입력해 주세요" style="width: 250px;" id="phone"> </li>
              <br>
              <br><br>
              <!-- 쿠폰 적용-->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left"><i class="fas mr-2 fa-gift"> 쿠폰선택 </i>
                
                    <select style="height: 25px;  margin-left: 45px;">
                        <option>선택</option>
                        <option>사용가능 쿠폰 1</option>
                        <option>사용가능 쿠폰 2</option>
                    </select>
                </div>
                <div style="margin-left: 20px;">  할인금액 : <input type="text" disabled style="border: 1px solid black; border-radius: 5px; width: 150px;" value="0 원"></div>
                </div>
              </div>
              <br><br>

              <!-- 결제 수단 선택-->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left"><i class="fas mr-2">결제 수단 선택 </i>
                    <select style="height: 25px;  margin-left: 23px; width: 135px;" id="payment_method">
                        <option>선택</option>
                        <option>카카오 페이</option>
                        <option></option>
                    </select>
                </div>
                </div>
             </div>
             <br><br>
              <!-- 약관 동의 -->
              <div class="bg-light px-4 py-3">
                <div class="row align-items-center text-center">
                  <div class="col-md-6 mb-3 mb-md-0 text-md-left"><i class="fas mr-2">약관 </i></div>
                </div>
            </div>
            <textarea style="width: 500px; height: 230px; margin-top: 10px; font-size: 12px" >
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

                    <div class="col-md-6 text-md-right" style="margin-left: 300px;">약관에 동의 합니다.&nbsp; <input type="checkbox" id="checkagree"></div>

            </div>


            </div>
            <!-- ORDER TOTAL-->
            <div class="col-lg-4">
                <div class="card border-0 rounded-0 p-lg-4 bg-light">
                  <div class="card-body">
                    <h5 class="text-uppercase mb-4">최종 결제 금액결제</h5>
                    <ul class="list-unstyled mb-0">
                      <li class="d-flex align-items-center justify-content-between"><strong class="text-uppercase small font-weight-bold">Subtotal</strong><span class="text-muted small">42,500 원</span></li>
                      <li class="border-bottom my-2"></li>
                      <li class="d-flex align-items-center justify-content-between mb-4"><strong class="text-uppercase small font-weight-bold">Total</strong><span>42,500 원</span></li>
                      <li>

                          <div class="form-group mb-0">
                            <button class="btn btn-dark btn-sm btn-block" onclick="checkContent();" data-toggle="modal"> <i class="fas fa-gift mr-2"></i>결제하기</button>
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

                            <h4>
                            강의명
                            </h4>
                            <h2 class="h5"> 리포머 하나면 가성비 홈짐 완성! 하루 30분 홈 리포머 필라테스</h2>
                            <h2 class="h5">강사 : 이해승</h2>
                            <p class="text-small mb-4">
                                <p class="text-muted">강의 날짜 : 2021-06-30</p>
                                <p class="text-muted">강의 시간 : 16:00 ~ 18:00</p>
                                <p class="text-muted">신청 인원 : 1 명</p>
                                <p class="text-muted">결제 금액 : 42,500 원</p>
                            </p>
                            <hr>
                            <ul>
								<li>14세 미만의 청소년은 강의를 들을 수 없으며, 통보없이 취소 및 환불 될 수 있습니다.</li>
								<li><b>취소 및 환불 규정</b>에 따라 취소수수료 부과 및 취소불가 될 수 있습니다.</li>
							</ul>
                            <hr>
                            <div>
								<button onclick="location.href='#none';" style="border-radius: 10px;padding: 5px; box-shadow: 0 3px 0 0 rgba(0, 0, 0, 0.2); border:1px solid rgba(0, 0, 0, 0.1);"></a>취소</button>
                                <!-- 카카오 페이 연결 -->
								<button id = "doPay"type = "button" class="payAgree" style="margin-left: 50px;" onclick="paymentSuccess();">동의 후 결제</button>
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
	        var name = document.getElementById("name").value;
    	    var phone = document.getElementById("phone").value;
            var check = document.getElementById("checkagree").checked;
            if(name.length == 0){
	        	alert("이름을 입력하세요");
    	    	return;
    	    }
	        if(phone.length ==0){
	        	alert("전화번호를 입력하세요");
    	    	return
    		}
    		        
    	    if(check == false){
    			alert("규정에 동의하셔야 결제가 가능합니다.");
    			return;
    		}
    		location.href='#pop01';
    		       
        }

        function paymentSuccess(){
            alert("결제에 성공 및 예약 완료");
            location.href="mypageScheduledClass.html";
        }
    </script>




      <footer class="bg-dark text-white">
        <div class="container py-4">
          <div class="row py-5">
            <div class="col-md-4 mb-3 mb-md-0">
              <h6 class="text-uppercase mb-3">Customer services</h6>
              <ul class="list-unstyled mb-0">
                <li><a class="footer-link" href="#">Help &amp; Contact Us</a></li>
                <li><a class="footer-link" href="#">Returns &amp; Refunds</a></li>
                <li><a class="footer-link" href="#">Online Stores</a></li>
                <li><a class="footer-link" href="#">Terms &amp; Conditions</a></li>
              </ul>
            </div>
            <div class="col-md-4 mb-3 mb-md-0">
              <h6 class="text-uppercase mb-3">Company</h6>
              <ul class="list-unstyled mb-0">
                <li><a class="footer-link" href="#">What We Do</a></li>
                <li><a class="footer-link" href="#">Available Services</a></li>
                <li><a class="footer-link" href="#">Latest Posts</a></li>
                <li><a class="footer-link" href="#">FAQs</a></li>
              </ul>
            </div>
            <div class="col-md-4">
              <h6 class="text-uppercase mb-3">Social media</h6>
              <ul class="list-unstyled mb-0">
                <li><a class="footer-link" href="#">Twitter</a></li>
                <li><a class="footer-link" href="#">Instagram</a></li>
                <li><a class="footer-link" href="#">Tumblr</a></li>
                <li><a class="footer-link" href="#">Pinterest</a></li>
              </ul>
            </div>
          </div>
          <div class="border-top pt-4" style="border-color: #1d1d1d !important">
            <div class="row">
              <div class="col-lg-6">
                <p class="small text-muted mb-0">&copy; 2020 All rights reserved.</p>
              </div>
              <div class="col-lg-6 text-lg-right">
                <p class="small text-muted mb-0">Template designed by <a class="text-white reset-anchor" href="https://bootstraptemple.com/p/bootstrap-ecommerce">Bootstrap Temple</a></p>
              </div>
            </div>
          </div>
        </div>
      </footer>
      <!-- JavaScript files-->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="vendor/lightbox2/js/lightbox.min.js"></script>
      <script src="vendor/nouislider/nouislider.min.js"></script>
      <script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
      <script src="vendor/owl.carousel2/owl.carousel.min.js"></script>
      <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
      <script src="js/front.js"></script>
      <script>
        // ------------------------------------------------------- //
        //   Inject SVG Sprite - 
        //   see more here 
        //   https://css-tricks.com/ajaxing-svg-sprite/
        // ------------------------------------------------------ //
        function injectSvgSprite(path) {
        
            var ajax = new XMLHttpRequest();
            ajax.open("GET", path, true);
            ajax.send();
            ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
            }
        }
        // this is set to BootstrapTemple website as you cannot 
        // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
        // while using file:// protocol
        // pls don't forget to change to your domain :)
        injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg'); 
        
      </script>
      <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
  </body>
</html>