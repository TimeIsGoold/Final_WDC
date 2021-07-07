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
        <script>
            function classCalculateInfo(){
                var pop3 = document.getElementsByClassName("bg")[0];
                var pop4 = document.getElementsByClassName("classCalculateInfo")[0];

                pop3.style.display='block';
                pop4.style.display='block';
            }

            function cancel(){
                var pop1 = document.getElementsByClassName("bg")[0];
                var pop2 = document.getElementsByClassName("classCalculateInfo")[0];

                pop1.style.display='none';
                pop2.style.display='none';
            }
        </script>
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

        .classCalculateInfo td {
            border: 1px solid lightgray;
        }

        .bg {
         	display: none;
            background-color: black;
            opacity: 70%;
            position: fixed;
            width: 100%;
            height: 100%;
            z-index: 1;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            display: none;
        }

        .classCalculateInfo {
            display: none;
            position: fixed;
            width: 600px;
            height: 500px;
            z-index: 2;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
        }

		.listDetailBtn {
			background: #fef0ae; 
			border: 1px solid lightgrey;
			padding: 5px 17px 5px 17px;
		}

        .listDetailBtn:hover {
            background: rgb(112, 112, 112);
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
        
        #modalTitle {
        	font-size: x-large; 
        	font-weight: bolder; 
        	margin-top: 10px; 
        	margin-left: 172px;
        }
        
        .modalInfoArea {
        	margin-top: 10px;
        }
        
        .modalTable {
        	border: 1px solid; 
        	margin-left: 25px; 
        	width: 550px;
        }
        
        thead {
        	background: #fef0ae;
        }
        
        #classTitle {
        	width: 55%;
        }
        
        #count {
        	width: 15%;
        }
        
        #price {
        	width: 30%;
        }
        
        .close {
        	margin-top: 10px; 
        	margin-left: 25px; 
        	margin-bottom: 10px;
        }
        
        #closeBtn {
        	width: 550px; 
        	background: #fef0ae; 
        	border: 1px solid lightgrey;
        }

        #closeBtn:hover {
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
                                            <th>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</th>
                                            <td colspan="4">${ calculateInfoDetail.teName }</td>
                                            <th>분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류</th>
                                            <c:choose>
				                                	<c:when test="${ calculateInfoDetail.teType eq 'FREE'}">
				                                		<td colspan="4">프리랜서</td>
				                                	</c:when>
				                                	<c:when test="${ calculateInfoDetail.teType eq 'INDI'}">
				                                		<td colspan="4">사업자</td>
				                                	</c:when>
				                            </c:choose>
                                        </tr>
                                        <tr>
                                            <th>아&nbsp;&nbsp;이&nbsp;디</th>
                                            <td colspan="4">${ calculateInfoDetail.teId }</td>
                                            <th>은&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;행</th>
                                            <td colspan="4">${ calculateInfoDetail.bank }</td>
                                        </tr>
                                        <tr>
                                            <th>클&nbsp;&nbsp;래&nbsp;스</th>
                                            <td colspan="4">
                                                <input type="submit" class="listDetailBtn" value="상세 정보" onclick="classCalculateInfo();">
                                            </td>
                                            <th>계좌번호</th>
                                            <td colspan="4">${ calculateInfoDetail.teAcntNo }</td>
                                        </tr>
                                        <tr>
                                            <th>최종정산</th>
                                            <td>
                                                <div class="detailCalculate">총 매출</div>
                                                <div class="detailCalculate"></div>
                                            </td>
                                            <td class="signCalculate">
                                                <div>-</div>
                                            </td>
                                            <td>
                                                <div class="detailCalculate">소비세</div>
                                                <div class="detailCalculate">${ calculateInfoDetail.tax}</div>
                                            </td>
                                            <td class="signCalculate">
                                                <div>-</div>
                                            </td>
                                            <td>
                                                <div class="detailCalculate">사용 수수료(10%)</div>
                                                <div class="detailCalculate">${ calculateInfoDetail.useFees }</div>
                                            </td>
                                            <td class="signCalculate">
                                                <div>-</div>
                                            </td>
                                            <td>
                                                <div class="detailCalculate">카드 수수료</div>
                                                <div class="detailCalculate">${ calculateInfoDetail.cardFees }</div>
                                            </td>
                                            <td class="signCalculate">
                                                <div>=</div>
                                            </td>
                                            <td>
                                                <div class="detailCalculate">최종 금액</div>
                                                <div class="detailCalculate">${ calculateInfoDetail.calcAmount }</div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <div class="submitBtn">
                                	<input type="submit" class="returnPageBtn" value="정산하기">
                                    <input type="button" class="returnPageBtn" value="리스트보기" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/calculateManagement?currentMenu=calculate&YN=N'">
                                </div>
                            </div>

                        </div>
                    </div>
                </main>
            </div>

        </div>

        <!-- modal -->
        <div class="bg"></div>
        <div class="classCalculateInfo" style="overflow: auto;">

            <div id="modalTitle">클래스 상세 정산 정보</div>
            
            <div class="modalInfoArea">
                <table class="modalTable">
                    <thead>
                        <td>클래스명</td>
                        <td>인원</td>
                        <td>근무일수</td>
                        <td>근무시간</td>
                    </thead>
                    <tbody>
                        <tr>
                            <td id="classTitle"></td>
                            <td id="count"></td>
                            <td id="workDay"></td>
                            <td id="workTime"></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="close">
                <input type="submit" value="닫기" id="closeBtn" onclick="cancel();">
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>
