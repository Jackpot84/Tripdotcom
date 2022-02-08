<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<%-- <form action="${pageContext.request.contextPath}/managerAdd/accommodationCategory.mga" name="roomInformation" method="post"> --%>
  <p><h4>호텔 정책(*반드시 입력해주세요)</h4></p>
  <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h3 class="card-title">체크인/아웃시간(*반드시 입력해주세요)</h3>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
	<table class="table table-bordered">
	<colgroup>
			<col width="25%">
			<col width="75%">
		</colgroup>
	  <thead>
	    <tr>
	      <th scope="row">*체크인 시간</th>
	      <td colspan="3">
	      	<input type="text" name="Checkin_time">
	  	  </td>
     	</tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">*체크아웃 시간</th>
	      <td colspan="3">
	      	<input type="text" name="Checkout_time">
	  	  </td>
     	</tr>
   	    <tr>
	      <th scope="row">해당 시간 강제 입실/퇴실 여부</th>
	      <td colspan="3">
	      	예 <input type="radio" name="Can_Time_change" checked>
	      	&nbsp; 
	      	아니오 <input type="radio" name="Can_Time_change" > <br>
	      </td>
	    </tr>
  	    <tr>
	      <th scope="row">투숙객 전화번호</th>
	      <td colspan="3">
	      	필요 <input type="radio" name="Guest_phone" checked>
	      	&nbsp; 
	      	필요없음 <input type="radio" name="Guest_phone" > <br>
	      </td>
	    </tr>
	    <tr>
	      <th scope="row">숙박방식</th>
	      <td colspan="3">
	      	<p>
		      	프론트 데스크에서 열쇠 수령 <input type="radio" name="Stay_type" checked>
		      	&nbsp; 
		      	전문 마중 <input type="radio" name="Stay_type" >
		      	&nbsp;
		      	출입구 비밀번호 통과하기 <input type="radio" name="Stay_type">
		      	&nbsp; 
		      	열쇠는 보관함에 있음 <input type="radio" name="Stay_type" >
			</p>
			<p>
		      	열쇠는 은폐한 곳에 보관하고 있음<input type="radio" name="Stay_type">
		      	&nbsp; 
		      	예약 후에 설명 보내드리겠습니다 <input type="radio" name="Stay_type" >
	      	</p>
	      </td>
	    </tr>
	  </tbody>
	</table><br>
	
	
    </div>
      <!-- /.card-body -->
  </div>
  <!-- /.card card-outline card-primary-->
<p></p>

 <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h3 class="card-title">조식정보(*반드시 입력해주세요)</h3>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
			<table class="table table-bordered">
	  <colgroup>
			<col width="25%">
			<col width="75%">
	  </colgroup>
	  <thead>
	    <tr>
	      <th scope="row">조식 제공</th>
	      <td colspan="3">
	      	<p>
	      	예 <input type="radio" name="Bk_give" checked>
	      	&nbsp; 
	      	아니오 <input type="radio" name="Bk_give" > <br>
	      	</p>
	      	<p>
	      		조식 형식<br>
				세트메뉴 <input type="checkbox" name="Bk_type" checked>
				단품요리 <input type="checkbox" name="Bk_type" >
				뷔페 <input type="checkbox" name="Bk_type" >	      		
	      	</p>
	      </td>
	    </tr>
	  </thead>
	</table><br>
   </div>
      <!-- /.card-body -->
  </div>
  <!-- /.card card-outline card-primary-->
        <!-- /.card-body -->
        
        
<div class="card card-outline card-primary">
     <div class="card-header"> 
      <h3 class="card-title">반려동물 규정</h3>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
	<table class="table table-bordered">
		<colgroup>
			<col width="25%">
			<col width="75%">
		</colgroup>
	    <tr>
	      <th scope="row">반려동물 동반 입실 가능 여부</th>
	      <td colspan="3">
	      	예 <input type="radio" name="With_animal" checked>
	      	&nbsp; 
	      	아니오 <input type="radio" name="With_animal" >
	  	  </td>
     	</tr>
	</table><br>
   </div>
      <!-- /.card-body -->
  </div>
  <!-- /.card card-outline card-primary-->
        <!-- /.card-body -->
        
        
<div class="card card-outline card-primary">
     <div class="card-header"> 
      <h3 class="card-title">주차장 정보</h3>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
<table class="table table-bordered">
		<colgroup>
			<col width="25%">
			<col width="75%">
		</colgroup>
	    <tr>
	      <th scope="row">주차장 여부</th>
	      <td colspan="3">
	      	예 <input type="radio" name="Have_Parking_area" checked>
	      	&nbsp; 
	      	아니오 <input type="radio" name="Have_Parking_area" >
	  	  </td>
     	</tr>
	</table><br>
   </div>
      <!-- /.card-body -->
  </div>
  <!-- /.card card-outline card-primary-->
        <!-- /.card-body -->
<!--  </form> -->

<link rel="stylesheet" href="${pageContext.request.contextPath }/dist/css/managerHotelAdd.css?ver=1">