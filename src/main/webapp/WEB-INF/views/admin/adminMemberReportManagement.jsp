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
                                신고관리
                            </div>

                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>신고 번호</th>
                                            <th>신고 제목</th>
                                            <th>신고자 분류</th>
                                            <th>아이디</th>
                                            <th>신고 날짜</th>
                                            <th>처리여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${reportList}" var="reportDTO">
				                            <tr style="cursor:pointer;" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/reportDetail?no=${ reportDTO.reportNo }&type=${ reportDTO.reportType }'">
				                                <td>${reportDTO.reportNo}</td>
				                                <td>${reportDTO.reportTitle}</td>
				                                <td>${reportDTO.reportType}</td>
				                                <td>${reportDTO.reportId}</td>
				                                <td>${reportDTO.reportDate}</td>
				                                <td>
                                                  	 <c:choose>
														<c:when test="${ reportDTO.reportStatus eq 'N' }">
															대기
														</c:when>
														<c:when test="${ reportDTO.reportStatus eq 'S' }">
															거절
														</c:when>
														<c:otherwise>
															승인
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
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
            crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>