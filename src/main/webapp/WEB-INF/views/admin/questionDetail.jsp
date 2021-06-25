<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>우리동네 클래스</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <style>
        th {
            text-align: center;
            width: 200px !important;
            border: 1px solid lightgrey !important;
            background: #fef0ae !important;
            vertical-align: middle;
        }

        td {
            border: 1px solid lightgrey !important;
        }

        .returnBtn:hover {
            background: black !important;
            color: white !important;
        }

        .answerBtn:hover {
            background: black !important;
            color: white !important;
        }
    </style>
    <script>
        function noticeModify(){
            location.href="CustomerQuestionManagement.html";
        }

        function noticeAnswer(){
            location.href="CustomerQuestionManagement.html";
        }
    </script>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="CustomerMain.html" style="width: 180px;">우리동네 클래스</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar-->
            <ul style="padding: 20px 0px 0px 1260px;">
                <a class="sb-nav-link-icon" id="navbarDropdown" href="CustomerLogin.html" role="button" style="background-color: gray; width: 50px; height: 50px;">
                    <img src="./pic/log-in.png" style="width: 30px; height: 30px;">
                </a>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link collapsed" href="CustomerMemberManagement.html">
                                회원관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerClassManagement.html">
                                클래스관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerMemberReportManagement.html">
                                신고관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerQuestionManagement.html" style="color: #fef0ae;">
                                문의
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerCouponManagement.html">
                                쿠폰
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerNoticeManagement.html">
                                공지사항
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerCalculateManagement.html">
                                정산
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">
                        Copyright &copy; 우리동네 클래스
                        </div>
                    </div>
                </nav>
            </div>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4" style="margin-top: 30px;">
                        <div class="card mb-4">

                            <div class="card-header" style="font-size: x-large;">
                                <i class="fas fa-table me-1"></i>
                                문의 상세
                            </div>

                            <div class="card-body">
                                <table class="table" style="border: 1px solid;">
                                    <tbody>
                                        <tr>
                                            <th>회원번호</th>
                                            <td style="width: 410px;">1</td>
                                            <th>분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류</th>
                                            <td>강사</td>
                                        </tr>
                                        <tr>
                                            <th>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</th>
                                            <td>이해승</td>
                                            <th>아&nbsp;&nbsp;이&nbsp;&nbsp;디</th>
                                            <td>id1</td>
                                        </tr>
                                        <tr>
                                            <th>제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</th>
                                            <td colspan="3">수업 듣는 학생 김현빈씨가 너무 시끄러워요</td>
                                        </tr>
                                        <tr>
                                            <th>내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</th>
                                            <td colspan="3" style="height: 200px;">
                                                <div style="overflow: auto;">
                                                    김현빈씨가 너무 시끄러워서 수업을 들을 수 없어요... 어떻게하죠?
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="card-body">
                                <table class="table" style="border: 1px solid;">
                                    <tr>
                                        <th>답&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;변</th>
                                        <td>
                                            <div style="overflow: auto;">
                                                <input type="text" style="width: 990px; height: 150px; border: none;">
                                            </div>
                                        </td>
                                        </tr>
                                </table>
                                
                                <div class="submitBtn" style="margin-left: 1000px;">
                                    <input type="submit" class="returnBtn" value="리스트보기" onclick="noticeModify();" style="width: 100px; background: #fef0ae; border: 1px solid lightgrey;">
                                    <input type="submit" class="answerBtn" value="답변달기" onclick="noticeAnswer();" style="width: 100px; background: #fef0ae; border: 1px solid lightgrey;">
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

