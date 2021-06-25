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
        <script type="text/javascript">
            function moveDetail() {
                location.href="calculateDetail.html";
            }
        </script>
        <style>
            .calculateNo {
                width: 627px;
            }

            .calculateYes {
                width: 627px;
            }
        </style>
    </head>
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
                            <a class="nav-link collapsed" href="CustomerCouponManagement.html">
                                쿠폰
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerNoticeManagement.html">
                                공지사항
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerCalculateManagement.html" style="color: #fef0ae;">
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
                                <i class="fas fa-table me-1"></i>정산 내역
                            </div>

                            <div class="subMenuBar">
                                <button class="calculateNo">정산 미완료 목록</button>
                                <button class="calculateYes">정산 완료 목록</button>
                            </div>

                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>정산번호</th>
                                            <th>분류</th>
                                            <th>성명</th>
                                            <th>아이디</th>
                                            <th>이메일</th>
                                            <th>정산 금액</th>
                                            <th>정산 날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr onclick="moveDetail();">
                                            <td>1</td>
                                            <td>개인</td>
                                            <td>이해승</td>
                                            <td>id1</td>
                                            <td>lee@greedy.com</td>
                                            <td>500,000</td>
                                            <td>2021/07/03</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>법인</td>
                                            <td>김현빈</td>
                                            <td>id2</td>
                                            <td>kim@greedy.com</td>
                                            <td>500,000</td>
                                            <td>2021/07/03</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>프리랜서</td>
                                            <td>이해승</td>
                                            <td>id3</td>
                                            <td>leelee@greedy.com</td>
                                            <td>100,000</td>
                                            <td>2021/07/03</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>프리랜서</td>
                                            <td>김현빈</td>
                                            <td>id4</td>
                                            <td>kimkim@greedy.com</td>
                                            <td>100,000</td>
                                            <td>2021/07/03</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>법인</td>
                                            <td>이해승</td>
                                            <td>id5</td>
                                            <td>llee@greedy.com</td>
                                            <td>150,000</td>
                                            <td>2021/07/03</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>개인</td>
                                            <td>김현빈</td>
                                            <td>id6</td>
                                            <td>kikim@greedy.com</td>
                                            <td>150,000</td>
                                            <td>2021/07/03</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
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
</html></html>