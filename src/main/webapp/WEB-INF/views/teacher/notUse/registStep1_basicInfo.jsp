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
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon.png">
  <!-- Tweaks for older IEs-->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<style>
  .thumbnail-file-area input[type=file] {
    display:none;
  }
</style>
</head>

<body>
  <div class="page-holder">
    
    <!-- navbar-->
    <jsp:include page="../commons/header.jsp"/>
    
    <!-- <header class="header bg-white" style="padding-top: 80px; padding-bottom: 30px;">
      <div class="container px-0 px-lg-3">
        <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="index.html"><span
              class="font-weight-bold text-uppercase text-dark">
              <h1>???????????? ?????????</h1>
            </span></a>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
              </li>
              <li class="nav-item">
              </li>
              <li class="nav-item"><a class="nav-link" href="#">
                  <h3>?????? ?????????</h3>
                </a>
              </li>
              <li class="nav-item dropdown">
              </li>
            </ul>
            <ul class="navbar-nav ml-auto">
              <li class="nav-item"></li>
              <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>????????????</a>
              </li>
              <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>?????????</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </header> -->

    <div class="hello" style="width: 90%; margin: 10% 10% 10% 10%; display: flex;">
      <!-- SIDEBAR-->
      <jsp:include page="../commons/sidebar.jsp"/>
      
      <!-- <div class="col-lg-2 order-1 order-lg-0" style="float: left; width: 15%;">
        <h5 class="text-uppercase mb-4"><a class="nav-link" href="#" style="color: black;">
            <h2>???</h1>
          </a></h5>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">????????? ??????</strong></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="#">????????? ??????</a></li>
          <li class="mb-2" style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">??????/??????</strong></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
          <li class="mb-2"><a class="reset-anchor" href="#">???????????? ??????</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">??????????????? ??????</a></li>
          <li class="mb-2" style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
        <div class="py-2 px-4 bg-light mb-3"><strong class="text-uppercase font-weight-bold">????????????</strong></div>
        <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal mb-5">
          <li class="mb-2"><a class="reset-anchor" href="#">????????? ??????</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">???????????? ??????</a></li>
          <li class="mb-2"><a class="reset-anchor" href="#">?????? ?????? ??????</a></li>
          <li class="mb-2" style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
        </ul>
      </div> -->
      <!-- /SIDEBAR -->

      <!-- ?????? -->
      <div class="container" style="width: 80%; margin-left: 10px;">
        <!-- ?????????????????????1-->
        <div class="row">
          <div class="col-md-2 nowStep" >????????? ????????????</div>
          <div class="col-md-2 step" >????????? ??????</div>
          <div class="col-md-3 step" >????????? ?????? ??? ??????</div>
          <div class="col-md-2 step">????????? ????????????</div>
          <div class="col-md-3 step">????????? ?????? ??? ????????????</div>
        </div>
        <br><br><br>
        <h6>???????????? ??????</h6>
        <form method="post" action="${pageContext.servletContext.contextPath }/classRegist/step2" enctype="multipart/form-data">
        <div class="form-inline">
        
          <c:if test="${requestScope.classType eq  'O' }">
          <select class="form-group" style="width: 200px; margin-right: 20px;" name="clsType">
            <option value="O">?????????</option>
          </select>
          </c:if>
          <c:if test="${requestScope.classType eq 'R' }">
          <select class="form-group" style="width: 200px; margin-right: 20px;" name="clsType">
            <option value="R">????????????</option>
          </select>
          </c:if>
          <select class="form-group" style="width: 200px; margin-right: 20px;" name="categoryNo">
            <option value="1">?????????</option>
            <option value="2">??????/?????????</option>
            <option value="3">??????/??????/????????????</option>
            <option value="4">??????</option>
            <option value="5">?????????/IT</option>
            <option value="6">??????/?????????</option>
            <option value="7">?????????/??????</option>
          </select>

        </div>
        <br>
        <hr>
        <br>
        <h6>????????? ?????????<h6>
            <div class="form-group">
              <input style="width: 80%;" type="text" name="title" required="required">
            </div>
            <br>
            <hr><br>
        <h6>????????? ????????????<h6>
            <div class="form-group">
              <input style="width: 80%;" type="text" name="simpleIntro" required="required">
            </div>
            <br>
            <hr><br>
            <h6>??????????????????<b>*</b></h6>
            <div style="font-size: 15px; opacity: .7">
              - ???????????? ???????????? ???????????? ????????? ??????, ???????????? ???????????? ????????? ????????? ?????? ?????? ????????? ?????? ??????????????????.<br>
              - ????????? ??????????????? ?????? ?????? 3????????? ?????? ??? ??? ????????????.<br>
              - 1:1 ??????????????? ???????????????.
            </div>
            <br>
            <div>
              <button>????????????(???????)</button>
            </div>
            <br>
            <div>
              <table>
                <td>
                  <div class="content-img-area1" id="contentImgArea1">
                    <img id="contentImg1" width="150" height="120">
                  </div>
                </td>
                <td>
                  <div class="content-img-area2" id="contentImgArea2">
                    <img id="contentImg2" width="150" height="120">
                  </div>
                </td>
                <td>
                  <div class="content-img-area3" id="contentImgArea3">
                    <img id="contentImg3" width="150" height="120">
                  </div>
                </td>
              </table>
              <div class="thumbnail-file-area">
                <input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this,1)" required="required">
                <input type="file" id="thumbnailImg2" name="thumbnailImg2" onchange="loadImg(this,2)" >
                <input type="file" id="thumbnailImg3" name="thumbnailImg3" onchange="loadImg(this,3)" >
              </div>
            </div>
            
              <br>
              <hr><br>
              <h6>???????????????</h6>
              <div class="form-horizontal">
                <div class="form-group">
                  <input id="zipCode" type="text" class="select-nomalsize"  style="margin-bottom: 8px;"  name="zipCode"  required="required" placeholder="????????????">
                  <button id="searchZipCode" class="submit-btn" type="button" style="margin-left: 10px;" >?????? ??????</button>
                  <input id="address1"type="text" class="form-control"style="width: 50%; margin-bottom: 8px;" placeholder="??????" name="address">
                  <input type="text" class="form-control"style="width: 50%; margin-bottom: 8px;" placeholder="????????????" name="address">
                </div>

              </div>
              <br>
              <hr><br>

              <button type="button" onclick="goMain();">????????????</button>
              <button type="submit">??????></button>
              </form>
              <script>
                  function goMain(){
                	  if(confirm("???????????? ?????????????????????????<br> ???????????? ????????? ???????????? ????????????.")){
                		  location.href = "${pageContext.servletContext.contextPath }/teacher/main";
                	  } else {
                		  location.href = "#";
                	  }
                  }
              </script>
      </div>
    </div>
    <br>
    <br>
    <!-- ???????????? -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		const $goMain = document.getElementById("goMain");
		
		$searchZipCode.onclick = function() {
		
			//?????? ???????????? ?????? ?????? ??????????????? ????????? ?????? ???????????? ????????? ????????? ??????????????? ????????????.
			new daum.Postcode({
				oncomplete: function(data){
					//???????????? ???????????? ????????? ???????????? ??? ????????? ????????? ???????????? ??????
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
		
		$goMain.onclick = function() {
			location.href = "${ pageContext.servletContext.contextPath }";
		}
	</script>    
    <!-- /???????????? -->
    <!-- //?????????????????????1-->
  </div>
  <!-- //?????? -->

  <footer class="bg-dark text-white">
    <div class="container py-4">
      <div class="row py-5">
        <div class="col-md-1 mb-3 mb-md-0">
          <h5 class="text-uppercase mb-3">
            <p> </p>
          </h5>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              ????????????</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              ????????? ??????</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              ????????????<br>????????????</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              ?????? ??????<br>??????</a></h3>
        </div>
        <div class="col-md-2 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
              ????????????</a></h3>
        </div>
        <div class="col-md-1 mb-3 mb-md-0">
          <h3 class="text-uppercase mb-3">
            <p> </p>
          </h3>
        </div>
      </div>
      <div class="border-top pt-4" style="border-color: #1d1d1d !important">
        <div class="row">
          <div class="col-lg-6">
            <p class="small text-muted mb-0">&copy; 2020 All rights reserved.</p>
          </div>
          <div class="col-lg-6 text-lg-right">
            <p class="small text-muted mb-0">Template designed by <a class="text-white reset-anchor"
                href="https://bootstraptemple.com/p/bootstrap-ecommerce">Bootstrap Temple</a></p>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- JavaScript files-->
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>
  <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/t_WDC.js"></script>
  <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>


  <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  </div>
</body>

</html>