<%@page import="com.koreait.manager.action.InformationChangeAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="layout/top.jsp" %>

<body class="hold-transition sidebar-mini">

<c:set var="Master" value="${sessionScope.Master }"/>
<c:if test="${Master.manager_Issued_Email eq null}">
    <script>
    alert("로그인을 해주세요.");
    location.href = "/masterLogin_back.mt";
    </script>
</c:if>

<c:set var="informationChangeCheck" value="${requestScope.informationChangeCheck}"/>
<c:choose>
    <c:when test="${informationChangeCheck eq true}">
        <script>
	    console.log( ${informationChangeCheck} );
	    alert("수정되었습니다.");
	    </script>
	    <% 
	    request.setAttribute("informationChangeCheck", false);
	    System.out.println(request.getAttribute("informationChangeCheck"));
	    %>
    </c:when>
    <c:otherwise>
     	<script>
	    console.log(${informationChangeCheck});
    	</script>
    </c:otherwise>
</c:choose>

<%-- <c:if test="${informationChangeCheck eq true}">
    <script>
    console.log( ${informationChangeCheck} );
    alert("수정되었습니다.");
    </script>
    <% 
    request.setAttribute("informationChangeCheck", false);
    System.out.println(request.getAttribute("informationChangeCheck"));
    %>
    <script>
    console.log(${informationChangeCheck});
    </script>
</c:if> --%>

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
                                            <label for=" " class="col-sm-3 col-md-1 control-label">아이디</label>
                                            <span class="col-sm-9 control-label">${manager.manager_Issued_Email }</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-3 col-md-1 control-label">가입일</label>
                                            <span class="col-sm-9 control-label">${manager.manager_joindate }</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-3 col-md-1 control-label">회사명</label>
                                            <span class="col-sm-9 control-label">${manager.manager_Company }</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-3 col-md-1 control-label">부서</label>
                                            <span class="col-sm-9 control-label">${manager.manager_Department }</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-3 col-md-1 control-label">연락처</label>
                                            <span class="col-sm-9 control-label">${manager.manager_PhoneNumber }</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-3 col-md-1 control-label">이메일</label>
                                            <span class="col-sm-9 control-label">${manager.manager_Using_Email}</span>
                                        </div>
                                        <div class="form-group row">
                                            <label for=" " class="col-sm-3 control-label">등록한 객실 숙소 수량(객실 수량)</label>
                                            <span class="col-sm-6 control-label">?</span>
                                            <div class="col-sm-3 mg_b5 txt-r">
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
        <%@ include file='/app/admin/manager/informationChange_POP.jsp' %>
        <!-- /.Modal -->
       
        <%@ include file="layout/footer.jsp" %>
    </div>
    <!-- /.wrapper -->

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
<script src="${pageContext.request.contextPath }/app/admin/manager/layout/sidebarController.js"></script>

<script>
$(function () {
	//사이드바 active설정
	active_sidebar(4,1); 	
	console.log("accountMaster.jsp");
});

<%-- function informationChangeCheck() {
	var informationChangeCheck = <%= request.getParameter("informationChangeCheck") %>;
	   
	console.log(informationChangeCheck);
	
	if(informationChangeCheck == true){
	    alert("수정되었습니다.");
	}
} --%>

  
</script>
</body>
</html>
