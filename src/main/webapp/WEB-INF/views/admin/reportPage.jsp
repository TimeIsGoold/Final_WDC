<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta  name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>우리동네 클래스</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        
            <style type="text/css">
        #wrap {
            width: 800px;
            margin: 0 auto 0 auto;
        }
    
        #detailBoard{
            text-align :left;
        }
        
        #title{
            height : 16;
            font-size : 12;
            text-align :left;
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
                    <div class="container-fluid px-4" style="margin-top: 30px;">
                        <div class="card md-4" ></div>
                        <div class="card mb-4" align="center">
                            <div class="card-header" style="font-size: x-large;">
                                <i class="fas fa-table me-1"></i>신고 상세 페이지</div>
		                          <div id="wrap">
								    <br><br>
								    <div id="board">
								        <table id="detailBoard" width="800" border="3" bordercolor="lightgray" class="table">
								        
								            <tr>
								                <th id="title">글번호</th>
								                <td>${reportDetail.reportNo}</td>
								                <th id="title">신고 날짜</th>
								                <td>${reportDetail.reportDate}</td>
								            <tr>
								                <th id="title">신고 대상 아이디</th>
								                <td>${reportDetail.reportedId}</td>        
								                <th id="title">신고 대상 이름 </th>
								                <td>${reportDetail.reportedNmae2}(
								                
								                <c:choose>
									                <c:when test="${reportDetail.type eq 'U'}">수강생님</c:when>
									                <c:when test="${reportDetail.type eq 'T'}">강사님</c:when>
								                </c:choose>)</td>        
								            </tr>
								            <tr>
								                <th id="title">신고 제목</th>
								                <td>${reportDetail.reportTitle}</td>        
								                <th id="title">신고 처리 상태 </th>
								                <td>${reportDetail.reportStatus}</td>        
								            </tr>
								            <tr>
								                <th id="title">내 용 </th>
								                <td>
								                	<img src="${ pageContext.servletContext.contextPath }/resources/teacher/img/user.png"/>
								                <p>${reportDetail.reason}<p></td>      
								                  
								            </tr>
								        </table>
								    </div>
								 </div>    
                            </div>
                            <div class="row" align="center">
                                <div class=col-sm-5>
                                </div>
                                <div class=col-sm-1>
                                    <button class="btn btn-danger">신고 승인</button>
                                </div>
                                <div class="col-sm-1">
                                    <button class="btn btn-danger">신고 거절</button>
                                </div>
                                <div class="col-sm-5">
                                </div>
                     		 </div>
                        <div class="card md-4"></div>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script  src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-area-demo.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>