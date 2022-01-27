<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="layout/top.jsp" %>

<body class="hold-transition sidebar-mini">
<%-- <c:set var="manager" value="${requestScope.manager }"/> --%>
<c:set var="manager" value="${sessionScope.manager }"/>


<c:if test="${manager.manager_Issued_Email eq null}">

    <script>
    alert("로그인을 해주세요");
    location.href = "/loginManager_back.do";
    </script>

<%//${pageContext.request.contextPath} %>
</c:if>

    <div class="wrapper">
	
        <%@ include file="layout/nav.jsp" %>
		<%@ include file="layout/sidebar.jsp" %>
    
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <h5></h5>
                            <h4 class="mg_b0"><strong><i class="far fa-file-alt"></i> 마이페이지</strong></h4>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="content">
                <div class="container-fluid">

                    <!-- my page -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-info" id="multiCollapseExample2">
                                <form class="form-horizontal" id="collapseOne" class="collapse" aria-labelledby="multiCollapseExample2" data-parent="#multiCollapseExample2">
                                    <div class="card-body">
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-1 control-label">아이디</label>
                                            <span class="col-sm-9 control-label">${manager.manager_Issued_Email }</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-1 control-label">가입일</label>
                                            <span class="col-sm-9 control-label">${manager.manager_joindate }</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-1 control-label">회사명</label>
                                            <span class="col-sm-9 control-label">${manager.manager_Company }</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-1 control-label">부서</label>
                                            <span class="col-sm-9 control-label">${manager.manager_Department }</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-1 control-label">연락처</label>
                                            <span class="col-sm-9 control-label">${manager.manager_PhoneNumber }</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-1 control-label">이메일</label>
                                            <span class="col-sm-9 control-label">${manager_Issued_Email}</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-3 control-label">등록한 객실 숙소 수량(객실 수량)</label>
                                            <span class="col-sm-8 control-label">?</span>
                                            <div class="col-sm-1 mg_b5">
                                                <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#InformationChange"><i class="fas fa-edit"></i> 편집</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!--// my page -->



                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->


        <!-- Modal -->
        <div class="modal fade" id="InformationChange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">관리자 정보 수정</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>로그인계정</label>
                                    <input class="form-control" type="text" Disabled placeholder="${manager.manager_Issued_Email }">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>아이디</label>
                                    <input class="form-control" type="text" Disabled placeholder="${manager.manager_Issued_Email }">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>가입일자</label>
                                    <input class="form-control" type="text" Disabled placeholder="${manager.manager_joindate }">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>마지막접속일자</label>
                                    <input class="form-control" type="text" Disabled placeholder="${manager.manager_LastAccessdate }">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>비밀번호 변경</label>
                                    <input class="form-control" type="text" placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>비밀번호 확인</label>
                                    <input class="form-control" type="text" placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>이름</label>
                                    <input class="form-control" type="text" placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>성별</label>
                                    <div class="form-group row">
                                        <div class="col-md-6 custom-control custom-radio">
                                           &nbsp;&nbsp;
                                            <input class="custom-control-input" type="radio" id="customRadio1" name="customRadio">
                                            <label for="customRadio1" class="custom-control-label">남</label>
                                        </div>
                                        <div class="col-md-6 custom-control custom-radio">
                                            <input class="custom-control-input" type="radio" id="customRadio2" name="customRadio" checked>
                                            <label for="customRadio2" class="custom-control-label">여</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>회사명</label>
                                    <input class="form-control" type="text" placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>부서</label>
                                    <input class="form-control" type="text" placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>연락처</label>
                                    <input class="form-control" type="text" placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>이메일</label>
                                    <input class="form-control" type="text" placeholder="">
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>


        <%@ include file="layout/footer.jsp" %>
    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->
<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="../../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Select2 -->
<script src="../../../plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="../../../plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="../../../plugins/moment/moment.min.js"></script>
<script src="../../../plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- date-range-picker -->
<script src="../../../plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="../../../plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../../../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="../../../plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="../../../plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="../../../plugins/dropzone/min/dropzone.min.js"></script>
<!-- AdminLTE App -->
<script src="../../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../../dist/js/demo.js"></script>
<!-- Page specific script -->
<script src="layout/sidebarController.js"></script>

<script>
$(function () {
	//사이드바 active설정
	active_sidebar(4,1); 	
	console.log("어카운트");
});
  
</script>
</body>
</html>
