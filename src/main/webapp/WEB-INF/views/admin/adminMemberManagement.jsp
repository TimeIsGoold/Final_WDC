<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>우리동네 클래스</title>
        <link
            href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
            rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet"/>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
            crossorigin="anonymous"></script>
        <script>
            function detailPage() {
                location.href="MemberManager-admin.html";
            }
        </script>
        
    </head>
    <body class="sb-nav-fixed">
        
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
                                회원관리
                            </div>
                            <div class="btn-group btn-group-justified">
						        <a  href="${ pageContext.servletContext.contextPath }/admin/memberManagement" class="btn btn-warning">전체 </a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectMemberBycategory?ut=tc" class="btn btn-warning">강사</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectMemberBycategory?ut=st" class="btn btn-warning">수강생</a>
      						</div>

                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>분류</th>
                                            <th>아이디</th>
                                            <th>성명</th>
                                            <th>가입 날짜</th>
                                            <th>누적신고 횟수</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                         				<c:forEach items="${totalList}" var="totalList">
				                            <tr style="cursor:pointer;" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/memberInfoDetail?memberType=${totalList.userType}&memberNo=${totalList.userNo}'">
				                                <td><c:choose>
				                                	<c:when test="${ totalList.userType eq 'T'}">강사</c:when>
				                                	<c:when test="${ totalList.userType eq 'U'}">수강생</c:when>
				                                </c:choose></td>
				                                <td>${totalList.userId}</td>
				                                <td>${totalList.userName}</td>
				                                <td>${totalList.enrollDate}</td>
				                                <td>${totalList.reportedCnt}</td>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-area-demo.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>