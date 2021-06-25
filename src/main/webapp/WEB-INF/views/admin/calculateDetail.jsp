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
        <script>
            function returnListPage(){
                location.href="CustomerCalculateManagement.html";
            }

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
        th {
            text-align: center;
            border: 1px solid lightgray;
            width: 150px;
            vertical-align: middle;
            background: #fef0ae !important;
        }

        td {
            text-align: center;
        }

        .classCalculateInfo td {
            border: 1px solid lightgray;
        }

        .bg {
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
            width: 500px;
            height: 500px;
            z-index: 2;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
        }

        .listDetailBtn:hover {
            background: black !important;
            color: white !important;
        }

        .returnPageBtn:hover {
            background: black !important;
            color: white !important;
        }

        .bt1:hover {
            background: black !important;
            color: white !important;  
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
                                <i class="fas fa-table me-1"></i>
                                정산 상세
                            </div>

                            <div class="card-body">
                                <table class="table" style="border: 1px solid lightgray;">
                                    <tbody>
                                        <tr>
                                            <th>아 &nbsp;&nbsp;이 &nbsp;&nbsp;디</th>
                                            <td colspan="4" style="width: 180px;">id1</td>
                                            <th>분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류</th>
                                            <td colspan="4">사업자</td>
                                        </tr>
                                        <tr>
                                            <th>이 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</th>
                                            <td colspan="4">이해승</td>
                                            <th>계좌 번호</th>
                                            <td colspan="4">1111-111-111111</td>
                                        </tr>
                                        <tr>
                                            <th>개설 클래스</th>
                                            <td colspan="4">
                                                <input type="submit" class="listDetailBtn" value="클래스 내역" onclick="classCalculateInfo();" style="background: #fef0ae; border: 1px solid lightgrey;">
                                            </td>
                                            <th>근무 일수</th>
                                            <td colspan="4">15일</td>
                                        </tr>
                                        <tr>
                                            <th>총&nbsp;&nbsp;&nbsp;매출액</th>
                                            <td colspan="4">1,000,000</td>
                                            <th>근무 시간</th>
                                            <td colspan="4">150시간</td>
                                        </tr>
                                        <tr>
                                            <th>최 종 정 산</th>
                                            <td>
                                                <div style="border: 1px solid lightgray;">총 매출</div>
                                                <div style="border: 1px solid lightgray;">3,000,000</div>
                                            </td>
                                            <td style="vertical-align: middle;">
                                                <div>-</div>
                                            </td>
                                            <td>
                                                <div style="border: 1px solid lightgray;">소비세</div>
                                                <div style="border: 1px solid lightgray;">300,000</div>
                                            </td>
                                            <td style="vertical-align: middle;">
                                                <div>-</div>
                                            </td>
                                            <td>
                                                <div style="border: 1px solid lightgray;">사용 수수료(10%)</div>
                                                <div style="border: 1px solid lightgray;">300,000</div>
                                            </td>
                                            <td style="vertical-align: middle;">
                                                <div>-</div>
                                            </td>
                                            <td>
                                                <div style="border: 1px solid lightgrey;">카드 수수료</div>
                                                <div style="border: 1px solid lightgray;">30,000</div>
                                            </td>
                                            <td style="vertical-align: middle;">
                                                <div>=</div>
                                            </td>
                                            <td>
                                                <div style="border: 1px solid lightgrey;">최종 금액</div>
                                                <div style="border: 1px solid lightgrey;">2,370,000</div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <div class="submitBtn" style="margin-left: 1130px;">
                                    <input type="submit" class="returnPageBtn" value="리스트보기" onclick="returnListPage();" style="width: 100px; background: #fef0ae; border: 1px solid lightgrey;">
                                </div>
                            </div>

                        </div>
                    </div>
                </main>
            </div>

        </div>

        <!-- modal -->
        <div class="bg" style="display: none;"></div>
        <div class="classCalculateInfo" style="display: none; overflow: auto;">

            <div style="font-size: x-large; font-weight: bolder; margin-top: 10px; margin-left: 120px;">
                클래스 상세 정산 정보
            </div>
            
            <div style="margin-top: 10px;">
                <table style="border: 1px solid; margin-left: 25px; width: 450px;">
                    <thead style="background: #fef0ae;">
                        <td>클래스명</td>
                        <td>인원</td>
                        <td>매출액</td>
                    </thead>
                    <tbody>
                        <tr>
                            <td>해승쌤의 자바 교실</td>
                            <td>10</td>
                            <td>1,000,000</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="close" style="margin-top: 10px; margin-left: 25px; margin-bottom: 10px;">
                <input type="submit" value="닫기" class="bt1" onclick="cancel();" style="width: 450px; background: #fef0ae; border: 1px solid lightgrey;">
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
