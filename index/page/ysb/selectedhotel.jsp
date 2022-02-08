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


		<div class="mainSearchBox">
			<div class="searchbox">
				<form method="post" action="hotelSearchingList.jsp">
					<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
					<div class="row">
						<div class=" col-md-3">
							<div class="form-group">
								<label>목적지/호텔 이름</label> <select class="select2"
									multiple="multiple" data-placeholder="Select a State"
									style="width: 100%;" name="bbsTitle">
									<option>서울</option>
									<option>부산</option>
									<option>강릉</option>
									<option>제주도</option>
								</select>
							</div>
						</div>
						<div class=" col-md-4">
							<label>날짜선택</label> <input type="text"
								class="form-control float-right" id="reservation"
								style="user-select: auto;" name="bbsTitle">
						</div>
						<div class=" col-md-2">
							<div class="form-group">
								<label>객실수</label> <select class="select2" style="width: 100%;"
									name="bbsTitle">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
								</select>
							</div>
						</div>
						<div class=" col-md-2">
							<div class="form-group">
								<label>인원수(성인)</label> <select class="select2"
									style="width: 100%;" name="bbsTitle">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
								</select>
							</div>
						</div>
						<div class=" col-md-1">
							<input type="submit" style="width: 100%; height: 100%;"
								class="btn btn-primary pull-right" value="찾기">
						</div>
					</div>
				</form>
			</div>
		</div>



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
	<a
		style="display: scroll; position: fixed; bottom: 150px; right: 50px;"
		rel="nofollow" href="#" title="Back to Top" style="font-size:2.0em"><img
		src="${pageContext.request.contextPath }/dist/img/seoimg/up.jpg"
		width="50px" border="0" /></a>

	<div class="" style="width: 66%; margin: 0 auto;">
		<!-- Main content -->
		<div class="">
			<div class="card">

				<div class="card-body">
					<div class="row">
						<div class="col-sm-8">
							<h5 class="card-title">나인트리 프리미어 호텔 명동 II (Nine Tree Premier
								Hotel Myeongdong 2)</h5>
							<p class="card-text">대한민국 서울 중구 마른내로 28 04555</p>
							<p class="card-text">
								<span style="color: #007bff;">로그인 또는 회원가입 후 예약하세요. 체크아웃 후
									최대 192 트립코인 (약 2,306원)이 적립됩니다.</span>
							</p>
						<div class=container>
						<div id="carouselExampleIndicators" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img
										src="${pageContext.request.contextPath }/dist/img/seoimg/ninehotel1.1.jpg"
										class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img
										src="${pageContext.request.contextPath }/dist/img/seoimg/ninehotel2.2.jpg"
										class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img
										src="${pageContext.request.contextPath }/dist/img/seoimg/ninehotel3.2.jpg"
										class="d-block w-100" alt="...">
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-target="#carouselExampleIndicators" data-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-target="#carouselExampleIndicators" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</button>
						</div>
					</div>
						</div>
						<div class="col-sm-4">
							<div class="form-row"
								style="position: absolute; top: 0; right: 14px;">
								<button class="btn btn-primary" id="advanced-set-submit"
									style="padding: 10px 60px; font-size: 23px; font-weight: bold;">
									객실선택</button>
							</div>
						</div>
					</div>




				</div>
			</div>

			

			<div class="card text-center">
				<div class="card-header">
					<ul class="nav nav-tabs card-header-tabs">
						<li class="nav-item">
						<li><a href="#div1" id="scroll_move">객실</a></li>&nbsp&nbsp;&nbsp;
						<li class="nav-item">
						<li><a href="#div2" id="scroll_move">호텔리뷰</a></li>&nbsp&nbsp;&nbsp;

					</ul>
				</div>

				<div class="scroll-moveBox flex flex-br-c"></div>

				<div id="div1"></div>

				<div id="div2"></div>

				<div id="div3"></div>


				<div class="card-body">
					<div class="row">
						<h5 class="card-title">스탠다드 트윈룸</h5>
					</div>
					<BR>
					<div class="row">
						<div class="col-sm-4">
							<img
								src="${pageContext.request.contextPath }/dist/img/seoimg/standardroom.png"
								border="0" height="300" width="300" />
						</div>
						<div class="col-sm-4">
							<p class="card-text">
								26.5m²| 에어컨 | 개별 샤워룸 | 욕조 | 냉장고<br></br> 대기없이 바로확정<br></br> 조식
								뷔페 - 별도요금 30,000원
							<p></p>
							싱글침대 2개 <br></br> 특별 할인가 (환불 불가)
							<p></p>
							56,861원<br></br> 1박당 객실요금 (세금 포함)
							</p>
						</div>
						<div class="col-sm-4">
							<a href="#" style="position: absolute; top: 0; right: 14px;"
								class="btn btn-primary">예약</a>
						</div>
					</div>
					
					
					<div class="row">
						<h5 class="card-title">헐리우드 더블룸</h5>
					</div>
					<BR>
					<div class="row">
						<div class="col-sm-4">
							<img
								src="${pageContext.request.contextPath }/dist/img/seoimg/Hollywood double.png"
								border="0" height="300" width="300" />
						</div>
						<div class="col-sm-4">
							<p class="card-text">
								26.5m²| 에어컨 | 개별 샤워룸 | 욕조 | 냉장고<br></br> 조식 뷔페 - 별도요금 30,000원<br></br> 
								
							<p></p>
							더블침대 1개 <br></br>
							<p></p>
							66,861원<br></br> 1박당 객실요금 (세금 포함)
							</p>대기 예약: 3시간 이내 안내
						</div>
						<div class="col-sm-4">
							<a href="#" style="position: absolute; top: 0; right: 14px;"
								class="btn btn-primary">예약</a>
						</div>
					</div>


					<div class="row">
						<h5 class="card-title">스탠다드 트리플룸</h5>
					</div>
					<BR>
					<div class="row">
						<div class="col-sm-4">
							<img
								src="${pageContext.request.contextPath }/dist/img/seoimg/standard triple .png"
								border="0" height="300" width="300" />
						</div>
						<div class="col-sm-4">
							<p class="card-text">
								26.5-34m²25.9-30m²| 에어컨 | 개별 샤워룸 | 욕조 | 냉장고<br></br> 조식 뷔페 - 별도요금(환불 불가) <br></br> 
								
							<p></p>
							더블침대 1개 <br></br>
							<p></p>
							86,831원<br></br> 1박당 객실요금 (세금 포함)
							</p>
						</div>
						<div class="col-sm-4">
							<a href="#" style="position: absolute; top: 0; right: 14px;"
								class="btn btn-primary">예약</a>
						</div>
					</div>


					<div class="row">
						<h5 class="card-title">스카이 더블룸</h5>
					</div>
					<BR>
					<div class="row">
						<div class="col-sm-4">
							<img
								src="${pageContext.request.contextPath }/dist/img/seoimg/skydoubleroom.png"
								border="0" height="300" width="300" />
						</div>
						<div class="col-sm-4">
							<p class="card-text">
								26.5m²| 에어컨 | 개별 샤워룸 | 욕조 | 냉장고<br></br> 조식 뷔페 - 별도요금 30,000원<br></br> 
								
							<p></p>
							더블침대 1개 <br></br>
							<p></p>
							76,232원<br></br> 1박당 객실요금 (세금 포함)
							</p>
						</div>
						<div class="col-sm-4">
							<a href="#" style="position: absolute; top: 0; right: 14px;"
								class="btn btn-primary">예약</a>
						</div>
					</div>


				
				<div class="card">
					<div class="card-header">호텔리뷰</div>
					<div class="row" style="padding-left: 30%;">

						<div class="dropdown">
							결과 내 검색 <a class="btn btn-secondary dropdown-toggle" href="#"
								role="button" id="dropdownMenuLink" data-toggle="dropdown"
								aria-expanded="false"> 전체객실 </a>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<a class="dropdown-item" href="#">스탠다드 더블룸(주차불가)</a> <a
									class="dropdown-item" href="#">패밀리 트윈룸(주차불가)</a> <a
									class="dropdown-item" href="#">스카이 더블룸(주차불가)</a> <a
									class="dropdown-item" href="#">파노라믹 트윈룸(주차불가)</a> <a
									class="dropdown-item" href="#">스탠다드 트리플룸(주차불가)</a> <a
									class="dropdown-item" href="#">파노라믹 더블룸(주차불가)</a> <a
									class="dropdown-item" href="#">패밀리 트윈룸(주차불가)</a> <a
									class="dropdown-item" href="#">파노라믹 더블룸 남산뷰(주차불가)</a> <a
									class="dropdown-item" href="#">스카이 더블룸 남산뷰(주차불가)</a> <a
									class="dropdown-item" href="#">헐리우드 더블룸(주차불가)</a> <a
									class="dropdown-item" href="#">파노라믹 트리플룸(주차불가)</a> <a
									class="dropdown-item" href="#">프리미어 더블룸(주차불가)</a>
							</div>

						</div>
						&nbsp;&nbsp;
						<div class="dropdown">

							<a class="btn btn-secondary dropdown-toggle" href="#"
								role="button" id="jkjk" data-toggle="dropdown"
								aria-expanded="false"> 전체 여행자 </a>
							<div class="dropdown-menu" aria-labelledby="jkjk">
								<a class="dropdown-item" href="#">출장</a> <a
									class="dropdown-item" href="#">가족</a> <a class="dropdown-item"
									href="#">개인</a> <a class="dropdown-item" href="#">지인예약대행</a> <a
									class="dropdown-item" href="#">커플</a> <a class="dropdown-item"
									href="#">친구</a> <a class="dropdown-item" href="#">기타</a> <a></a>
							</div>
						</div>
						&nbsp;
						<div class="dropdown">
							정렬 <a class="btn btn-secondary dropdown-toggle" href="#"
								role="button" id="hjhj" data-toggle="dropdown"
								aria-expanded="false"> 추천순 </a>
							<div class="dropdown-menu" aria-labelledby="hjhj">
								<a class="dropdown-item" href="#">추천순</a> <a
									class="dropdown-item" href="#">최신 리뷰순</a> <a></a>

							</div>
						</div>

					</div>
					<div class="card-body">
							<p></p>
							<div class="blockquote-footer">
								<div>
									리뷰어
									<p></p>
									5/5 강력추천 <br></br> 호텔 내부에 24시간 편의점있어서 너무 편하고 좋아요 그리고 근처에 맛집+카페
									많아서 이것저것 먹기 좋습니다 방 내부 시설도 깔끔하고 좋았어요 그리고 층마다 정수기+전자레인지가 있어서 넘
									좋았습니다 아쉬운건 방이 너무 건조하다는 것과 와이파이 속도가......ㅠ ㅠ 너무 느렸어요ㅠ ㅠ 그렇지만
									직원분들 다 친절하시고 좋았네요 잘 쉬다가 갑니다~

									<div class="row"
										style="background: aliceblue; border: 1px solid #ededed; margin-top: 13px;">
										<div class="col-sm-2">대한민국</div>
										<div class="col-sm-3">스탠다드 트윈룸(주차불가)</div>
										<div class="col-sm-3">투숙일:2022년 1월</div>
										<div class="col-sm-2">개인</div>
										<div class="col-sm-2">호텔리뷰 2개</div>
										
									</div>

									<p></p>
									<p></p>
									<p></p>
									<p></p>
									<p></p>
									<p></p>
									작성일:2022년 1월 31일<br></br>
								</div>
							
								<hr>
								
								<div>
									리뷰어
									<p></p>
									5/5 강력추천 <br></br> 늘 호캉스를 생각할 때 우선순위로 찾는 곳이 나인트리 명동2 인 것 같아요.
									합리적인 가격대랑 위치적인 부분도 굉장히 만족스럽고 넓고 쾌적합니다. 도도포인트 지원도 되서 1박당 1포인트씩
									쌓여서 나중에 레이트 체크아웃도 가능해여.

									<div class="row"
										style="background: aliceblue; border: 1px solid #ededed; margin-top: 13px;">
										<div class="col-sm-2">대한민국</div>
										<div class="col-sm-3">스탠다드 트윈룸(주차불가)</div>
										<div class="col-sm-3">투숙일:2022년 1월</div>
										<div class="col-sm-2">개인</div>
										<div class="col-sm-2">호텔리뷰 1개</div>
									
									</div>

									<p></p>
									<p></p>
									<p></p>
									<p></p>
									<p></p>
									<p></p>
									작성일:2022년 1월 30일<br></br>
								</div>
							
								<hr>
								
								<details>
											<summary>더보기</summary>
								<div>
									리뷰어
									<p></p>
									4/5 강력추천 <br></br> 두번째 방문입니다. 시설이나 위치는 가격 대비 나무랄 것이 없습니다. 단 첫번째 방문 때는
											30분 정도 먼저 도착했을 때 체크인이 가능했는데 이번엔 3시 이후 체크인이 강제성을 띄어서 조금
											당황했습니다. (얼리 체크인 1만1천원)
									<div class="row"
										style="background: aliceblue; border: 1px solid #ededed; margin-top: 13px;">
										<div class="col-sm-2">대한민국</div>
										<div class="col-sm-3">스탠다드 트윈룸(주차불가)</div>
										<div class="col-sm-3">투숙일:2021년 11월</div>
										<div class="col-sm-2">가족</div>
										<div class="col-sm-2">호텔리뷰 8개</div>
									
									</div>

									<p></p>
									<p></p>
									<p></p>
									<p></p>
									<p></p>
									<p></p>
									작성일:2021년 11월 8일<br></br>
								</div>
								<hr>
								</details>
								
								
								
					<div class="card-header">중요 안내</div>
					
					<div>		
						<div class="row"
										style="background: aliceblue; border: 1px solid #ededed; margin-top: 13px;">
										<div class="col-sm-12"></div>[2021년 11월 18일 - 2022년 12월 31일] 체크인 시 전자출입명부 및 체온 측정이 진행됩니다.<p></p>
										투숙객의 신용 보증을 위해 체크인 시 본인 명의의 신용카드 제공이 필요합니다.<p></p>
						[2021년 11월 17일 - 2022년 12월 31일] COVID-19 확산방지를 위해 별도 안내 전까지 Lounge 9에서는 음료 Take-out만 가능합니다.<p></p>(오전 7시 ~ 오후 11시 이용가능)<p></p>
							[2021년 11월 18일 - 2022년 12월 31일] 정부 지침에 의해 백신패스 예외자 외 백신 미접종자는 피트니스 이용이 제한됩니다. <p></p> 
							(예외자: 의학적 사유로 인한 미접종자, 만 18세 이하 소아 및 청소년, COVID-19 완치자, COVID-19 국산 백신 임상 참여자, 48시간 이내 PCR 검사 음성 확인자)<p></p>
							루트탑 바(18층): 금~토 오후 5시~익일 오전 1시 운영
													
									</div>
								</div>
								<hr>
				

					<div class="card-header">호텔 소개</div>
					<details>
						<summary>더보기</summary>
							<p></p>
							<img
										src="${pageContext.request.contextPath }/dist/img/seoimg/ninehotel1.1.jpg"
										class="d-block w-20 h-20" alt="...">
							<footer class="blockquote-footer">
								<cite title=""></cite>
								<p>호텔 설립연도: 2017 객실 수: 208</p>
								<br></br> 호텔 전문기업 파르나스호텔(주)이 선보이는 비즈니스 호텔 ‘나인트리 프리미어 호텔 명동 II＇는
								편안한 휴식공간과 즐거운 경험, 그리고 믿을 수 있는 서비스를 합리적인 가격으로 제공합니다. 국내외 관광과 패션,
								문화의 메카인 명동에 자리잡아 서울 시내 어느 곳으로든 이동이 용이할 뿐만 아니라, 특1급 수준의 408개의 객실과
								3개의 미팅룸을 갖추고 있습니다.
							</footer>

					</details>

					<div class="card-body"></div>
				</div>

				<div class="card">
					<div class="card-header">시설 & 서비스</div>

					<div class=container>
						<div id="carouselExampleIndicators" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img
										src="${pageContext.request.contextPath }/dist/img/seoimg/bar.jpg"
										class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img
										src="${pageContext.request.contextPath }/dist/img/seoimg/businessroom.jpg"
										class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img
										src="${pageContext.request.contextPath }/dist/img/seoimg/fitness.jpg"
										class="d-block w-100" alt="...">
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-target="#carouselExampleIndicators" data-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-target="#carouselExampleIndicators" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</button>
						</div>
					</div>






			</div>

		</div>
		
		 
</body>

</html>
