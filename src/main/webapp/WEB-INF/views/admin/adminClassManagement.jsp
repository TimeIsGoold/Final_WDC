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
            function detailcopy(){
                location.href="detail copy.html";
            }

            function detail(){
                location.href="detail.html";
            }
            
            function denyClass(){
                location.href="denClassy.html";
            }
            
            function denClassycopy(){
                location.href="denClassy copy.html";
            }  
        </script>
        <style>
            .applyClass {
                width: 311px;
            }

            .progressClass {
                width: 311px;
            }

            .dismissalClass {
                width: 311px;
            }

            .finishClass {
                width: 311px;
            }

            .applyClass:hover {
                background: rgb(112, 112, 112);
            }

            .progressClass:hover {
                background: rgb(112, 112, 112);
            }

            .dismissalClass:hover {
                background: rgb(112, 112, 112);
            }

            .finishClass:hover {
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
                    <div class="container-fluid px-4" style="margin-top: 30px;">
                        <div class="card mb-4">

                            <div class="card-header" style="font-size: x-large;">
                                <i class="fas fa-table me-1"></i>
                                클래스 관리
                            </div>

                            <div class="subMenuBar">
                                <button class="applyClass">신청된 클래스 목록</button>
                                <button class="progressClass">모집중 클래스 목록</button>
                                <button class="dismissalClass">신청 기각 클래스 목록</button>
                                <button class="finishClass">완료 클래스 목록</button>
                            </div>

                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>클래스 번호</th>
                                            <th>클래스 제목</th>
                                            <th>강사 이름</th>
                                            <th>강사 아이디</th>
                                            <th>클래스 가격</th>
                                            <th>클래스 타입</th>
                                            <th>심사상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                     				<c:forEach items="${classList}" var="ClassDTO">
				                            <tr>
				                                <td>${ClassDTO.classNo}</td>
				                                <td>${ClassDTO.classTitle}</td>
				                                <td>${ClassDTO.teacherName}</td>
				                                <td>${ClassDTO.classPrice}</td>
				                                <td>${ClassDTO.classType}</td>
				                                <td>${ClassDTO.decisionStatus}</td>
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