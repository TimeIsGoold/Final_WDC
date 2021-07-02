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
        <!-- include libraries(jQuery, bootstrap) -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <!-- include summernote css/js -->
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	    <style>
	    	.container-fluid{
	        	margin-top: 30px;
	        }
	        	
	        .card-header {
	        	font-size: x-large;
	        }
	    
	        th {
	            text-align: center !important;
	            border: 1px solid lightgrey !important;
	            width: 150px;
	            vertical-align: middle !important;
	            background: #fef0ae !important;
	        }
	    
	        td {
	            border: 1px solid lightgrey !important;
	        }
	        
	        .radioBtn {
	        	margin-left: 230px !important; 
	        	margin-right: 15px !important;
	        }
	        
	        #titleArea {
	        	width: 1260px;
	        	border: none;
	        }
	        
	        .noticeBtnArea {
	        	margin-left: 85.5%;
	        }
	        
	        .noticeBtn {
	        	width: 100px; 
	        	background: #fef0ae; 
	        	border: 1px solid lightgrey;
	        }
	
	        .noticeBtn:hover {
	            background: black !important;
	            color: white !important;
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
                                <i class="fas fa-table me-1"></i>공지사항 작성
                            </div>

                            <div class="card-body">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상</th>
                                            <td>
                                                <input type="radio" class="radioBtn"checked>전체 회원용
                                                <input type="radio" class="radioBtn">강사 회원용
                                                <input type="radio" class="radioBtn">일반 회원용
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</th>
                                            <td>
                                                <input type="text" id="titleArea" placeholder="공지사항의 제목을 입력하세요.">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</th>
                                            <td>
                                                <div id="summernote"></div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>     
                
                                <div class="noticeBtnArea">
                                    <input type="submit" class="noticeBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeManagement?currentMenu=notice'" value="등록하기">
                                    <input type="submit" class="noticeBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeManagement?currentMenu=notice'" value="리스트보기">
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
        <script>
            $('#summernote').summernote({
              placeholder: '공지사항을 입력하세요.',
              tabsize: 2,
              height: 350
            });
          </script>  
    </body>
</html>

