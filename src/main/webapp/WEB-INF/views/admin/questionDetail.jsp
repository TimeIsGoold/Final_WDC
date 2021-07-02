<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>우리동네 클래스</title>
        <!-- Favicon-->
    	<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <style>
    	.container-fluid {
        	margin-top: 30px;
        }
        
        .card-header {
        	font-size: x-large;
        }
        
        th {
            text-align: center !important;
            width: 200px !important;
            border: 1px solid lightgrey !important;
            background: #fef0ae !important;
            vertical-align: middle;
        }

        td {
            border: 1px solid lightgrey !important;
            width: 410px !important;
        }
        
        #questionContextArea {
        	 height: 200px;
        }
        
        .questionContext {
        	 overflow: auto;
        }
        
        #requestContextArea {
        	overflow: auto;
        }
        
        #requestContext {
        	 width: 990px; 
        	 height: 150px; 
        	 border: none;
        }
        
        .submitBtn {
        	 margin-left: 1000px;
        }
        
        .returnBtn {
        	width: 100px; 
        	background: #fef0ae; 
        	border: 1px solid lightgrey;
        	margin-left: 48%;
        }

        .returnBtn:hover {
            background: black !important;
            color: white !important;
        }
        
        .answerBtn {
        	width: 100px; 
        	background: #fef0ae; 
        	border: 1px solid lightgrey;
        }

        .answerBtn:hover {
            background: black !important;
            color: white !important;
        }
    </style>

    <body class="sb-nav-fixed">

        <!-- header -->
		<%@ include file="commons/header.jsp" %>
        
        <div id="layoutSidenav">

			<!-- sideBar & footer -->
			<%@ include file="commons/sideBarAndFooter.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <div class="card mb-4">

                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>문의 상세
                            </div>

                            <div class="card-body">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>회원번호</th>
                                            <td>${ questionDetail.questionNo }</td>
                                            <th>분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류</th>
                                            <td>${ questionDetail.questionType }</td>
                                        </tr>
                                        <tr>
                                            <th>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</th>
                                            <td>${ questionDetail.questionName }</td>
                                            <th>아&nbsp;&nbsp;이&nbsp;&nbsp;디</th>
                                            <td>${ questionDetail.questionId }</td>
                                        </tr>
                                        <tr>
                                            <th>제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</th>
                                            <td colspan="3">
                                            	${ questionDetail.questionTitle }
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</th>
                                            <td colspan="3" id="questionContextArea">
                                                <div class="questionContext">
                                                	${ questionDetail.questionContent }
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="card-body">
                                <table class="table">
                                    <tr>
                                        <th>답&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;변</th>
                                        <td>
                                            <div id="requestContextArea">
                                            	<c:choose>
                                            		<c:when test="${empty questionDetail.questionReContent }">
                                            			<input type="text" id="requestContext">
                                            		</c:when>
                                            		<c:when test="${not empty questionDetail.questionReContent}">
                                            			${ questionDetail.questionReContent }
                                            		</c:when>
                                            	</c:choose>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                
                                <div class="submitBtn">
                                    <input type="button" class="returnBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/questionManagement?currentMenu=question&mt=to'" value="리스트보기">
                       	            <c:choose>
                                   		<c:when test="${not empty questionDetail.questionReContent }">
		                                    <input type="button" class="answerBtn" value="답변달기">
                                   		</c:when>
                                   		<c:when test="${empty questionDetail.questionReContent}">
		                                    <input type="button" class="answerBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/questionManagement?currentMenu=question&mt=to'" value="답변달기">
                                   		</c:when>
                                   	</c:choose>
                                </div>
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

