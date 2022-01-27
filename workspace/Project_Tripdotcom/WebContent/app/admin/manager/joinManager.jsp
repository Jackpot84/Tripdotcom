<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | Starter</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="../../../plugins/fontawesome-free/css/all.min.css?ver=1">
    <link rel="stylesheet" href="../../../plugins/fontawesome-free-5.15.4-web/css/all.min.css?ver=1">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../../dist/css/add.css?ver=1">
    <link rel="stylesheet" href="../../../dist/css/styleAdd.css?ver=1">
    <link rel="stylesheet" href="../../../dist/css/bg.css?ver=1">
    <link rel="stylesheet" href="../../../dist/css/adminlte.css?ver=1">
    <link rel="stylesheet" href="../../../dist/css/addstyle.css?ver=1">
</head>

<body class="joinview_manager">
    <div class="wrapper">
        <div class="back_img"></div>
        <div class="form_box">
            <div class="">
                <div class="col-sm-5">
                    <!-- Horizontal Form -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">eBooking에 가입하기</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form class="form-horizontal" action="/loginManager.do" name="" method="post">
                            <div class="card-body">
                                
                                <div class="form-group row">
                                    <label for="inputPassword3" class="col-sm-12 col-form-label">이메일주소</label>
                                    <div class="col-sm-12">
                                        <!-- <div class="input-group input-group-lg">
                                            <input type="text" class="form-control" placeholder="Email" name="Manager_Email">
                                            <span class="input-group-append">
                                                <button type="button" class="btn btn-primary btn-flat fontsize_15">이메일 인증 보내기</button>
                                            </span>
                                        </div> -->
                                        <input type="email" class="form-control form-control-lg" name="Manager_Issued_Email" id="Manager_Issued_Email">
                                    </div>
                                </div>
                                <span class="br_6"></span>
                                <div class="form-group row">
                                    <label for="inputEmail3" class="col-sm-12 col-form-label">비밀번호</label>
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control form-control-lg" name="Manager_Issue_password" id="Manager_Issue_password">
                                    </div>
                                </div>

                               <!-- <div class="form-group row">
                                    <div class="offset-sm-12 col-sm-12">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck2">
                                            <label class="form-check-label" for="exampleCheck2">Remember me</label>
                                        </div>
                                    </div>
                                </div>-->
                                <span class="br_6"></span>
                                <div class="form-group row">
                                    <div class="col-sm-12">
										<!-- <button type="button" class="btn btn-block btn-primary btn-lg">가입하기</button> -->
                                        <input type="submit" class="btn btn-block btn-primary btn-lg" value="가입하기"></button>
                                    </div>
                                </div>
                                <span class="br_6"></span>
                                <div class="form-group row">
                                    <div class="col-sm-12">
                                       <span>이미 가입 하셨나요? </span>
                                        <a class="" href="/loginManager_togo.do">
                                       	   로그인하기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
	        <div class="main_copy">
	                <div>트립 닷컴에서 </div><div>숙소 등록하기</div>
	        </div>
	        <div class="sub_copy">
	            <div>전세계 여행객들에게</div>
	            <div>멋진 숙소를 전시하세요</div>
	        </div>
        </div>
        
        <div>
        <br>
            <div style="    text-align: center;">
            	<img alt="text" src="../../../dist/img/joinManager_main_text1.PNG">
            </div>
        </div>
        <!-- Main Footer -->
        <footer class="view_footer">
            <!-- To the right -->
            <div class="float-right d-none d-sm-inline">
                We support your trip.
            </div>
            <!-- Default to the left -->
            <strong>Copyright &copy; 2021-12. <a href="#">HOME3</a>.</strong> All rights reserved.
        </footer>
    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->

    <!-- jQuery -->
    <script src="../../../plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="../../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../../../dist/js/adminlte.js"></script>
</body></html>
