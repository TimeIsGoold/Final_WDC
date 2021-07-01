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
    	<script>
    		function drawColor(){
    			var documentUrl = document.URL; 
    			var NdocumentUrl = new URL(documentUrl);  
    			var currentMenu = NdocumentUrl .searchParams.get("currentMenu");  //url에 있는 name이란 파라미터값을 가지고옴
    			 
    			console.log(NdocumentUrl);
    			console.log(currentMenu);
    			
    			const sideBar = document.getElementsByClassName('nav-link');
    			
    			const currentMenuBar = document.getElementById(currentMenu);
    			currentMenuBar.style.color = '#fef0ae';

    		}
    	</script>
    </head>
<body>
    <div id="layoutSidenav_nav">
       <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">

           <div class="sb-sidenav-menu">
               <div class="nav">
                   <a class="nav-link collapsed" id="member" href="${ pageContext.servletContext.contextPath }/admin/memberManagement?currentMenu=member">
                   	     회원관리
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" id="class" href="${ pageContext.servletContext.contextPath }/admin/classManagement?currentMenu=class">
                                          클래스관리
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" id="report" href="${ pageContext.servletContext.contextPath }/admin/reportManagement?currentMenu=report">
                                           신고관리
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" id="report" href="${ pageContext.servletContext.contextPath }/admin/blackListMenagement?currentMenu=blacklist&ut=to">
                                          블랙리스트 관리
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" id="question" href="${ pageContext.servletContext.contextPath }/admin/questionManagement?currentMenu=question&mt=to">
                                           문의
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" id="coupon" href="${ pageContext.servletContext.contextPath }/admin/couponManagement?currentMenu=coupon">
                                           쿠폰
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" id="notice" href="${ pageContext.servletContext.contextPath }/admin/noticeManagement?currentMenu=notice">
                                           공지사항
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <a class="nav-link collapsed" id="calculate" href="${ pageContext.servletContext.contextPath }/admin/calculateManagement?currentMenu=calculate&YN=N">
                                           정산
                       <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
               </div>
           </div>
           <script>
            drawColor();
           </script>
           <div class="sb-sidenav-footer">
               <div class="small">
               	Copyright &copy; 우리동네 클래스
               </div>
           </div>
       </nav>
   </div>
</body>
</html>