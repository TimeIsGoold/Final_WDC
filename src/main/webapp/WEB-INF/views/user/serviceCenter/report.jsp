<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
 	<%@include file="../commons/header.jsp" %>

    <style>
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

      td:hover{
        text-decoration: underline;
      }

      .tr-hover:hover{
        background-color: #f8f9fa !important;
      }

      td{
        text-decoration:none !important;
        vertical-align: unset !important;
      }

      a{
        color: black;
        text-decoration: none;
      }

      a:hover{
        color: black;
        text-decoration: none;
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
	                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/faq">자주 묻는 질문</a></strong></div>
	                <c:if test="${ empty sessionScope.userNo }">               
		             	<div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')">1:1 문의</a></strong></div>
		                <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" onClick="alert('우리 동네 클래스 회원 전용 메뉴입니다.')">나의 신고</a></strong></div>
	             	</c:if>
	                <c:if test="${ !empty sessionScope.userNo }">
		                <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/inquiry">1:1 문의</a></strong></div>
		                <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/report">나의 신고</a></strong></div>              
	              	</c:if>
	            </div> 
              <!-- BILLING ADDRESS-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0" style="text-align: center;">
                <div class="container p-0">
                  <div class="row">
                    <table class="table table-hover" style="width: 850px;">
                      <thead>
                        <tr>
                        <th><b>번호</b></th>
                        <th><b>신고제목</b></th>
                        <th><b>신고일자</b></th>
                        <th><b>신고처리</b></th>
                        </tr>
                    </thead>
                    <tbody>
	                    <c:forEach var="report" items="${ requestScope.report }">
		                     <tr class="tr-hover">
		                        <th>${ report.rowNum }</th>
		                        <td>
		                          <a href="${ pageContext.servletContext.contextPath }/user/serviceCenter/reportDetail/${ report.reportNo }">${ report.reportTitle }</a></td>
		                        <td>${ report.reportDate }</td>
		                        <c:if test="${ report.status eq 'Y' }">
		                          <td>처리완료</td>
		                      	</c:if>
	                          	<c:if test="${ report.status eq 'N' }">
		                          <td>대기중</td>
		                      	</c:if>
		                      </tr>   
	                    </c:forEach> 
                    </tbody>
                  </table>
                </div>
                
                <!-- 페이지 처리 -->
				<div class="pagingArea" align="center">
		 	       <nav aria-label="Page navigation example" style="margin-left: 300px; margin-top: 50px;">
		           		<ul class="pagination justify-content-center justify-content-lg-end">
							<c:choose>
							    <c:when test="${ empty requestScope.searchValue }">
								    <li id="startPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					
									<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
										<li class="page-item active"><a class="page-link" aria-label="Previous"><span aria-hidden="true"><</span></a></li>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
										<li id="prevPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true"><</span></a></li>
									</c:if>
						
									<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
										<c:if test="${ requestScope.pageInfo.pageNo eq p }">
											<li class="page-item active"><a class="page-link"><c:out value="${ p }"/></a></li>
										</c:if>
										<c:if test="${ requestScope.pageInfo.pageNo ne p }">
											<li class="page-item" style="cursor:pointer;"><a class="page-link" onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></a></li>
										</c:if>
									</c:forEach>
									
									<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
										<li class="page-item active"><a class="page-link" aria-label="Previous"><span aria-hidden="true">></span></a></li>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
										<li id="nextPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true">></span></a></li>
									</c:if>
									
									<li id="maxPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Next"><span aria-hidden="true">»</span></a></li>
							     </c:when>
							   	 <c:otherwise>
				   				    <li id="searchStartPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					
									<c:if test="${ requestScope.pageInfo.pageNo <= 1 }">
										<li class="page-item active"><a class="page-link" aria-label="Previous"><span aria-hidden="true"><</span></a></li>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
										<li id="searchPrevPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true"><</span></a></li>
									</c:if>
						
									<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
										<c:if test="${ requestScope.pageInfo.pageNo eq p }">
											<li class="page-item active"><a class="page-link"><c:out value="${ p }"/></a></li>
										</c:if>
										<c:if test="${ requestScope.pageInfo.pageNo ne p }">
											<li class="page-item" style="cursor:pointer;"><a class="page-link" onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></a></li>
										</c:if>
									</c:forEach>
									
									<c:if test="${ requestScope.pageInfo.pageNo >= requestScope.pageInfo.maxPage }">
										<li class="page-item active"><a class="page-link" aria-label="Previous"><span aria-hidden="true">></span></a></li>
									</c:if>
									<c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
										<li id="searchNextPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Previous"><span aria-hidden="true">></span></a></li>
									</c:if>
									
									<li id="searchMaxPage" class="page-item" style="cursor:pointer;"><a class="page-link" aria-label="Next"><span aria-hidden="true">»</span></a></li>
							    </c:otherwise>
							</c:choose>   
						</ul>
					</nav>
				</div>
				<%-- 페이지 처리 --%>
                  
			   <!-- 페이징 스크립트 -->
		       <script>
					const link = "/wdc/user/serviceCenter/report";
					//const searchLink = "${ pageContext.servletContext.contextPath }/board/search";
						
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
						location.href = link + "?currentPage=" + text;
					}
					function seachPageButtonAction(text) {
						location.href = searchLink + "?currentPage=" + text + "&searchCondition=${ requestScope.searchCondition}&searchValue=${ requestScope.searchValue}";
					}
				</script>
              </div>
            </div>
          </section>
        </div>
      <br><br><br><br>      
      	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>