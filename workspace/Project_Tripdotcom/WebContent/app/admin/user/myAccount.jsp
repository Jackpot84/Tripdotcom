<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>트립닷컴 | 계정 및 비밀번호</title>

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
		<!-- Navbar -->
			<%@ include file="userTool/userNav.jsp" %>
		<!-- /Navbar -->

		<!-- Main Sidebar Container -->
			<%@ include file="userTool/userSidebar.jsp" %>
		<!-- /Main Sidebar Container -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->

			<!-- Main content -->
			<div class="card text-left">
			
				<div class="nav-tabs-content">
				    <!-- content --> 
					<div class="content">
						비밀번호 <br>
						****** <a href="">비밀번호 변경</a> <br><br>
						이메일 <br>
						abc**23@naver.com <a href="">변경</a><br><br>
						회원가입일 <br>
						2022년1월11일  
					<!-- /.content -->
				</div>
			</div>

			<!-- /.content-wrapper -->
		
		<!-- Main Footer -->
			<%@ include file="userTool/userFooter.jsp" %>
		<!-- /Main Footer -->
</body>
</html>
