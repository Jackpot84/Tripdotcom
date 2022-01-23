<%@page import="com.koreait.user.dto.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>트립닷컴 | 내 예약</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="plugins/fontawesome-free-5.15.4-web/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/add.css">
<link rel="stylesheet" href="dist/css/styleAdd.css">
<link rel="stylesheet" href="dist/css/bg.css">
<link rel="stylesheet" href="dist/css/adminlte.css">
<link rel="stylesheet" href="dist/css/min.css">
</head>
<body class="hold-transition sidebar-mini">
	
	<c:set var="user" value="${requestScope.user }" /> <!--로그인객체받아옴 --> 
	<c:set var="reservationList" value="${requestScope.reservationList }"/><!-- 예약목록 객체받아옴 -->
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item">
					<!--
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
-->
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div>
				</li>

<!-- 				<form action="login_view.jsp"> -->
<!-- 				<button type="submit" class="btn btn-primary btn-sm">로그인</button> -->
<!-- 				</form> -->
				
<!-- 				<form action="joinUser_view.jsp"> -->
<!-- 				<button type="submit" class="btn btn-secondary btn-sm" >회원가입</button> -->
<!-- 				</form> -->
				
				내 정보
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> 
						<i class="fas fa-child"></i> 
						<c:choose>
							<c:when test="${user.user_lastname != null or user.user_firstname != null }">
								<span class="text-xsm">안녕하세요!${user.user_lastname }${user.user_firstname }님</span>
							</c:when>
							<c:otherwise>
								<span class="text-xsm">안녕하세요!</span>
							</c:otherwise>
						</c:choose>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">

						<div class="dropdown-divider"></div>
						<a href="goReservationAll.do" class="dropdown-item text-sm text-muted"><i
							class="fas fa-caret-right"></i> 내 예약 </a>
						<div class="dropdown-divider"></div>
						<a href="goMyFavorite.do" class="dropdown-item text-sm text-muted" > <i
							class="fas fa-caret-right"></i> 즐겨찾기
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item text-sm text-muted"> <i
							class="fas fa-caret-right"></i> 트립코인
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item text-sm text-muted"> <i
							class="fas fa-caret-right"></i> 내 정보
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item text-sm text-muted"> <i
							class="fas fa-caret-right"></i> 계정 및 비밀번호
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item text-sm text-muted"> <i
							class="fas fa-caret-right"></i> 로그아웃
						</a>

					</div></li>
				코인
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-copyright"></i>
					<c:choose>
							<c:when test="${user.user_coin == null }">
								<span class="text-xsm">0코인</span>
							</c:when>
							<c:otherwise>
								<span class="text-xsm">${user.user_coin }코인</span>
							</c:otherwise>
						</c:choose>
					</a>
				</li>
			
			
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="#" class="brand-link"> <img
				src="dist/img/tripdotcomLogo.PNG" alt="tripdotcomLogo"
				class="brand-text ebookingImg" style="opacity: .8">
			</a>

			<!-- Sidebar -->
			<div class="sidebar">



				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

						<li class="nav-item"><a href="goReservationAll.do" class="nav-link active">
								<i class="nav-icon fas fa-list"></i>
								<p>내 예약</p>
						</a></li>
						<li class="nav-item"><a href="goMyFavorite.do" class="nav-link "> <i
								class="nav-icon fas fa-list"></i>
								<p>즐겨찾기</p>
						</form>
						<li class="nav-item"><a href="goMyTripcoin.do" class="nav-link"> <i
								class="nav-icon fas fa-list"></i>
								<p>트립코인</p>
						</a></li>
						<li class="nav-item"><a href="goMyInformation.do" class="nav-link"> <i
								class="nav-icon fas fa-list fas"></i>
								<p>내 정보</p>
						</a></li>

						<li class="nav-item"><a href="goMyAccount.do" class="nav-link"> <i
								class="nav-icon fas fa-list"></i>
								<p>계정 및 비밀번호</p>
						</a></li>
					</ul>


					

				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
			<!-- Main content -->
		<div class="content-wrapper">
			<div>
				<!-- Nav tabs -->
					<ul class="nav nav-tabs" id="myTab" role="tablist">
					  <li class="nav-item" role="presentation">
					    <a class="nav-link active" id="reservationAlle-tab" data-toggle="tab" href="#reservationAll" role="tab" aria-controls="reservationAll" aria-selected="true">전체</a>
					  </li>
					  <li class="nav-item" role="presentation">
					    <a class="nav-link" id="paymentWaiting-tab" data-toggle="tab" href="#paymentWaiting" role="tab" aria-controls="paymentWaiting" aria-selected="false">결제대기</a>
					  </li>
					  <li class="nav-item" role="presentation">
					    <a class="nav-link" id="paymentCompleted-tab" data-toggle="tab" href="#paymentCompleted" role="tab" aria-controls="paymentCompleted" aria-selected="false">결제완료</a>
					  </li>
					  <li class="nav-item" role="presentation">
					    <a class="nav-link" id="reviewWrite-tab" data-toggle="tab" href="#reviewWrite" role="tab" aria-controls="reviewWrite" aria-selected="false">리뷰작성</a>
					  </li>
				</ul>

				<!-- Tab panes -->
					  <div class="tab-content">
						  <div class="tab-pane active" id="reservationAll" role="tabpanel" aria-labelledby="reservationAll-tab">
						  	<div class="card text-center">
								<div class="nav-tabs-content">
									<c:choose>
										<c:when test="${reservationList != null  and fn:length(reservationList)>0}">
											<c:forEach var="reservation" items="${reservationList }">
												<div class="card">
													<div class="card-header">
														<h5 class="m-0">예약번호:${reservation.reservation_id } 예약날짜:${reservation.reservation_date }</h5>
													</div>
													<div class="card-body">
													<h6 class="card-title">호텔이름:트립호텔</h6>
													<div class="txt-r">객실금액:12345원</div>
													<p class="card-text">체크인날짜:${reservation.checkin_date } 체크아웃날짜:${reservation.checkout_date } 투숙객이름:${reservation.reservation_lastname+reservation.reservation_firstname }</p>
													<a href="#" class="btn btn-primary">예약확인</a>
													</div>
												</div>
											</c:forEach>
										</c:when>
										<c:otherwise>
										<div class="card">
													<div class="card-header">
														<h5 class="m-0">예약번호:123예약날짜:2021년xx월xx일</h5>
													</div>
													<div class="card-body">
													<h6 class="card-title">호텔이름:트립호텔</h6>
													<div class="txt-r">객실금액:12345원</div>
													<p class="card-text">체크인날짜 체크아웃날짜 투숙객이름</p>
													<a href="#" class="btn btn-primary">예약확인</a>
													</div>
												</div>
										</c:otherwise>
									</c:choose>
									<!--페이지이동-->
									<nav aria-label="Page navigation example">
										<ul class="pagination">
											<li class="page-item"><a class="page-link" href="#"aria-label="Previous">
											 <span aria-hidden="true">&laquo;</span>
											</a></li>
											<li class="page-item active"><a class="page-link " href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#"aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											</a></li>
										</ul>
									</nav>
									<!--/페이지이동-->
								</div>
							</div>
						  </div>
						  <div class="tab-pane" id="paymentWaiting" role="tabpanel" aria-labelledby="paymentWaiting-tab">
						  <div class="card text-center">
								<div class="nav-tabs-content">
									<div class="card">
										<div class="card-header">
											<h5 class="m-0">예약번호:123456 예약날짜:2021년xx월xx일</h5>
										</div>
										<div class="card-body">
										<h6 class="card-title">호텔이름:트립호텔객실금액:12345원</h6>
										<p class="card-text">체크인날짜 체크아웃날짜 투숙객이름</p>
										<a href="#" class="btn btn-primary">결제대기</a>
										</div>
									</div>
									<!--페이지이동-->
									<nav aria-label="Page navigation example">
										<ul class="pagination">
											<li class="page-item"><a class="page-link" href="#"aria-label="Previous">
											 <span aria-hidden="true">&laquo;</span>
											</a></li>
											<li class="page-item active"><a class="page-link " href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#"aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											</a></li>
										</ul>
									</nav>
									<!--/페이지이동-->
								</div>
							</div>
						  </div>
						  <div class="tab-pane" id="paymentCompleted" role="tabpanel" aria-labelledby="paymentCompleted-tab">
						  <div class="card text-center">
								<div class="nav-tabs-content">
									<div class="card">
										<div class="card-header">
											<h5 class="m-0">예약번호:123456 예약날짜:2021년xx월xx일</h5>
										</div>
										<div class="card-body">
										<h6 class="card-title">호텔이름:트립호텔객실금액:12345원</h6>
										<p class="card-text">체크인날짜 체크아웃날짜 투숙객이름</p>
										<a href="#" class="btn btn-primary">예약확인</a>
										</div>
									</div>
									<!--페이지이동-->
									<nav aria-label="Page navigation example">
										<ul class="pagination">
											<li class="page-item"><a class="page-link" href="#"aria-label="Previous">
											 <span aria-hidden="true">&laquo;</span>
											</a></li>
											<li class="page-item active"><a class="page-link " href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#"aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											</a></li>
										</ul>
									</nav>
									<!--/페이지이동-->
								</div>
							</div>
						  </div>
						  <div class="tab-pane" id="reviewWrite" role="tabpanel" aria-labelledby="reviewWrite-tab">
						  <div class="card text-center">
								<div class="nav-tabs-content">
									<div class="card">
										<div class="card-header">
											<h5 class="m-0">예약번호:123456 예약날짜:2021년xx월xx일</h5>
										</div>
										<div class="card-body">
										<h6 class="card-title">호텔이름:트립호텔객실금액:12345원</h6>
										<p class="card-text">체크인날짜 체크아웃날짜 투숙객이름</p>
										<a href="#" class="btn btn-primary">리뷰작성</a>
										</div>
									</div>
									<!--페이지이동-->
									<nav aria-label="Page navigation example">
										<ul class="pagination">
											<li class="page-item"><a class="page-link" href="#"aria-label="Previous">
											 <span aria-hidden="true">&laquo;</span>
											</a></li>
											<li class="page-item active"><a class="page-link " href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#"aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											</a></li>
										</ul>
									</nav>
									<!--/페이지이동-->
								</div>
							</div>
						  </div>
						  </div>
					  </div>			
			</div>
			
			<!-- /.content-wrapper -->

		</div>
		<!-- ./wrapper -->

		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="float-right d-none d-sm-inline">We support your
				trip.</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2021-12. <a href="#">HOME3</a>.
			</strong> All rights reserved.
		</footer>
		<!-- REQUIRED SCRIPTS -->

		<!-- jQuery -->
		<script src="plugins/jquery/jquery.min.js"></script>
		<!-- Bootstrap 4 -->
		<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.js"></script>
</body>
</html>
