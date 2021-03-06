<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      display: none;
    }

    .table-bordered th {
      text-align: center;
    }


    .btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
    border-bottom-right-radius: 0;
    border-top-right-radius: 0;
    }
    .btn-default, .btn-default:focus {
    color: #5e5e5e;
    background-color: #fff;
    border-color: #e6e6e6;
    }
    .btn {
    font-family: Arial, sans-serif;
    font-size: 14px;
    font-weight: normal;
    letter-spacing: 0.01em;
    -webkit-font-smoothing: antialiased;
    -webkit-text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
    -webkit-font-feature-settings: "kern" 1;
    -moz-font-feature-settings: "kern" 1;
    margin-bottom: 0;
    border: 1px solid #f0f0f0;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    background-image: none !important;
    color: #626262;
    background-color: #fff;
    text-shadow: none;
    box-shadow: none;
    line-height: 21px;
    position: relative;
    transition: color 0.1s linear 0s,background-color 0.1s linear 0s,opacity 0.2s linear 0s !important;
    padding: 6px 10px;
    border-radius: 7px;
    }
    label.btn-default.active {
    border-color: #fef0ae;
    background-color: #fef0ae;
    }
    input[name="dayName"]{
      display: none;
    }

  </style>

</head>

<body>
  <div class="page-holder">
    <!-- navbar-->
    <header class="header bg-white" style="padding-top: 80px; padding-bottom: 30px;">
      <div class="container px-0 px-lg-3" id="test3">
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
    </header>

    <div class="hello" style="width: 90%; margin: 10% 10% 10% 10%; display: flex;">
      <!-- SIDEBAR-->
      <div class="col-lg-2 order-1 order-lg-0" style="float: left; width: 15%;">
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
      </div>
      <!-- /SIDEBAR -->

      <!-- ?????? -->
      <div class="container" style="width: 80%; margin-left: 10px;">
        <!-- ?????????????????????1-->
        <div class="row">
          <div class="col-md-2 step" >????????? ????????????</div>
          <div class="col-md-2 step" >????????? ??????</div>
          <div class="col-md-3 nowStep" >????????? ?????? ??? ??????</div>
          <div class="col-md-2 step">????????? ????????????</div>
          <div class="col-md-3 step">????????? ?????? ??? ????????????</div>
        </div>
        <br><br><br>
        <h6>????????? ??????</h6>
        <div style="font-size: 15px; opacity: .7">
          - ???????????? : ???????????? ?????? ????????? ????????? ????????? ??????<br>
          - ???????????? : ?????? ?????? ?????? ?????? ????????? ????????? ????????? ??????<br>
          - ???????????? : ????????? ???????????? ?????? ????????? ???????????? ??????<br>
          - ???????????? : ???????????? ?????? ???, ??? ?????? ?????? ????????? ???????????? ??????<br>
            (??????????????? ?????? ???????????? ?????? ?????????????????? ??????????????????)
        </div>
        <br><br>
        <div class="row" style="border: 1px solid rgba(0, 0, 0, 0.2); padding: 20px 20px 20px 20px;">
          <div class="col-md-4" align="center">
            ???????????????<br>
            <button id="individual" onclick="scheduleChange(this);">????????????</button>
            <button id="repeat" onclick="scheduleChange(this)">????????????</button>
            <button id="always" onclick="scheduleChange(this)">????????????</button>
            <input type="hidden" id="scheduleType" value="">
          </div>
          <div class="col-md-3" align="center">
            ??????????????????<br>
            <div class="form-inline" style="margin-left: 10px;">
              <div class="form-group">
                <select class="form-control">
                  <option>1??????</option>
                  <option>2??????</option>
                  <option>3??????</option>
                  <option>4??????</option>
                </select>
                <select class="form-control" style="margin-left: 10px; width: 91px;">
                  <option>10???</option>
                  <option>20???</option>
                  <option>30???</option>
                  <option>40???</option>
                </select>
              </div>
            </div>
          </div>
          <div class="col-md-5" align="center">
            ???????????? ???????????? ??????????????????<br>
            <input type="date"> - 
            <input type="date">
          </div>
          <div class="col-md-11" style="margin: 20px 0 20px 42px ; height: 350px; background-color: #f5f5f5;">?????? ????????? ?????????
          </div>
          <div class="col-md-3">
                <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">??????/?????? ????????????</button> -->
                <button id="dateTimeSetting"type="button" class="btn btn-primary" data-toggle="modal" onclick="doPopUP();"data-target="" style="margin-left: 30px;">??????/?????? ????????????</button>
          </div>
        </div>
        <!-- ???????????? -->
        <div id="individualSetting"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="gridSystemModalLabel" style="margin-top: 20px;">???????????????(????????????)</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              </div>
              <div class="modal-body">
                <div class="container">
                  <p style="font-size: 13px;">1??? ????????? ?????? ????????? ????????? ??? ????????????.</p>
                  <div style="border: 1px solid #f5f5f5; padding: 20px;">
                    <p style="font-size: 13px;">?????? ????????? ??????????????????.</p>
                    <div style="background-color: #f5f5f5; padding: 20px;">
                      <!-- ????????????????????? -->

                      <div class="row">
                        <div class="col-md-3" style="font-size: 14px; margin-bottom: 15px;">????????????</div>
                        <div class="col-md-4" style="font-size: 14px; margin-bottom: 15px;">??????????????????</div>
                        <div class="col-md-3" style="font-size: 14px; margin-bottom: 15px;">??????????????????</div>
                        <div class="col-md-2"></div>

                        <div class="col-md-3">
                          <input type="date">
                        </div>
                        <div class="col-md-4">
                          <div class="form-inline">
                            <select class="form-group"
                              style="margin-right: 10px; width: 90px; font-size: 14px; height: 30px; text-align: center;">
                              <option>?????? 00???</option>
                              <option>?????? 01???</option>
                              <option>?????? 02???</option>
                              <option>?????? 03???</option>
                              <option>?????? 04???</option>
                              <option>?????? 05???</option>
                              <option>?????? 06???</option>
                            </select>
                            :
                            <select class="form-group"
                              style="margin-left: 10px; width: 90px; font-size: 14px; height: 30px; padding-left: 15px;">
                              <option>10???</option>
                              <option>20???</option>
                              <option>30???</option>
                              <option>40???</option>
                              <option>50???</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-3">
                          <div class="form-inline">
                            <input type="number"
                              style="margin-right: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                            ~
                            <input type="number"
                              style="margin-left: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                          </div>
                        </div>
                        <div class="col-md-2"><button>??????</button></div>
                      </div>
                      <!-- /????????????????????? -->
                    </div>
                  </div>
                  <br>
                  <div style="overflow:auto; height: 300px;">
                    <table class="table">
                      <tbody style="text-align: center;">
                        <tr style="background-color: #f5f5f5;">
                          <th>????????????</th>
                          <th>??????????????????</th>
                          <th>??????</th>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
                <button type="button" class="btn btn-primary">???????????????</button>
              </div>
            </div>
          </div>
        </div>   
        <!-- /???????????? -->
        <!-- ???????????? -->
        <div id="repeatSetting"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="gridSystemModalLabel" style="margin-top: 20px;">????????? ??????(????????????)</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              </div>
              <div class="modal-body">
                <div class="container">
                  <p style="font-size: 13px;">??????????????? ???????????? ???????????? ?????? ????????? ?????? ????????? ????????? ???????????? ??? ??? ????????????.</p>
                  <div style="border: 1px solid #f5f5f5; padding: 20px;">
                    <p style="font-size: 13px;">????????? ?????? ????????? ??????????????????.(????????? ???????????? ????????????)</p>
                    <div style="background-color: #f5f5f5; padding: 20px;">
                      <!-- ????????????????????? -->
                      <div class="row">
                        <div class="col-md-12">
                          <p>????????????</p>
                          <div class="btn-group" data-toggle="buttons" >
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="0"/> ???
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="1"/> ???
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="2"/> ???
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="3"/> ???
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="4"/> ???
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="5"/> ???
                            </label>
                            <label class="btn btn-default day">
                              <input type="checkbox" name="dayName" value="6"/> ???
                            </label>
                          </div>                          
                        </div>
                        <div class="col-md-5" style="font-size: 14px; margin: 15px 0 10px 0;">??????????????????</div>
                        <div class="col-md-5" style="font-size: 14px; margin: 15px 0 10px 0;">??????????????????</div>
                        <div class="col-md-2"></div>

                        <div class="col-md-5">
                          <div class="form-inline">
                            <select class="form-group"
                              style="margin-right: 10px; width: 90px; font-size: 14px; height: 30px; text-align: center;">
                              <option>?????? 00???</option>
                              <option>?????? 01???</option>
                              <option>?????? 02???</option>
                              <option>?????? 03???</option>
                              <option>?????? 04???</option>
                              <option>?????? 05???</option>
                              <option>?????? 06???</option>
                            </select>
                            :
                            <select class="form-group"
                              style="margin-left: 10px; width: 90px; font-size: 14px; height: 30px; padding-left: 15px;">
                              <option>10???</option>
                              <option>20???</option>
                              <option>30???</option>
                              <option>40???</option>
                              <option>50???</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-5">
                          <div class="form-inline">
                            <input type="number"
                              style="margin-right: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                            ~
                            <input type="number"
                              style="margin-left: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                          </div>
                        </div>
                        <div class="col-md-2"><button>??????</button></div>
                      </div>
                      <!-- /????????????????????? -->
                    </div>
                  </div>
                  <br>
                  <div style="overflow:auto; height: 300px;">
                    <table class="table">
                      <tbody style="text-align: center;">
                        <tr style="background-color: #f5f5f5;">
                          <th>????????????</th>
                          <th>??????????????????</th>
                          <th>??????</th>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                        <tr>
                          <td>2021-06-26(???) ~ 2021-07-25(???)</td>
                          <td>?????? 1??? ~ ?????? 4???</td>
                          <td><button>??????</button></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
                <button type="button" class="btn btn-primary">???????????????</button>
              </div>
            </div>
          </div>
        </div> 
        <!-- /???????????? -->                

        <br><br><hr><br><br>
        <h6>???????????????<b> *</b></h6>
        <br>
            <div class="form-group">
              <input class="form-control" style="width:20%";type="number" placeholder="????????????(???)">
            </div>
            <br><br><hr><br>
            <div>
            </div>
            <button onclick="location.href='t_oneDay2_classIntro.html'">??????</button>
            <button onclick="location.href='t_oneDay4_optionalInfo.html'">??????</button>
      </div>
    </div>
    <br>
    <br>
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