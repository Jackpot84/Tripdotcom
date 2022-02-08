<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>trip</title>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/fontawesome-free/css/all.min.css?ver=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/fontawesome-free-5.15.4-web/css/all.min.css?ver=1">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/add.css?ver=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/styleAdd.css?ver=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/bg.css?ver=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/adminlte.css?ver=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/addstyle.css?ver=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/seo.css?ver=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css">
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/fontawesome-free/css/all.min.css">
<!-- daterange picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/daterangepicker/daterangepicker.css">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Bootstrap Color Picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- Select2 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/select2/css/select2.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
<!-- Bootstrap4 Duallistbox -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
<!-- BS Stepper -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/bs-stepper/css/bs-stepper.min.css">
<!-- dropzonejs -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/dropzone/min/dropzone.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/adminlte.min.css">
</head>

<body>
	<!-- ./wrapper -->
	<div class="">
		<!-- Main content -->

		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a class="triplogo" href="index.jsp" style="user-select: auto;">Trip.com</a>
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">Trip</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.jsp">메인</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="join.jsp">회원가입</a></li>
						</ul></li>
				</ul>
		</nav>


		<div class="row">
			<div class="col-sm-9">
				<div class="container">
					<div class="jumbotron">
						<div class="container">
							<h1>버즈네스트 호스텔 홍대</h1>
							<p>혼성 도미토리룸 룸 벙커 침대 &nbsp;&nbsp;&nbsp;★성인 1명 ★무료 Wi-Fi ★ 이층침대
								1개 ★조식 불포함</p>
							<div class=" col-md-5">
								<input type="text" class="form-control float-right"
									id="reservation" style="user-select: auto;" name="bbsTitle">
							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="jumbotron">
						<div class="container">
							<h1>투숙객 정보</h1>
							<p>투숙객 이름은 체크인 시 제시할 유효한 신분증 이름과 정확히 일치해야 합니다.</p>
							<div class="row">
								<div class="col-sm-6">
									<span class="m-inputBox_label">성</span>
									<p>
										<span class="inputWrapper"> <input placeholder="예 : OH"
											value>
										</span>
									</p>
								</div>
								<div class="col-sm-6">
									<span class="m-inputBox_label">이름</span>
									<p>
										<span class="inputWrapper"> <input
											placeholder="예 : CHOCHO" value>
										</span>
									</p>
								</div>
							</div>
							<p>투숙객 최대 1명까지 추가할 수 있는 예약입니다.</p>
							<div class="col-sm-6">
								<span class="m-inputBox_label">이메일 주소</span>
								<p>
									<span class="inputWrapper"> <input
										placeholder="예 : 이메일주소" value>
									</span>
								</p>
							</div>
							<div class="col-sm-6">
								<span class="m-inputBox_label">휴대폰 번호</span>
								<p>
									<span class="inputWrapper"> <input placeholder="휴대폰 번호"
										value>
										<div class="selected-box">
											<span class="num"></span>
										</div>
									</span>
								</p>
							</div>
						</div>
					</div>
				</div>

				<div style="text-align: center;">
					<button type="button" onclick="location.href='finalpay.jsp'"
						style="background-color:#FF8000; color:white; width:700px; margin: 0 auto; text-align: center; font-size: 4em; padding: 2px;">최종확정>></button>
				</div>


			</div>
			<div class="col-sm-3">
				<div class="jumbotron">
					<div class="row">
						<div class="col-sm-6">지금 결제</div>
						<div class="col-sm-6" align="right" style="color:blue;">8,579원</div>
					</div>
					<div class="row">
						<div class="col-sm-6" align="left">객실 1개 x 1박</div>
						<div class="col-sm-6" align="right">10,000원</div>
					</div>
					<div class="row">
						<div class="col-sm-6" align="left">특별할인금액</div>
						<div class="col-sm-6" align="right" style="color:#FF8000;">-1,421원</div>
					</div>
				</div>
			</div>


		</div>


		<!-- /.content-wrapper -->
		<footer class="view_footer">
			<div class="float-right d-none d-sm-block">
				<b>Version</b> 3.1.0
			</div>
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
		</footer>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath }/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath }/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Select2 -->
	<script
		src="${pageContext.request.contextPath }/plugins/select2/js/select2.full.min.js"></script>
	<!-- Bootstrap4 Duallistbox -->
	<script
		src="${pageContext.request.contextPath }/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
	<!-- InputMask -->
	<script
		src="${pageContext.request.contextPath }/plugins/moment/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/plugins/inputmask/jquery.inputmask.min.js"></script>
	<!-- date-range-picker -->
	<script
		src="${pageContext.request.contextPath }/plugins/daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap color picker -->
	<script
		src="${pageContext.request.contextPath }/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath }/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Bootstrap Switch -->
	<script
		src="${pageContext.request.contextPath }/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
	<!-- BS-Stepper -->
	<script
		src="${pageContext.request.contextPath }/plugins/bs-stepper/js/bs-stepper.min.js"></script>
	<!-- dropzonejs -->
	<script
		src="${pageContext.request.contextPath }/plugins/dropzone/min/dropzone.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath }/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="${pageContext.request.contextPath }/dist/js/demo.js"></script>
	<!-- Page specific script -->
	<script>
		$(function() {
			//Initialize Select2 Elements
			$('.select2').select2()

			//Initialize Select2 Elements
			$('.select2bs4').select2({
				theme : 'bootstrap4'
			})

			//Datemask dd/mm/yyyy
			$('#datemask').inputmask('dd/mm/yyyy', {
				'placeholder' : 'dd/mm/yyyy'
			})
			//Datemask2 mm/dd/yyyy
			$('#datemask2').inputmask('mm/dd/yyyy', {
				'placeholder' : 'mm/dd/yyyy'
			})
			//Money Euro
			$('[data-mask]').inputmask()

			//Date picker
			$('#reservationdate').datetimepicker({
				format : 'L'
			});

			//Date and time picker
			$('#reservationdatetime').datetimepicker({
				icons : {
					time : 'far fa-clock'
				}
			});

			//Date range picker
			$('#reservation').daterangepicker()
			//Date range picker with time picker
			$('#reservationtime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				locale : {
					format : 'MM/DD/YYYY hh:mm A'
				}
			})
			//Date range as a button
			$('#daterange-btn').daterangepicker(
					{
						ranges : {
							'Today' : [ moment(), moment() ],
							'Yesterday' : [ moment().subtract(1, 'days'),
									moment().subtract(1, 'days') ],
							'Last 7 Days' : [ moment().subtract(6, 'days'),
									moment() ],
							'Last 30 Days' : [ moment().subtract(29, 'days'),
									moment() ],
							'This Month' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'Last Month' : [
									moment().subtract(1, 'month').startOf(
											'month'),
									moment().subtract(1, 'month')
											.endOf('month') ]
						},
						startDate : moment().subtract(29, 'days'),
						endDate : moment()
					},
					function(start, end) {
						$('#reportrange span').html(
								start.format('MMMM D, YYYY') + ' - '
										+ end.format('MMMM D, YYYY'))
					})

			//Timepicker
			$('#timepicker').datetimepicker({
				format : 'LT'
			})

			//Bootstrap Duallistbox
			$('.duallistbox').bootstrapDualListbox()

			//Colorpicker
			$('.my-colorpicker1').colorpicker()
			//color picker with addon
			$('.my-colorpicker2').colorpicker()

			$('.my-colorpicker2').on(
					'colorpickerChange',
					function(event) {
						$('.my-colorpicker2 .fa-square').css('color',
								event.color.toString());
					})

			$("input[data-bootstrap-switch]").each(function() {
				$(this).bootstrapSwitch('state', $(this).prop('checked'));
			})

		})
		// BS-Stepper Init
		document.addEventListener('DOMContentLoaded', function() {
			window.stepper = new Stepper(document.querySelector('.bs-stepper'))
		})

		// DropzoneJS Demo Code Start
		Dropzone.autoDiscover = false

		// Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
		var previewNode = document.querySelector("#template")
		previewNode.id = ""
		var previewTemplate = previewNode.parentNode.innerHTML
		previewNode.parentNode.removeChild(previewNode)

		var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
			url : "/target-url", // Set the url
			thumbnailWidth : 80,
			thumbnailHeight : 80,
			parallelUploads : 20,
			previewTemplate : previewTemplate,
			autoQueue : false, // Make sure the files aren't queued until manually added
			previewsContainer : "#previews", // Define the container to display the previews
			clickable : ".fileinput-button" // Define the element that should be used as click trigger to select files.
		})

		myDropzone.on("addedfile", function(file) {
			// Hookup the start button
			file.previewElement.querySelector(".start").onclick = function() {
				myDropzone.enqueueFile(file)
			}
		})

		// Update the total progress bar
		myDropzone
				.on(
						"totaluploadprogress",
						function(progress) {
							document
									.querySelector("#total-progress .progress-bar").style.width = progress
									+ "%"
						})

		myDropzone.on("sending", function(file) {
			// Show the total progress bar when upload starts
			document.querySelector("#total-progress").style.opacity = "1"
			// And disable the start button
			file.previewElement.querySelector(".start").setAttribute(
					"disabled", "disabled")
		})

		// Hide the total progress bar when nothing's uploading anymore
		myDropzone.on("queuecomplete", function(progress) {
			document.querySelector("#total-progress").style.opacity = "0"
		})

		// Setup the buttons for all transfers
		// The "add files" button doesn't need to be setup because the config
		// `clickable` has already been specified.
		document.querySelector("#actions .start").onclick = function() {
			myDropzone.enqueueFiles(myDropzone
					.getFilesWithStatus(Dropzone.ADDED))
		}
		document.querySelector("#actions .cancel").onclick = function() {
			myDropzone.removeAllFiles(true)
		}
		// DropzoneJS Demo Code End
	</script>
</body>

</html>
