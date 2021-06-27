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
        <!-- Favicon-->
    	<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
<body>
    <div id="layoutSidenav_nav">
       <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
           <div class="sb-sidenav-menu">
               <div class="nav">
                   <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/memberManagement">
                   	     회원관리
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/classManagement">
                                          클래스관리
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/adminMemberReportManagement">
                                           신고관리
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/adminQuestionManagement">
                                           문의
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/adminCouponManagement">
                                           쿠폰
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/adminNoticeManagement">
                                           공지사항
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/adminCalculateManagement" style="color: #fef0ae;">
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
</body>
</html>