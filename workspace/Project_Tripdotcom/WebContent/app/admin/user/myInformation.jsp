<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>트립닷컴 | 내정보</title>

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
</head>
<body class="hold-transition sidebar-mini">
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

			

				<!-- 내 정보 -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <!--          <i class="fas fa-question"></i>-->
						<i class="fas fa-child"></i>
						<span class="text-xsm">안녕하세요 김사과님!</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
				
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item text-sm text-muted"><i class="fas fa-caret-right"></i>
						 내 예약
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item text-sm text-muted"> <i class="fas fa-caret-right"></i>
						즐겨찾기
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item text-sm text-muted"> <i class="fas fa-caret-right"></i>
						 트립코인
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item text-sm text-muted"> <i class="fas fa-caret-right"></i>
						 내 정보
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item text-sm text-muted"> <i class="fas fa-caret-right"></i>
						계정 및 비밀번호
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item text-sm text-muted"> <i class="fas fa-caret-right"></i>
						로그아웃
						</a>
				
					</div>
					</li>
		<!-- 코인 -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> 
						<i class="far fa-copyright"></i>
						<span class="text-xsm">1,000,000,000C</span>
				</a>
					</li>
					
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="#" class="brand-link"> 
				<img src="dist/img/tripdotcomLogo.PNG" alt="tripdotcomLogo"
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

					<li class="nav-item"><a href="goReservationAll.do" class="nav-link ">
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
						<li class="nav-item"><a href="goMyInformation.do" class="nav-link active"> <i
								class="nav-icon fas fa-list fas"></i>
								<p>내 정보</p>
						</a></li>

						<li class="nav-item"><a href="goMyAccount.do" class="nav-link "> <i
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
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->

			<!-- Main content -->
			<div class="card text-left">
			
				<div class="nav-tabs-content"> 
					<div class="content">
						    	성 <input type="text"><br>
						    	이름<input type="text"><br>
						    	생년월일<input type="text">년<input type="text">월<input type="text">일<br>
						    	성별<input type="text"><br>
						    	이메일주소<input type="text"><br>
						    	<input type="button" value="수정하기" >
					<!-- /.content -->
				</div>
			</div>

			<!-- /.content-wrapper -->
		
			<!-- Control Sidebar -->
			<aside class="control-sidebar control-sidebar-dark">
				<!-- Control sidebar content goes here -->
				<div class="p-3">
					<h5>Title</h5>
					<p>Sidebar content</p>
				</div>
			</aside>
			<!-- /.control-sidebar -->

			
		</div>
		<!-- ./wrapper -->
		</div>
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
