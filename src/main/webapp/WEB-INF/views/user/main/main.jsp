<%@include="" %>
    <style>
      .w-100 {
        width: 255px;
        height: 230px;
      }

      /* .reset-anchor{
        overflow:hidden;
        white-space:nowrap;
        text-overflow:ellipsis; 
        width: 200px;
      } */

      .pb-5, .py-5 {
        padding-bottom: 0rem!important;
      }

      h5, .h5 {
        font-size: 1.3rem;
      }

      .btn-outline-dark:hover {
        color: black;
        background-color: #fef0ae !important;
        border-color: #fef0ae !important;
      }

      fieldset {
        position: relative;
        display: inline-block;
        padding: 0 0 0 40px;
        background: #fff;
        border: none;
        border-radius: 5px;
      }

      input, button {
        position: relative;
        width: 500px;
        height: 50px;
        padding: 0;
        display: inline-block;
        float: left;
      }

      input {
        color: #666;
        z-index: 2;
        border: 0 none;
      }
      input:focus {
        outline: 0 none;
      }
      input:focus + button {
        -webkit-transform: translate(0, 0);
            -ms-transform: translate(0, 0);
                transform: translate(0, 0);
        -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
      }
      input:focus + button .fa {
        -webkit-transform: translate(0px, 0);
            -ms-transform: translate(0px, 0);
                transform: translate(0px, 0);
        -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
        color: #fff;
      }

      button {
        z-index: 1;
        width: 50px;
        border: 0 none;
        background: #ceb980;
        cursor: pointer;
        border-radius: 0 5px 5px 0;  
        -webkit-transform: translate(-50px, 0);
            -ms-transform: translate(-50px, 0);
                transform: translate(-50px, 0);
        -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
      }

      .fa-search {
        font-size: 1.4rem;
        color: #29abe2;
        z-index: 3;
        top: 25%;
        -webkit-transform: translate(-490px, 0);
            -ms-transform: translate(-490px, 0);
                transform: translate(-490px, 0);
        -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
        -webkit-transition: all 0.1s ease-in-out;
                transition: all 0.1s ease-in-out;
      }

      .hover-btn:hover{
        color: #ffc107;
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
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="pagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">클래스</a>
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
                <li class="nav-item"><a class="nav-link" href="serviceCenter.html"> <i class="fas mr-1 text-gray"></i>고객센터</a></li>
              </ul>
              <ul class="navbar-nav ml-auto">               
                <li class="nav-item"><a class="nav-link" href="likeClassList.html"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
                <li class="nav-item"><a class="nav-link" href="mypageMain.html"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1" ></i></a></li>
                <li class="nav-item"><a class="nav-link" href="login.html">로그인</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </header>
      <!-- Modal -->
      <div class="modal fade" id="classView" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-body p-0">
              <div class="row align-items-stretch">
                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(img/class-sport.png)" href="img/class-sport.png" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/class-sport2.png" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/class-sport3.png" title="Red digital smartwatch" data-lightbox="productview"></a></div>
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
                    <h2 class="h4">스포츠 클래스</h2>
                    <p class="text-muted">42,500 원</p>
                    <p class="text-small mb-4">
                      이런 분들을 위한 클래스예요<br>
                      내몸의 상태 점검이 필요한 분들<br>
                      어깨와 목이 항상 뻐근한 분들<br>
                      고관절, 골반통, 허리통증을 달고 사시는 분<br>
                      체중감량이 필요한 분, 몸에 탄력을 찾고 싶은 분들<br>
                    </p>
                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="detail.html">클래스 보기</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Modal (오픈 예정 클래스) -->
      <div class="modal fade" id="classPreview" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-body p-0">
              <div class="row align-items-stretch">
                <div class="col-lg-6 p-lg-0"><a class="product-view d-block h-100 bg-cover bg-center" style="background: url(img/class-sport.png)" href="img/class-sport.png" data-lightbox="productview" title="Red digital smartwatch"></a><a class="d-none" href="img/class-sport2.png" title="Red digital smartwatch" data-lightbox="productview"></a><a class="d-none" href="img/class-sport3.png" title="Red digital smartwatch" data-lightbox="productview"></a></div>
                <div class="col-lg-6">
                  <button class="close p-4" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                  <div class="p-5 my-md-4">
                    <!-- <ul class="list-inline mb-2">
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                      <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i></li>
                    </ul> -->
                    <h2 class="h4">스포츠 클래스</h2>
                    <p class="text-muted">42,500 원</p>
                    <p class="text-small mb-4">
                      이런 분들을 위한 클래스예요<br>
                      내몸의 상태 점검이 필요한 분들<br>
                      어깨와 목이 항상 뻐근한 분들<br>
                      고관절, 골반통, 허리통증을 달고 사시는 분<br>
                      체중감량이 필요한 분, 몸에 탄력을 찾고 싶은 분들<br>
                    </p>
                    <div class="col-sm-5 pl-sm-0"><a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0" href="detail.html">클래스 응원하기</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- HERO SECTION-->
      <div class="container">
        <section class="hero pb-3 bg-cover bg-center d-flex align-items-center" style="background: url(img/hero-banner-alt.jpg)">
          <div class="container py-5">
            <div class="row px-4 px-lg-5">
              <div class="col-lg-6">
                <p class="text-muted small text-uppercase mb-2">New Inspiration 2020</p>
                <h1 class="h2 text-uppercase mb-3">응원한 클래스가 개설되면 파격 할인 쿠폰 제공!!</h1><a class="btn btn-dark" href="shop.html">Browse collections</a>
              </div>
            </div>
          </div>
        </section>

        <!-- 검색 -->
        <div style="margin-left: 280px;">
          <br>
          <!-- <fieldset>
            
            <input type="search" placeholder="찾으시는 클래스가 있으신가요?" value="" style="width:500px; border: 1px solid black;">
              <button type="submit">
        
            
            검색
          </button>
        </fieldset> -->
        <form>
          <fieldset>
            <input type="search" style="border: 1px solid black; border-radius: 5px;" placeholder=" 찾으시는 클래스가 있으신가요?" />
            <button type="submit">
              <i class="fa fa-search" style="">
              </i>

          </button>
          </fieldset>
        </form>          
        </div>

        <!-- 신규 클래스 -->
        <section class="py-5">
          <header>
            <p class="small text-muted small text-uppercase mb-1">오늘 오픈했어요!</p>
            <h2 class="h5 text-uppercase mb-4">따끈따끈 신규 클래스</h2>
          </header>
          <div class="row">
            <!-- PRODUCT-->
            <div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product text-center">
                <div class="position-relative mb-3">
                  <div class="badge text-white badge-info">New</div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/product-class.png" alt="..."></a>
                  <div class="product-overlay">
                    <ul class="mb-0 list-inline" style="font-family: Libre Franklin !important;">
                      <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                      <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classView" data-toggle="modal"><i class="fas fa-expand icon1"></i></a></li>
                    </ul>
                  </div>
                </div>
                <h6> <a class="reset-anchor" href="detail.html">반지수와 함께하는 아이패드 드로잉</a></h6>
                <p class="small text-muted">35,000 원</p>
              </div>
            </div>
            <!-- PRODUCT-->
            <div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product text-center">
                <div class="position-relative mb-3">
                  <div class="badge text-white badge-info">New</div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/product-class2.png" alt="..."></a>
                  <div class="product-overlay">
                    <ul class="mb-0 list-inline">
                      <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                      <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classView" data-toggle="modal"><i class="fas fa-expand icon1"></i></a></li>
                    </ul>
                  </div>
                </div>
                <h6> <a class="reset-anchor" href="detail.html">시선을 사로잡는 브랜드 디자인</a></h6>
                <p class="small text-muted">35,360 원</p>
              </div>
            </div>
            <!-- PRODUCT-->
            <div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product text-center">
                <div class="position-relative mb-3">
                  <div class="badge text-white badge-info">New</div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/product-class3.png" alt="..."></a>
                  <div class="product-overlay">
                    <ul class="mb-0 list-inline">
                      <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                      <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classView" data-toggle="modal"><i class="fas fa-expand icon1"></i></a></li>
                    </ul>
                  </div>
                </div>
                <h6> <a class="reset-anchor" href="detail.html">파이썬을 이용한 비트코인 자동매매 봇 만들기 풀 패키지</a></h6>
                <p class="small text-muted">44,000 원</p>
              </div>
            </div>
            <!-- PRODUCT-->
            <div class="col-xl-3 col-lg-4 col-sm-6">
              <div class="product text-center">
                <div class="position-relative mb-3">
                  <div class="badge text-white badge-info">New</div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/product-class4.png" alt="..."></a>
                  <div class="product-overlay">
                    <ul class="mb-0 list-inline">
                      <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                      <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classView" data-toggle="modal"><i class="fas fa-expand icon1"></i></a></li>
                    </ul>
                  </div>
                </div>
                <h6> <a class="reset-anchor" href="detail.html">세계 명작 독후 만들기 활동으로 우리 아이 심리 파악하기</a></h6>
                <p class="small text-muted">25,600 원</p>
              </div>
            </div>
            </div>
          </section>

          <!-- 리뷰 많은 클래스  -->
          <section class="py-5">
            <header>
              <p class="small text-muted small text-uppercase mb-1">우동클 별점왕★</p>
              <h2 class="h5 text-uppercase mb-4">우동클 인기 클래스</h2>
            </header>
            <div class="row">
              <!-- PRODUCT-->
              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="product text-center">
                  <div class="position-relative mb-3">
                    <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/product-class.png" alt="..."></a>
                    <div class="product-overlay">
                      <ul class="mb-0 list-inline">
                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                        <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classView" data-toggle="modal"><i class="fas fa-expand icon1"></i></a></li>
                      </ul>
                    </div>
                  </div>
                  <h6> <a class="reset-anchor" href="detail.html">반지수와 함께하는 아이패드 드로잉</a></h6>
                  <p class="small text-muted">35,000 원</p>
                </div>
              </div>
              <!-- PRODUCT-->
              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="product text-center">
                  <div class="position-relative mb-3">
                    <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/product-class2.png" alt="..."></a>
                    <div class="product-overlay">
                      <ul class="mb-0 list-inline">
                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                        <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classView" data-toggle="modal"><i class="fas fa-expand icon1"></i></a></li>
                      </ul>
                    </div>
                  </div>
                  <h6> <a class="reset-anchor" href="detail.html">시선을 사로잡는 브랜드 디자인</a></h6>
                  <p class="small text-muted">35,360 원</p>
                </div>
              </div>
              <!-- PRODUCT-->
              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="product text-center">
                  <div class="position-relative mb-3">
                    <div class="badge text-white badge-"></div><a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/product-class3.png" alt="..."></a>
                    <div class="product-overlay">
                      <ul class="mb-0 list-inline">
                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                        <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classView" data-toggle="modal"><i class="fas fa-expand icon1"></i></a></li>
                      </ul>
                    </div>
                  </div>
                  <h6> <a class="reset-anchor" href="detail.html">파이썬을 이용한 비트코인 자동매매 봇 만들기 풀 패키지</a></h6>
                  <p class="small text-muted">44,000 원</p>
                </div>
              </div>
              <!-- PRODUCT-->
              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="product text-center">
                  <div class="position-relative mb-3">
                    <a class="d-block" href="detail.html"><img class="img-fluid w-100" src="img/product-class4.png" alt="..."></a>
                    <div class="product-overlay">
                      <ul class="mb-0 list-inline">
                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="#"><i class="far fa-heart icon1"></i></a></li>
                        <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classView" data-toggle="modal"><i class="fas fa-expand icon1"></i></a></li>
                      </ul>
                    </div>
                  </div>
                  <h6> <a class="reset-anchor" href="detail.html">세계 명작 독후 만들기 활동으로 우리 아이 심리 파악하기</a></h6>
                  <p class="small text-muted">25,600 원</p>
                </div>
              </div>
              </div>
            </section>

            <!-- 오픈 예정 클래스  -->
          <section class="py-5">
            <header>
              <p class="small text-muted small text-uppercase mb-1">새로운 클래스가 열려요!</p>
              <h2 class="h5 text-uppercase mb-4">오픈 예정 클래스</h2>
            </header>
            <div class="row">
              <!-- PRODUCT-->
              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="product text-center">
                  <div class="position-relative mb-3">
                    <div class="badge text-white badge-"></div><img class="img-fluid w-100" src="img/product-class.png" alt="...">
                    <div class="product-overlay">
                      <ul class="mb-0 list-inline">
                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="cart.html">응원하기</a></li>
                        <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classPreview" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                      </ul>
                    </div>
                  </div>
                  <h6> <a class="reset-anchor"  href="#classView" data-toggle="modal">반지수와 함께하는 아이패드 드로잉</a></h6>
                  <p class="small text-muted">35,000 원</p>
                </div>
              </div>
              <!-- PRODUCT-->
              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="product text-center">
                  <div class="position-relative mb-3">
                    <img class="img-fluid w-100" src="img/product-class2.png" alt="...">
                    <div class="product-overlay">
                      <ul class="mb-0 list-inline">
                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="cart.html">응원하기</a></li>
                        <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classPreview" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                      </ul>
                    </div>
                  </div>
                  <h6> <a class="reset-anchor" href="#classView" data-toggle="modal">시선을 사로잡는 브랜드 디자인</a></h6>
                  <p class="small text-muted">35,360 원</p>
                </div>
              </div>
              <!-- PRODUCT-->
              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="product text-center">
                  <div class="position-relative mb-3">
                    <div class="badge text-white badge-"></div><img class="img-fluid w-100" src="img/product-class3.png" alt="...">
                    <div class="product-overlay">
                      <ul class="mb-0 list-inline">
                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="cart.html">응원하기</a></li>
                        <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classPreview" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                      </ul>
                    </div>
                  </div>
                  <h6> <a class="reset-anchor" href="#classView" data-toggle="modal">파이썬을 이용한 비트코인 자동매매 봇 만들기 풀 패키지</a></h6>
                  <p class="small text-muted">44,000 원</p>
                </div>
              </div>
              <!-- PRODUCT-->
              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="product text-center">
                  <div class="position-relative mb-3">
                    <img class="img-fluid w-100" src="img/product-class4.png" alt="...">
                    <div class="product-overlay">
                      <ul class="mb-0 list-inline">
                        <li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-outline-dark" href="cart.html">응원하기</a></li>
                        <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="#classPreview" data-toggle="modal"><i class="fas fa-expand"></i></a></li>
                      </ul>
                    </div>
                  </div>
                  <h6> <a class="reset-anchor" href="#classView" data-toggle="modal">세계 명작 독후 만들기 활동으로 우리 아이 심리 파악하기</a></h6>
                  <p class="small text-muted">25,600 원</p>
                </div>
              </div>
              </div>
            </section>
          <br><br>

        <!-- SERVICES-->
        <section class="py-5 bg-light" style="padding-bottom: 3rem!important;">
          <div class="container">
            <div class="row text-center">
              <div class="col-lg-4 mb-3 mb-lg-0">
                <div class="d-inline-block">
                  <div class="media align-items-end">
                    <svg class="svg-icon svg-icon-big svg-icon-light">
                      <use xlink:href="#delivery-time-1"> </use>
                    </svg>
                    <div class="media-body text-left ml-3">
                      <h6 class="text-uppercase mb-1">Free shipping</h6>
                      <p class="text-small mb-0 text-muted">Free shipping worlwide</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 mb-3 mb-lg-0">
                <div class="d-inline-block">
                  <div class="media align-items-end">
                    <svg class="svg-icon svg-icon-big svg-icon-light">
                      <use xlink:href="#helpline-24h-1"> </use>
                    </svg>
                    <div class="media-body text-left ml-3">
                      <h6 class="text-uppercase mb-1">24 x 7 service</h6>
                      <p class="text-small mb-0 text-muted">Free shipping worlwide</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="d-inline-block">
                  <div class="media align-items-end">
                    <svg class="svg-icon svg-icon-big svg-icon-light">
                      <use xlink:href="#label-tag-1"> </use>
                    </svg>
                    <div class="media-body text-left ml-3">
                      <h6 class="text-uppercase mb-1">Festival offer</h6>
                      <p class="text-small mb-0 text-muted">Free shipping worlwide</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>        
      </div>
      <br><br><br>
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
    </div>
  </body>
</html>