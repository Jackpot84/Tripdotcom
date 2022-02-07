<%@page import="com.koreait.manager.dto.BookingListSearchBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ include file="layout/top.jsp"%>

<body class="hold-transition sidebar-mini">

<!-- 로그인체크 -->
<c:set var="manager" value="${sessionScope.manager }"/>
<c:if test="${manager.manager_Issued_Email eq null}">
    <script>
    alert("로그인을 해주세요.");
    location.href = "/loginManager_back.mg";
    </script>
</c:if>
<!-- ./ 로그인체크 -->
	
	<c:set var="bookingList" value="${requestScope.bookingList }"/>
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
								<strong><i class="far fa-file-alt"></i> 예약목록</strong>
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
										<button type="button" class="btn btn-warning btn-sm" onclick="bookListSearchSubmit();">
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

								<form class="form-horizontal" id="collapseOne" class="collapse" method="post" action="/bookingList.mg" name="bookingList_search"
									aria-labelledby="multiCollapseExample2"
									data-parent="#multiCollapseExample2">
									<div class="card-body">
										<div class="form-group row">
											<label for=" " class="col-sm-1 control-label">조회기간<span
												class="required">*</span></label>
											<div class="col-sm-2_5"
												style="padding-right: 7px; position: relative;">
												<div class="input-group date" id="datetimepicker_to"
													data-target-input="nearest">
													<input type="text" readonly name="Booking_fromDate"
														class="form-control datetimepicker-input disabled readonly"
														value="" data-target="#datetimepicker_to"
														onkeydown="return false" />
													<div class="input-group-append"
														data-target="#datetimepicker_to"
														data-toggle="datetimepicker">
														<div class="input-group-text">
															<i class="fa fa-calendar"></i>
														</div>
													</div>
												</div>
												<div style="position: absolute; top: 3px; right: -3px;">~</div>
											</div>
											<div class="col-sm-2_5" style="padding-left: 7px;">
												<div class="input-group date" id="datetimepicker_from"
													data-target-input="nearest">
													<input type="text" readonly name="Booking_toDate"
														class="form-control datetimepicker-input disabled readonly"
														value="" data-target="#datetimepicker_from"
														onkeydown="return false" />
													<div class="input-group-append"
														data-target="#datetimepicker_from"
														data-toggle="datetimepicker">
														<div class="input-group-text">
															<i class="fa fa-calendar"></i>
														</div>
													</div>
												</div>
											</div>



											<label for=" " class="col-sm-1 control-label">시설 분류</label>
											<div class="col-sm-2">
												<select class="form-control" name="stay">
													<option>호텔</option>
													<option>게스트하우스</option>
												</select>
											</div>
											<label for=" " class="col-sm-1 control-label">규격</label>
											<div class="col-sm-2">
												<select class="form-control" name="standard">
													<option>Standard</option>
													<option>Deluxe</option>
													<option>Superior</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for=" " class="col-sm-1 control-label">스타일</label>
											<div class="col-sm-2">
												<select class="form-control" name="style_">
													<option>Sea view</option>
													<option>Mountain view</option>
													<option>City view</option>
												</select>
											</div>

											<label for=" " class="col-sm-1 control-label">객실타입</label>
											<div class="col-sm-2">
												<select class="form-control" name="roomtype">
													<option>Single room</option>
													<option>Double room</option>
													<option>Twin room</option>
												</select>
											</div>

											<label for=" " class="col-sm-1 control-label">호텔명칭</label>
											<div class="col-sm-2">
												<input class="form-control" type="text" name="hotel_name_kor" placeholder="">
											</div>
											
											<label for=" " class="col-sm-1 control-label">객실명</label>
											<div class="col-sm-2">
												<input class="form-control" type="text" name="room_name_manager_kor" placeholder="">
											</div>

										</div>
										<div class="form-group row">
											<label for=" " class="col-sm-1 control-label">예약번호</label>
											<div class="col-sm-2">
												<input class="form-control" type="text" name="reservation_id" placeholder="">
											</div>
											
											<label for=" " class="col-sm-1 control-label">체크인</label>
											<div class="col-sm-2">
												<div class="input-group input-group-sm">

													<div class="input-group date" id="datetimepicker_checkin"
														data-target-input="nearest">
														<input type="text" readonly name="checkin_date"
															class="form-control datetimepicker-input disabled readonly"
															data-target="#datetimepicker_checkin"
															onkeydown="return false" />
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
														<input type="text" readonly name="checkout_date"
															class="form-control datetimepicker-input disabled readonly"
															data-target="#datetimepicker_checkout"
															onkeydown="return false" />
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
												<th class="txt-c">시설분류</th>
												<th class="txt-c">규격</th>
												<th class="txt-c">스타일</th>
												<th class="txt-c">객실타입</th>
												<th class="txt-c">호텔명칭</th>
												<th class="txt-c">객실명</th>
												<th class="txt-c">예약번호</th>
												<th class="txt-c">체크인</th>
												<th class="txt-c">체크아웃</th>
											</tr>
											</thead>
										<tbody>
										<c:choose>
										<c:when test="${not empty bookingList}">
											<c:forEach var="bookingList" items="${bookingList}">
											<tr onclick="" style="cursor: pointer;">
												<td class="txt-c"></td>
												<td class="txt-c">${bookingList.checkin_date}~${bookingList.checkout_date}</td>
											<%-- <td class="txt-c">${bookingList.test_manager}</td> --%>
												<td class="txt-c">호텔</td>
												<td class="txt-c">${bookingList.standard}</td>
												<td class="txt-c">${bookingList.STYLE_}</td>
												<td class="txt-c">${bookingList.roomtype}</td>
												<td class="txt-c">${bookingList.hotel_name_kor}</td>
												<td class="txt-c">${bookingList.room_name_manager_kor}</td>
												<td class="txt-c">${bookingList.reservation_id}</td>
												<td class="txt-c">${bookingList.checkin_date}</td>
												<td class="txt-c">${bookingList.checkout_date}</td>
											</tr>
										</c:forEach>
											</c:when>
											<c:otherwise>
											<tr onclick="" style="cursor: pointer;">
												<td class="txt-c" colspan="11"> 데이터가 없습니다.</td>
											</tr>
											</c:otherwise>
										</c:choose>
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
    <script src="${pageContext.request.contextPath }/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="${pageContext.request.contextPath }/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath }/dist/js/adminlte.js"></script>
	<!-- InputMask -->
	<script src="${pageContext.request.contextPath }/plugins/moment/moment.min.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script	src="${pageContext.request.contextPath }/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	
	<!-- Page specific script -->
	<script
		src="${pageContext.request.contextPath }/app/admin/manager/layout/sidebarController.js"></script>
	<%-- <script
		src="${pageContext.request.contextPath }/app/admin/manager/js/bookingList.js"></script> --%>
	<script type="text/javascript">
		$(function() {
			//사이드바 active설정
			  active_sidebar(2,1);  
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
		function bookListSearchSubmit() {

			const frm = document.bookingList_search;
			let fromDate = frm.Booking_fromDate;
			let toDate = frm.Booking_toDate;
			let stay = frm.style_;
			let standard = frm.standard;
			let style = frm.style;
			let roomtype = frm.roomtype;
			let hotel_name_kor = frm.hotel_name_kor;
			let room_name_manager_kor = frm.room_name_manager_kor;
			let reservation_id = frm.reservation_id;
			let checkin_date = frm.checkin_date;
			let checkout_date = frm.checkout_date;
			
			if (fromDate.value == '' || fromDate.value == null) {
				alert("조회기간을 선택하세요."); 
				return false;
			}
			if (toDate.value == '' || toDate.value == null) {
				alert("조회기간을 선택하세요."); 
				return false;
			}
			if (fromDate.value > toDate.value) {
				alert("시작날짜가 클 수 없습니다."); 
				return false;
			} 
			
			frm.submit();
		}
	</script>
</body>
</html>