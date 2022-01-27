<%@page import="com.koreait.user.dto.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">

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
	<c:set var="user" value="${sessionScope.user }" /> <!--로그인객체받아옴 --> 
	<c:set var="resList" value="${sessionScope.resList }"/><!-- 예약목록 객체받아옴 -->

		<!-- Navbar -->
			<%@ include file="userTool/userNav.jsp" %>
		<!-- /Navbar -->

		<!-- Main Sidebar Container -->
			<%@ include file="userTool/userSidebar.jsp" %>
		<!-- /Main Sidebar Container -->

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
										<c:when test="${resList != null  and fn:length(resList)>0}">
											<c:forEach var="res" items="${resList }">
												<div class="card">
													<div class="card-header">
														<h5 class="m-0">예약번호:${res.reservation_id } 예약날짜:${res.reservation_date }</h5>
													</div>
													<div class="card-body">
													<h6 class="card-title">호텔이름:트립호텔</h6>
													<div class="txt-r">객실금액:12345원</div>
													<p class="card-text">체크인날짜:${res.checkin_date } 체크아웃날짜:${res.checkout_date } 투숙객이름:${res.reservation_lastname}${res.reservation_firstname }</p>
													<a href="#" class="btn btn-primary">예약확인</a>
													<a href="#" class="btn btn-primary">${res.payments_process}</a>
													</div>
												</div>
											</c:forEach>
										</c:when>
										<c:otherwise>
										<div class="card">
													<div class="card-header">
														<h1 class="m-0">예약이없습니다.</h1>
													</div>
												</div>
										</c:otherwise>
									</c:choose>
									<!--페이지이동-->
										<%@ include file="userTool/pagemoving.jsp" %>
									<!--/페이지이동-->
								</div>
							</div>
						  </div>
						  <div class="tab-pane" id="paymentWaiting" role="tabpanel" aria-labelledby="paymentWaiting-tab">
						  <div class="card text-center">
								<div class="nav-tabs-content">
									<c:choose>
										<c:when test="${resList != null  and fn:length(resList)>0}">
<%-- 												<c:if test="${res.payments_process == '결제완료'}"> --%>
											<c:forEach var="res" items="${resList }">
													<div class="card">
														<div class="card-header">
															<h5 class="m-0">예약번호:${res.reservation_id } 예약날짜:${res.reservation_date }</h5>
														</div>
														<div class="card-body">
														<h6 class="card-title">호텔이름:트립호텔</h6>
														<div class="txt-r">객실금액:12345원</div>
														<p class="card-text">체크인날짜:${res.checkin_date } 체크아웃날짜:${res.checkout_date } 투숙객이름:${res.reservation_lastname}${res.reservation_firstname }</p>
														<a href="#" class="btn btn-primary">${res.payments_process}</a>
														</div>
													</div>
											</c:forEach>
<%-- 												</c:if> --%>
										</c:when>
										<c:otherwise>
										<div class="card">
													<div class="card-header">
														<h1 class="m-0">예약이없습니다.</h1>
													</div>
												</div>
										</c:otherwise>
									</c:choose>
									<!--페이지이동-->
										<%@ include file="userTool/pagemoving.jsp" %>
									<!--/페이지이동-->
								</div>
							</div>
						  </div>
						  <div class="tab-pane" id="paymentCompleted" role="tabpanel" aria-labelledby="paymentCompleted-tab">
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
													<p class="card-text">체크인날짜:${reservation.checkin_date } 체크아웃날짜:${reservation.checkout_date } 투숙객이름:${reservation.reservation_lastname}${reservation.reservation_firstname }</p>
													<a href="#" class="btn btn-primary">예약확인</a>
													</div>
												</div>
											</c:forEach>
										</c:when>
										<c:otherwise>
										<div class="card">
													<div class="card-header">
														<h1 class="m-0">예약이없습니다.</h1>
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
						  <div class="tab-pane" id="reviewWrite" role="tabpanel" aria-labelledby="reviewWrite-tab">
						  <div class="card text-center">
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
													<p class="card-text">체크인날짜:${reservation.checkin_date } 체크아웃날짜:${reservation.checkout_date } 투숙객이름:${reservation.reservation_lastname}${reservation.reservation_firstname }</p>
													<a href="#" class="btn btn-primary">예약확인</a>
													</div>
												</div>
											</c:forEach>
										</c:when>
										<c:otherwise>
										<div class="card">
													<div class="card-header">
														<h1 class="m-0">예약이없습니다.</h1>
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
						  </div>
					  </div>			
			
			<!-- /.content-wrapper -->


		<!-- Main Footer -->
			<%@ include file="userTool/userFooter.jsp" %>
		<!-- /Main Footer -->

</body>
</html>
