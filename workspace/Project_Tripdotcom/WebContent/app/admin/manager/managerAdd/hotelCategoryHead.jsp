<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<%@ include file="../layout/top.jsp" %>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <%@ include file="../layout/nav.jsp" %>
  <%@ include file="../layout/sidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <nav>
              <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-link active" id="nav-accomoCate-tab" data-toggle="tab" href="#nav-accomoCate" role="tab" aria-controls="nav-accomoCate" aria-selected="false">숙박 시설 분류 </a>
                <a class="nav-link" id="nav-hotelInfor-tab" data-toggle="tab" href="#nav-hotelInfor" role="tab" aria-controls="nav-hotelInfor" aria-selected="true">호텔 정보</a>
                <a class="nav-link" id="nav-roomInfor-tab" data-toggle="tab" href="#nav-roomInfor" role="tab" aria-controls="nav-roomInfor" aria-selected="false">객실 정보</a>
                <a class="nav-link" id="nav-hotelRule-tab" data-toggle="tab" href="#nav-hotelRule" role="tab" aria-controls="nav-hotelRule" aria-selected="false">호텔 정책</a>
                <a class="nav-link" id="nav-facilityMgt-tab" data-toggle="tab" href="#nav-facilityMgt" role="tab" aria-controls="nav-facilityMgt" aria-selected="false">시설 설비</a>
                <a class="nav-link" id="nav-hotelPic-tab" data-toggle="tab" href="#nav-hotelPic" role="tab" aria-controls="nav-hotelPic" aria-selected="false">호텔 사진</a>
                <a class="nav-link" id="nav-busiCerti-tab" data-toggle="tab" href="#nav-busiCerti" role="tab" aria-controls="nav-busiCerti" aria-selected="false">사업자 증명</a>
                <a class="nav-link" id="nav-calcualte-tab" data-toggle="tab" href="#nav-calcualte" role="tab" aria-controls="nav-calcualte" aria-selected="false">정산방식</a>
                <a class="nav-link" id="nav-contractInfo-tab" data-toggle="tab" href="#nav-contractInfo" role="tab" aria-controls="nav-contractInfo" aria-selected="false">계약정보</a>
              </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
              <div class="tab-pane fade show active" id="nav-accomoCate" role="tabpanel" aria-labelledby="nav-accomoCate-tab">
				<div class="tab_wrapper">		
					<%@ include file="accommodationCategory.jsp" %>
				</div>
			 </div>
              <div class="tab-pane fade" id="nav-hotelInfor" role="tabpanel" aria-labelledby="nav-hotelInfor-tab">
				<div class="tab_wrapper">		
					<%@ include file="hotelInformation.jsp" %>
				</div>
             </div>
              <div class="tab-pane fade" id="nav-roomInfor" role="tabpanel" aria-labelledby="nav-roomInfor-tab">객실정보로 넘어가는 html</div>
              <div class="tab-pane fade" id="nav-hotelRule" role="tabpanel" aria-labelledby="nav-hotelRule-tab">호텔정책으로 넘어가는 html</div>
              <div class="tab-pane fade" id="nav-facilityMgtr" role="tabpanel" aria-labelledby="nav-facilityMgt-tab">시설설비로 넘어가는 html</div>
              <div class="tab-pane fade" id="nav-hotelPic" role="tabpanel" aria-labelledby="nav-hotelPic-tab">호텔사진으로 넘어가는 html</div>
              <div class="tab-pane fade" id="nav-busiCerti" role="tabpanel" aria-labelledby="nav-busiCerti-tab">사업자증명으로 넘어가는 html</div>
              <div class="tab-pane fade" id="nav-calcualte" role="tabpanel" aria-labelledby="nav-calcualte-tab">정산방식으로 넘어가는 html</div>
              <div class="tab-pane fade" id="nav-contractInfo" role="tabpanel" aria-labelledby="nav-contractInfo-tab">계약정보로 넘어가는 html</div>
            </div>

          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


<!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="d-none d-sm-inline">
      <div class="row">
      	<div class="col-sm-2">
     		<button type="button" class="btn btn-block btn-primary btn-lg" onclick="toCheck()">저장 </button>
   		</div>
    	<div class="col-sm-2">
     		 <button type="button" class="btn btn-block btn-default btn-lg disabled">등록</button>
    	</div>
  	  </div>
  <!-- <div class="row">
    <div class="col-sm-2">
      <button type="button" class="btn btn-block btn-default btn-lg disabled">저장 </button>
    </div>
    <div class="col-sm-2">
      <button type="button" class="btn btn-block btn-primary btn-lg">등록</button>
    </div>
  </div> -->
    <!-- Default to the left -->

	</div>
  </footer>
</div>
<!-- ./wrapper -->



<script src="${pageContext.request.contextPath }/app/admin/manager/js/accommodationCategory.js"></script>
<script src="${pageContext.request.contextPath }/app/admin/manager/layout/sidebarController.js"></script>
<script>
active_sidebar(1,1);  
</script>
</body>
</html>

