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
        .container-fluid {
        	margin-top: 30px;
        }
        
        .card-header {
        	font-size: x-large;
        }
        
        .table {
        	border: 1px solid lightgray;
        }
        
        th {
            text-align: center !important;
            border: 1px solid lightgray;
            width: 150px;
            vertical-align: middle;
            background: #fef0ae !important;
        }

        td {
            text-align: center;
            width: 180px;
        }

        .detailCalculate {
        	border: 1px solid lightgray;
        }
        
        .signCalculate {
        	vertical-align: middle;
        	font-weight: bolder;
        	font-size: large;
        }
        
        .submitBtn {
        	margin-left: 85%;
        }
        
        .returnPageBtn {
        	width: 100px; 
        	background: #fef0ae; 
        	border: 1px solid lightgrey;
        }

        .returnPageBtn:hover {
            background: rgb(112, 112, 112);
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
                                <i class="fas fa-table me-1"></i>정산 상세
                            </div>

                            <div class="card-body">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>아 &nbsp;&nbsp;이 &nbsp;&nbsp;디</th>
                                            <td colspan="4"></td>
                                            <th>분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류</th>
                                            <td colspan="4"></td>
                                        </tr>
                                        <tr>
                                            <th>이 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</th>
                                            <td colspan="4"></td>
                                            <th>계좌 번호</th>
                                            <td colspan="4"></td>
                                        </tr>
                                        <tr>
                                            <th>개설 클래스</th>
                                            <td colspan="4"></td>
                                            <th>근무 일수</th>
                                            <td colspan="4"></td>
                                        </tr>
                                        <tr>
                                            <th>총&nbsp;&nbsp;&nbsp;매출액</th>
                                            <td colspan="4"></td>
                                            <th>근무 시간</th>
                                            <td colspan="4"></td>
                                        </tr>
                                        <tr>
                                            <th>최 종 정 산</th>
                                            <td>
                                                <div class="detailCalculate">총 매출</div>
                                                <div class="detailCalculate">0</div>
                                            </td>
                                            <td class="signCalculate">
                                                <div>-</div>
                                            </td>
                                            <td>
                                                <div class="detailCalculate">소비세</div>
                                                <div class="detailCalculate">0</div>
                                            </td>
                                            <td class="signCalculate">
                                                <div>-</div>
                                            </td>
                                            <td>
                                                <div class="detailCalculate">사용 수수료(10%)</div>
                                                <div class="detailCalculate">0</div>
                                            </td>
                                            <td class="signCalculate">
                                                <div>-</div>
                                            </td>
                                            <td>
                                                <div class="detailCalculate">카드 수수료</div>
                                                <div class="detailCalculate">0</div>
                                            </td>
                                            <td class="signCalculate">
                                                <div>=</div>
                                            </td>
                                            <td>
                                                <div class="detailCalculate">최종 금액</div>
                                                <div class="detailCalculate">0</div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <div class="submitBtn">
                                	<input type="submit" class="returnPageBtn" value="정산하기">
                                    <input type="button" class="returnPageBtn" value="리스트보기" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/refundManagement?currentMenu=refund&YN=N'">
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
