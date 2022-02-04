<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ include file="layout/top.jsp"%>

<body class="hold-transition sidebar-mini">

	<div class="wrapper">

		<%@ include file="layout/nav.jsp"%>
		<%@ include file="layout/sidebar.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12">
							<h5></h5>
							<h4 class="mg_b0">
								<strong><i class="far fa-file-alt"></i> 취소목록</strong>
							</h4>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">

					<!-- SEARCH -->
					<div class="row">
						<div class="col-lg-12">
							<form class="form-horizontal">
								<div class="form-group row">
									<div class="col-sm-12 mg_b5">
										<button type="button" class="btn btn-warning btn-sm">
											<i class="fa fa-search fa-fw"></i> 검색
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-redo-alt"></i> 새로고침
										</button>
										<div class="pull-right">
											<select class="form-control">
												<option>NONE</option>
												<option>30</option>
												<option>60</option>
												<option>90</option>
											</select>
										</div>
									</div>
								</div>
							</form>

							<div class="card card-info" id="multiCollapseExample2">
								<div class="card-header search">
									<strong><i class="fa fa-search fa-fw"></i> search</strong>
									<div class="card-tools pull-right" style="margin-top: -4px;">
										<button class="btn btn-link btn-block text-left" type="button"
											data-toggle="collapse" data-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>

								<form class="form-horizontal" id="collapseOne" class="collapse"
									aria-labelledby="multiCollapseExample2"
									data-parent="#multiCollapseExample2">
									<div class="card-body">
										<div class="form-group row">
											<label for=" " class="col-sm-1 control-label">조회기간<span class="required">*</span></label>
											<div class="col-sm-2_5">
												<div class="input-group date" id="datetimepicker_to"
													data-target-input="nearest">
													<input type="text" readonly class="form-control datetimepicker-input disabled readonly" value="" data-target="#datetimepicker_to" onkeydown="return false"  />
													<div class="input-group-append"
														data-target="#datetimepicker_to"
														data-toggle="datetimepicker">
														<div class="input-group-text">
															<i class="fa fa-calendar"></i>
														</div>
													</div>
												</div>
											</div>~
											<div class="col-sm-2_5">
												<div class="input-group date" id="datetimepicker_from"
													data-target-input="nearest">
													<input type="text" readonly class="form-control datetimepicker-input disabled readonly" value="" data-target="#datetimepicker_from" onkeydown="return false"/>
													<div class="input-group-append"
														data-target="#datetimepicker_from"
														data-toggle="datetimepicker">
														<div class="input-group-text">
															<i class="fa fa-calendar"></i>
														</div>
													</div>
												</div>
											</div>

									

										<label for=" " class="col-sm-1 control-label">상태<span class="required">*</span></label>
										<div class="col-sm-2">
											<select class="form-control">
												<option>환불완료</option>
												<option>취소 후 환불대기</option>
												<option>오류</option>
											</select>
										</div>
										<label for=" " class="col-sm-1 control-label">규격</label>
										<div class="col-sm-2">
											<select class="form-control">
												<option>Standard</option>
												<option>Deluxe</option>
												<option>Superior</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for=" " class="col-sm-1 control-label">스타일</label>
										<div class="col-sm-2">
											<select class="form-control">
												<option>Sea view</option>
												<option>Mountain view</option>
												<option>City view</option>
											</select>
										</div>

										<label for=" " class="col-sm-1 control-label">객실타입</label>
										<div class="col-sm-2">
											<select class="form-control">
												<option>Single room</option>
												<option>Double room</option>
												<option>Twin room</option>
											</select>
										</div>

										<label for=" " class="col-sm-1 control-label">객실명</label>
										<div class="col-sm-2">
											<input class="form-control" type="text" placeholder="">
										</div>

									</div>
									<div class="form-group row">
										<label for=" " class="col-sm-1 control-label">체크인</label>
										<div class="col-sm-2">
											<div class="input-group input-group-sm">

												<div class="input-group date" id="datetimepicker_checkin"
													data-target-input="nearest">
													<input type="text" readonly class="form-control datetimepicker-input disabled readonly" data-target="#datetimepicker_checkin" onkeydown="return false"/>
													<div class="input-group-append"
														data-target="#datetimepicker_checkin"
														data-toggle="datetimepicker">
														<div class="input-group-text">
															<i class="fa fa-calendar"></i>
														</div>
													</div>
												</div>
											</div>
										</div>
										<label for=" " class="col-sm-1 control-label">체크아웃</label>
										<div class="col-sm-2">
											<div class="input-group input-group-sm">
												<div class="input-group date" id="datetimepicker_checkout"
													data-target-input="nearest">
													<input type="text" readonly class="form-control datetimepicker-input disabled readonly" data-target="#datetimepicker_checkout" onkeydown="return false"/>
													<div class="input-group-append"
														data-target="#datetimepicker_checkout"
														data-toggle="datetimepicker">
														<div class="input-group-text">
															<i class="fa fa-calendar"></i>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
							</div>
							</form>
						</div>
					</div>
				</div>

				<!--// SEARCH -->
				<!--table-->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="table-responsive type1">
								<table class="table table-bordered table-hover">
									<thead>
										<tr>
											<th class="txt-c">No.</th>
											<th class="txt-c">조회기간</th>
											<th class="txt-c">호텔명칭</th>
											<th class="txt-c">규격</th>
											<th class="txt-c">스타일</th>
											<th class="txt-c">객실타입</th>
											<th class="txt-c">객실명</th>
											<th class="txt-c">체크인</th>
											<th class="txt-c">체크아웃</th>
										</tr>
									</thead>
									<tbody>
										<tr onclick="" style="cursor: pointer;">
											<td class="txt-r">1</td>
											<td class="txt-c"></td>
											<td class="txt-c"></td>
											<td class="txt-c"></td>
											<td class="txt-c"></td>
											<td class="txt-c"></td>
											<td class="txt-c"></td>
											<td class="txt-c"></td>
											<td class="txt-c"></td>
										</tr>
									</tbody>
								</table>
								<!--          
                    <br>
                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".filter_make"> Filter</button>
                    <button data-toggle="modal" data-target=".model_Popup">구매이력</button>
        -->

							</div>
						</div>
					</div>
				</div>
				<!--table-->



			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<%@ include file="layout/footer.jsp"%>

	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<!-- jQuery -->
	<script src="../../../plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="../../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Select2 -->
	<script src="../../../plugins/select2/js/select2.full.min.js"></script>
	<!-- Bootstrap4 Duallistbox -->
	<script
		src="../../../plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
	<!-- InputMask -->
	<script src="../../../plugins/moment/moment.min.js"></script>
	<script src="../../../plugins/inputmask/jquery.inputmask.min.js"></script>
	<!-- date-range-picker -->
	<script src="../../../plugins/daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap color picker -->
	<script
		src="../../../plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="../../../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Bootstrap Switch -->
	<script
		src="../../../plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
	<!-- BS-Stepper -->
	<script src="../../../plugins/bs-stepper/js/bs-stepper.min.js"></script>
	<!-- dropzonejs -->
	<script src="../../../plugins/dropzone/min/dropzone.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../../../dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../../../dist/js/demo.js"></script>
	<!-- Page specific script -->
	<script
		src="${pageContext.request.contextPath }/app/admin/manager/layout/sidebarController.js"></script>
	<%-- <script
		src="${pageContext.request.contextPath }/app/admin/manager/js/bookingList.js"></script> --%>
	<script type="text/javascript">
		$(function() {
			//사이드바 active설정
			  active_sidebar(2,2);  
			//datetimepicker
			$('#datetimepicker_to,#datetimepicker_from,#datetimepicker_checkin,#datetimepicker_checkout').datetimepicker({
				weekStart: 1,
				format: 'YYYY/MM/DD',
				autoclose: true,
				ignoreReadonly: true,
				enableOnReadonly:true,
				"setDate": new Date()
	        });
		});
	</script>
</body>
</html>