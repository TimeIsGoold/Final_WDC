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
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="CustomerMain.html" style="width: 180px;">우리동네 클래스</a>
            <!-- Sidebar Toggle-->
            <button
                class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
                id="sidebarToggle"
                href="#!">
                <i class="fas fa-bars"></i>
            </button>
            <!-- Navbar-->
            <ul style="padding: 20px 0px 0px 1260px;">
                <a
                    class="sb-nav-link-icon"
                    id="navbarDropdown"
                    href="CustomerLogin.html"
                    role="button"
                    style="background-color: gray; width: 50px; height: 50px;">
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
                            <a class="nav-link collapsed" href="CustomerClassManagement.html" style="color: #fef0ae;">
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
                                            <th>회원번호</th>
                                            <th>분류</th>
                                            <th>성명</th>
                                            <th>아이디</th>
                                            <th>강의 제목</th>
                                            <th>강의 가격</th>
                                            <th>강의 진행 날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr onclick="detailcopy();">
                                            <td>1</td>
                                            <td>스포츠/원데이</td>
                                            <td>이해승</td>
                                            <td>id1</td>
                                            <td>쉽고 재미있는 댄스 스포츠</td>
                                            <td>50,000</td>
                                            <td>2021/07/01 ~ 2021/07/31</td>
                                        </tr>
                                        <tr onclick="detail();">
                                            <td>2</td>
                                            <td>뷰티/원데이</td>
                                            <td>김현빈</td>
                                            <td>id2</td>
                                            <td>현빈쌤의 메이크업 강의</td>
                                            <td>50,000</td>
                                            <td>2021/07/01 ~ 2021/07/31</td>
                                        </tr>
                                        <tr onclick="denyClass();">
                                            <td>3</td>
                                            <td>베이킹/원데이</td>
                                            <td>이해승</td>
                                            <td>id1</td>
                                            <td>수제 마카롱 만들기</td>
                                            <td>100,000</td>
                                            <td>2021/07/01 ~ 2021/07/31</td>
                                        </tr>
                                        <tr onclick="denClassycopy();">
                                            <td>4</td>
                                            <td>IT/정기</td>
                                            <td>김현빈</td>
                                            <td>id2</td>
                                            <td>3일만에 자바 마스터하기</td>
                                            <td>100,000</td>
                                            <td>2021/07/01 ~ 2021/07/31</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>IT/원데이</td>
                                            <td>이해승</td>
                                            <td>id1</td>
                                            <td>포토샵 하루 마스터하기</td>
                                            <td>150,000</td>
                                            <td>2021/07/01 ~ 2021/07/31</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>스포츠/정기</td>
                                            <td>김현빈</td>
                                            <td>id2</td>
                                            <td>방송댄스</td>
                                            <td>150,000</td>
                                            <td>2021/07/01 ~ 2021/07/31</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>뷰티/원데이</td>
                                            <td>이해승</td>
                                            <td>id1</td>
                                            <td>해승쌤의 네일 교실</td>
                                            <td>200,000</td>
                                            <td>2021/07/01 ~ 2021/07/31</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>스포츠/원데이</td>
                                            <td>김현빈</td>
                                            <td>id2</td>
                                            <td>쉽고 재미있는 댄스스포츠</td>
                                            <td>200,000</td>
                                            <td>2021/07/01 ~ 2021/07/31</td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>베이킹/정기</td>
                                            <td>이해승</td>
                                            <td>id1</td>
                                            <td>제과제빵 마스터하기</td>
                                            <td>250,000</td>
                                            <td>2021/07/01 ~ 2021/07/31</td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>스포츠/원데이</td>
                                            <td>김현빈</td>
                                            <td>id2</td>
                                            <td>자전거 왕초보 교실</td>
                                            <td>50,000</td>
                                            <td>2021/07/01 ~ 2021/07/31</td>
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
</html>