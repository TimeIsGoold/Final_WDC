<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>우리동네 클래스</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    </head>
    <body class="sb-nav-fixed">
      <c:if test="${not empty message }">
          <script>
              alert("${message}");
          </script>
      </c:if> 
        
        <!-- header -->
		<%@ include file="commons/header.jsp" %>
		
        <div id="layoutSidenav">
        
        	<!-- sideBar & footer -->
			<%@ include file="commons/sideBarAndFooter.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4" style="margin-top: 30px;">
                        <div class="card mb-4">

                            <div class="card-header" style="font-size: x-large;">
                                <i class="fas fa-table me-1"></i>
                                클래스 관리
                            </div>
                            <div class="btn-group btn-group-justified">
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=total" class="btn btn-warning">전체 </a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=one" class="btn btn-warning">1차 심사 진행중</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/seconddecision?pc=t" class="btn btn-warning">2차 심사 진행중</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=accept" class="btn btn-warning">승인된 클래스</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=reject" class="btn btn-warning">거절된 클래스</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=lackOfCheering" class="btn btn-warning">응원 미달 클래스</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=complate" class="btn btn-warning">완료 클래스</a>
      						</div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>클래스 번호</th>
                                            <th>클래스 제목</th>
                                            <th>강사 이름</th>
                                            <th>클래스 가격</th>
                                            <th>클래스 종류</th>
                                            <th>클래스 상태</th>
                                            <th>심사 상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                     				<c:forEach items="${classList}" var="ClassDTO">
				                            <tr style="cursor:pointer;" onclick="location.href='${pageContext.servletContext.contextPath}/admin/classDetail?cn=${ClassDTO.classNo}&ct=${ClassDTO.classDicsionStatus}&cd=${ClassDTO.decisionStatus}'">
				                                <td>${ClassDTO.classNo}</td>
				                                <td>${ClassDTO.classTitle}</td>
				                                <td>${ClassDTO.teacherName}</td>
				                                <td>${ClassDTO.classPrice}</td>
				                                <td>
				                                <c:choose>
				                                	<c:when test="${ClassDTO.classType eq 'O'}">
				                                		원데이 클래스
				                                	</c:when>
				                                	<c:when test="${ClassDTO.classType eq 'R'}">
				                                		정규 클래스
				                                	</c:when>
				                                </c:choose>
				                                </td>
				                                <td>
				                                <c:choose>
				                                	<c:when test="${ClassDTO.decisionStatus eq 'Y'}">
				                                		클래스 개강 예정
				                                	</c:when>
				                                	<c:when test="${ClassDTO.decisionStatus eq 'P'}">
				                                		클래스 진행중
				                                	</c:when>
				                                	<c:otherwise>
				                                		클래스 종료
				                                	</c:otherwise>
				                                </c:choose>
				                                </td>
				                                <td>
		                                		<c:choose>
				                                	<c:when test="${ClassDTO.classDicsionStatus eq 'W'}">
				                                		1차 심사중
				                                	</c:when>
				                                	<c:when test="${ClassDTO.classDicsionStatus eq 'F'}">
				                                		2차 심사중
				                                	</c:when>
				                                	<c:when test="${ClassDTO.classDicsionStatus eq 'S'}">
				                                		클래스 개설 승인 완료
				                                	</c:when>
				                                	<c:when test="${ClassDTO.classDicsionStatus eq 'R'}">
				                                		클래스 심사 거절
				                                	</c:when>
				                                	<c:otherwise>
				                                		2차 심사 응원 미달
				                                	</c:otherwise>
				                                </c:choose>
				                                </td>
				                            </tr>
				                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-area-demo.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>