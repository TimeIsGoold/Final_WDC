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
                                회원관리(수강생) 상세 페이지
                            </div>
                            <br><br><br><br>
                            <div class="row">
                                <div class="col-md-2" style="font-size: xx-large; padding-left: 150px;">${memberInfo.studentName}
                                <c:choose>
				                   	<c:when test="${ memberInfo.type eq 'T'}">강사님</c:when>
				                  	<c:when test="${ memberInfo.type eq 'U'}">수강생</c:when>
				                </c:choose>
                                </div>
                                <div class="col-md-2" href="#" style="padding-top: 20px; cursor: pointer;" >클래스 바로가기</div>
                            </div>
                            <br><br>
                            <div class="row">
                                <div class="col-sm-6" style="margin-left: 40px;">
                                    <br><br><br>
                                    <table class="table table-striped">
                                        <tr>
                                            <td>회원 번호</td>
                                            <td style="padding-left: 200px;">${ memberInfo.studentnNo }</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>회원 타입</td>
                                            <td style="padding-left: 200px;">
                                            	<c:choose>
				                                	<c:when test="${ memberInfo.type eq 'T'}">강사님</c:when>
				                                	<c:when test="${ memberInfo.type eq 'U'}">수강생</c:when>
				                                </c:choose>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>아이디</td>
                                            <td style="padding-left: 200px;">${ memberInfo.id }</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>휴대폰 번호</td>
                                            <td style="padding-left: 200px;">${ memberInfo.phone }</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>생년 월일</td>
                                            <td style="padding-left: 200px;">${ memberInfo.birth }</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>가입일</td>
                                            <td style="padding-left: 200px;">${ memberInfo.enrollDate }</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>누적 신고</td>
                                            <td style="padding-left: 200px;">${ memberInfo.reportedCnt }</td>
                                            <td align="right"><button type="submit" class="btn btn-danger" >블랙리스트 등록</button></td>
                                        </tr>
                                        <tr>
                                            <td>쿠폰 발급하기</td>
                                            <td colspan="" align="right"><a class="btn btn-primary" href="couponIssue.html" role="button">&nbsp;&nbsp;&nbsp;&nbsp;쿠폰&nbsp;&nbsp;발급&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
                                            <td></td>
                                        </tr>
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
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"  crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>