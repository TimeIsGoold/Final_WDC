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
    <script>
        function couponIssue(){
            location.href="CustomerCouponManagement.html";
        }
    </script>
    <style>
        th {
            text-align: center;
            width: 200px;
            border: 1px solid lightgrey !important;
            background: #fef0ae !important;
        }
    
        td {
            border: 1px solid lightgrey !important;
        }

        .issueBtn:hover {
            background: black !important;
            color: white !important;
        }
    </style>
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
                            <a class="nav-link collapsed" href="CustomerQuestionManagement.html">
                                문의
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerCouponManagement.html" style="color: #fef0ae;">
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
                                쿠폰 발급
                            </div>

                            <div class="card-body">
                                <table class="table" style="border: 1px solid;">
                                    <tbody>
                                        <tr>
                                            <th>대 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상</th>
                                            <td colspan="4">
                                                <input type="radio" id="total" name="contact" value="total" style="margin-right: 10px;">전체 회원
                                                <input type="radio" id="certain" name="contact" value="certain" style="margin-right: 10px; margin-left: 110px;">특정 회원
                                                <input type="text" placeholder="ID를 입력하세요." style="margin-left: 13px; border: 1px solid lightgray; width: 300px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>쿠 &nbsp;폰 &nbsp;명</th>
                                            <td colspan="4"><input type="text" style="width: 1000px; border: none;"></td>
                                        </tr>
                                        <tr>
                                            <th>사용 기한</th>
                                            <td style="text-align: center; background-color: rgb(235, 235, 235);">시작일</td>
                                            <td><input type="date"></td>
                                            <td style="text-align: center; background: rgb(235, 235, 235);">종료일</td>
                                            <td><input type="date"></td>
                                        </tr>
                                        <tr>
                                            <th>제한 조건</th>
                                            <td colspan="4"><input type="text" style="width: 1000px; border: none;"></td>
                                        </tr>
                                        <tr>
                                            <th>할인 금액</th>
                                            <td colspan="4"><input type="text" style="width: 1000px; border: none;"></td>
                                        </tr>
                                    </tbody>
                                </table>

                                <div class="moveReturnPageBtn" style="margin-left: 1130px;">
                                    <input type="submit" class="issueBtn" value="발급하기" onclick="couponIssue();" style="width: 100px; background: #fef0ae; border: 1px solid lightgrey;">
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

