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
                            <div class="btn-group btn-group-justified">
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=total" class="btn btn-warning">전체 </a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=one" class="btn btn-warning">1차 심사 진행중</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=two" class="btn btn-warning">2차 심사 진행중</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=accept" class="btn btn-warning">승인된 클래스</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=reject" class="btn btn-warning">거절된 클래스</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=lackOfCheering" class="btn btn-warning">응원 미달 클래스</a>
						        <a  href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=complate" class="btn btn-warning">완료 클래스</a>
      						</div>
                            <div class="card-body">
                            <ul class="nav nav-tabs" style=" margin-left: 0px; ">

							  <li class="nav-item">
							    <a class="nav-link active" data-toggle="tab" href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=total">전체</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" data-toggle="tab" href="${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?ct=total">2차 승인</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" data-toggle="tab" href="#zxc">반려</a>
							  </li>
							</ul>
							<br>
							<div class="tab-content">
 								<table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>전체 선택</th>
                                            <th>클래스 제목</th>
                                            <th>강사 이름</th>
                                            <th>1차 심사통과 날짜</th>
                                            <th>클래스 종류</th>
                                            <th>응원 갯수</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                     				<c:forEach items="${cheeringClassList}" var="cheeringClassList">
				                            <tr>
				                                <td><input type="checkbox"/> </td>
				                                <td>${cheeringClassList.classTitle}</td>
				                                <td>${cheeringClassList.teacherName}</td>
				                                <td>${cheeringClassList.classPrice}</td>
				                                <td>${cheeringClassList.classPrice}</td>
				                                <td>${cheeringClassList.classPrice}</td>
				                            </tr>
				                        </c:forEach>
                                    </tbody>
                                </table>

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