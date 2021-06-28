<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <div class="card md-4" ></div>
                        <div class="card mb-4" align="center">
                            <div class="card-header" style="font-size: x-large;">
                                <i class="fas fa-table me-1"></i>
                                신고 상세 페이지
                            </div>
                            
                            <div style="width: 700px;" id="hb">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>제목</th>
                                            <td>신고합니다!</td>
                                            <th>작성 시간</th>
                                            <td>2021-06-20</td>
                                        </tr>
                                        <tr>
                                            <th>작성자</th>
                                            <td>이해승</td>
                                            <th>작성자 타입</th>
                                            <td>강사</td>
                                        </tr>
                                        <tr>
                                            
                                            <th>내용</th>
                                            <td colspan="3">
                                                <img src="../startbootstrap-sb-admin-gh-pages/pic/color.jpg" alt="콜라" width="400px" height="400px" >
                                                <br>
                                                김현빈 회원이 그릇을 깨고 도망갔습니다.
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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
                        </div>
                        <div class="card md-4"></div>
                    </div>
                </main>
            </div>
            
        </div>
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
            crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-area-demo.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-bar-demo.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
            crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>