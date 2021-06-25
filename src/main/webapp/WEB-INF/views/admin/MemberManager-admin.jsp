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
                            <a class="nav-link collapsed" href="CustomerMemberManagement.html" style="color: #fef0ae;">
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
                                문의내역
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
                                정산 내역
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
                                회원관리 상세 페이지
                            </div>
                            <br><br><br><br>
                            <div class="row">
                                <div class="col-md-2" style="font-size: xx-large; padding-left: 150px;">김현빈 강사님</div>
                                <div class="col-md-2" href="#" style="padding-top: 20px; cursor: pointer;" >클래스 바로가기</div>
                            </div>
                            <br><br>
                            <div class="row">
                                <div class="col-sm-6" style="margin-left: 40px;">
                                    <br><br><br>
                                    <table class="table table-striped">
                                        <tr>
                                            <td>회원 번호</td>
                                            <td style="padding-left: 200px;">1032</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>회원 타입</td>
                                            <td style="padding-left: 200px;">강사</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>아이디</td>
                                            <td style="padding-left: 200px;">kim1234</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>이메일</td>
                                            <td style="padding-left: 200px;">kim123@gmail.com</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>휴대폰 번호</td>
                                            <td style="padding-left: 200px;">010-1234-1234</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>생년 월일</td>
                                            <td style="padding-left: 200px;">1993-08-02</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>가입일</td>
                                            <td style="padding-left: 200px;">2021-06-20</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>누적 신고</td>
                                            <td style="padding-left: 200px;">3회</td>
                                            <td align="right"><button type="submit" class="btn btn-danger" >블랙리스트 등록</button></td>
                                        </tr>
                                        <tr>
                                            <td>쿠폰 발급하기</td>
                                            <td colspan="" align="right"><a class="btn btn-primary" href="couponIssue.html" role="button">&nbsp;&nbsp;&nbsp;&nbsp;쿠폰&nbsp;&nbsp;발급&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
                                            <td></td>
                                        </tr>

                                    </table>
                                </div>
                                <div class="col-sm-5" align="center">
                                    <img src="../startbootstrap-sb-admin-gh-pages/pic/color.jpg" alt="고양이" class="img-responsive img-circle" width="200px" height="200px">
                                    <br><br><br>
                                    <textarea cols="100" rows="10" style="resize: none;" placeholder="강사님의 프로필 소개를 입력해주세요" readonly></textarea>

                                </div>
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