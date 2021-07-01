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
              <p style="font-size: 20px; font-weight: bold;">클래스 관리하기 ${ pageInfo }</p>
            </div>
            <div class="row" style="margin-left: 40px;">
              
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
                      <th>타입</th>
                      <th>가격</th>
                      <th>상태</th>
                      <th>심사상태 </th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${ classList }" var="classList"  varStatus="status">
                    <tr>
                      <td><c:out value="${ pageInfo.startRow + status.index }"/></td>
                      <td><a href="t_classDetail.html">${ classList.title }</a></td>
                      <c:choose>
                          <c:when test="${ classList.schedule.scheduleType == 'I'}">
                              <td> 원데이(개별일정)</td>
                          </c:when>
                          <c:when test="${ classList.schedule.scheduleType == 'D'}">
                              <td> 원데이(요일반복)</td>
                          </c:when>
                          <c:when test="${ classList.schedule.scheduleType == 'R'}">
                              <td> 정규과정</td>
                          </c:when>
                      </c:choose>
                      <td>${ classList.price }</td>
                      <c:choose>
                          <c:when test="${ classList.status eq 'Y' }"><td>진행전</td></c:when>
                          <c:when test="${ classList.status eq 'P' }"><td>진행중</td></c:when>
                          <c:when test="${ classList.status eq 'E' }"><td>종료</td></c:when>
                      </c:choose>
                      <c:choose>
                          <c:when test="${ classList.dicsionStatus eq 'W' }"><td>대기</td></c:when>
                          <c:when test="${ classList.dicsionStatus eq 'R' }"><td>거절</td></c:when>
                          <c:when test="${ classList.dicsionStatus eq 'F' }"><td>1차승인</td></c:when>
                          <c:when test="${ classList.dicsionStatus eq 'S' }"><td>승인완료</td></c:when>
                          <c:when test="${ classList.dicsionStatus eq 'L' }"><td>응원수미달</td></c:when>
                      </c:choose>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
                <nav aria-label="...">
						<div class="pagingArea" align="center">
							<c:choose>
								<c:when test="${ empty requestScope.searchValue }">
									<button id="startPage"><<</button>

									<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
										<button  disabled ><</button>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
										<button id="prevPage"><</button>
									</c:if>

									<c:forEach var="p"
										begin="${ requestScope.pageInfo.startPage }"
										end="${ requestScope.pageInfo.endPage }" step="1">
										<c:if test="${ requestScope.pageInfo.pageNo eq p }">
											<button disabled>
												<c:out value="${ p }" />
											</button>
										</c:if>
										<c:if test="${ requestScope.pageInfo.pageNo ne p }">
											<button onclick="pageButtonAction(this.innerText);">
												<c:out value="${ p }" />
											</button>
										</c:if>
									</c:forEach>

									<c:if
										test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
										<button disabled >></button>
									</c:if>
									<c:if
										test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
										<button id="nextPage">></button>
									</c:if>

									<button id="maxPage">>></button>
								</c:when>
								<c:otherwise>
									<button id="searchStartPage"><<</button>

									<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
										<button  disabled><</button>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
										<button id="searchPrevPage" ><</button>
									</c:if>

									<c:forEach var="p"	begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
										<c:if test="${ requestScope.pageInfo.pageNo eq p }">
											<button disabled>
												<c:out value="${ p }" />
											</button>
										</c:if>
										<c:if test="${ requestScope.pageInfo.pageNo ne p }">
											<button  onclick="seachPageButtonAction(this.innerText);">
												<c:out value="${ p }" />
											</button>
										</c:if>
									</c:forEach>

									<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
										<button disabled>></button>
									</c:if>
									<c:if
										test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
										<button id="searchNextPage" >></button>
									</c:if>

									<button id="searchMaxPage" >>></button>
								</c:otherwise>
							</c:choose>
						</div>
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
  <script>
	let link = "${pageContext.servletContext.contextPath }/teacher/teacherClassManagement";
		
	if(document.getElementById("startPage")) {
		const $startPage = document.getElementById("startPage");
		$startPage.onclick = function() {
			location.href = link + "?currentPage=1";
		}
	}
	
	if(document.getElementById("prevPage")) {
		const $prevPage = document.getElementById("prevPage");
		$prevPage.onclick = function() {
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }";
		}
	}
	
	if(document.getElementById("nextPage")) {
		const $nextPage = document.getElementById("nextPage");
		$nextPage.onclick = function() {
			location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }";
		}
	}
	
	if(document.getElementById("maxPage")) {
		const $maxPage = document.getElementById("maxPage");
		$maxPage.onclick = function() {
			location.href = link + "?currentPage=${ requestScope.pageInfo.maxPage }";
		}
	}
	
	if(document.getElementById("searchStartPage")) {
		const $searchStartPage = document.getElementById("searchStartPage");
		$searchStartPage.onclick = function() {
			location.href = searchLink + "?currentPage=1&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
		}
	}
	
	if(document.getElementById("searchPrevPage")) {
		const $searchPrevPage = document.getElementById("searchPrevPage");
		$searchPrevPage.onclick = function() {
			location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
		}
	}
	
	if(document.getElementById("searchNextPage")) {
		const $searchNextPage = document.getElementById("searchNextPage");
		$searchNextPage.onclick = function() {
			location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
		}
	}
	
	if(document.getElementById("searchMaxPage")) {
		const $searchMaxPage = document.getElementById("searchMaxPage");
		$searchMaxPage.onclick = function() {
			location.href = searchLink + "?currentPage=${ requestScope.pageInfo.maxPage }&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
		}
	}
	
	
	function pageButtonAction(text) {
		alert(text);
		var a = link + "?currentPage=" + text;
		alert(a);
		location.href = a;
	}
	function seachPageButtonAction(text) {
		location.href = searchLink + "?currentPage=" + text + "&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
	}
	</script>  	
</body>
<html>