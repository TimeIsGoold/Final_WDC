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
        <style>
        	.container-fluid{
        		 margin-top: 30px;
        	}
        	
        	.card-header {
        		 font-size: x-large;
        	}
        	
        	.totalQuestion {
                width: 33%;
            }

            .studentQuestion {
                width: 33%;
            }

            .teacherQuestion {
                width: 33%;
            }

            .totalQuestion:hover {
                background : #fef0ae;
    			color: black;
            }

            .studentQuestion:hover {
                background : #fef0ae;
    			color: black;
            }

            .teacherQuestion:hover {
                background : #fef0ae;
    			color: black;
            }
        </style>
    </head>
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
                                <i class="fas fa-table me-1"></i>문의내역
                            </div>
                            
                            <div class="subMenuBar">
                                <button class="totalQuestion">전체</button>
                                <button class="studentQuestion">수강생</button>
                                <button class="teacherQuestion">강사</button>
                            </div>

                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>문의번호</th>
                                            <th>분류</th>
                                            <th>성명</th>
                                            <th>아이디</th>
                                            <th>제목</th>
                                            <th>작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                     					<c:forEach items="${questionList}" var="QuestionDTO">
				                            <tr>
				                                <td>${QuestionDTO.questionNo}</td>
				                                <td>${QuestionDTO.questionType}</td>
				                                <td>${QuestionDTO.questionName}</td>
				                                <td>${QuestionDTO.questionId}</td>
				                                <td>${QuestionDTO.questionTitle}</td>
				                                <td>${QuestionDTO.questionDate}</td>
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