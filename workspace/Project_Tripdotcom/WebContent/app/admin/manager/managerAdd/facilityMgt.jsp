<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<%-- <form action="${pageContext.request.contextPath}/managerAdd/accommodationCategory.mga" name="roomInformation" method="post"> --%>
  <p>
	 <h3>시설 및 서비스</h3>
	  호텔이 보유한 시설 및 서비스에만 체크해 주세요. 
 </p>
  <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h3 class="card-title">주요시설 및 서비스</h3>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
	<table class="table table-striped">
<colgroup>
			<col width="25%">
			<col width="">
		</colgroup>
  <tbody>
    <tr>
      <th scope="row" colspan="2">Wi-Fi (공공장소)</th>
      <td colspan="2">
      	없음<input type="radio" name="Wi_Fi" checked>
      	&nbsp; 
      	있음 <input type="radio" name="Wi_Fi" >
      </td>
    </tr>
    <tr>
      <th scope="row" colspan="2">짐 보관 서비스</th>
      <td colspan="2">
      	없음<input type="radio" name="Luggage_service" checked>
      	&nbsp; 
      	있음 <input type="radio" name="Luggage_service" >
      </td>
    </tr>
    <tr>
      <th scope="row" colspan="2">공항 픽업</th>
      <td colspan="2">
      	없음<input type="radio" name="Airport_pickup" checked>
      	&nbsp; 
      	있음 <input type="radio" name="Airport_pickup" >
      </td>
    </tr>
    <tr>
      <th scope="row" colspan="2">엘리베이터</th>
      <td colspan="2">
      	없음<input type="radio" name="elevator" checked>
      	&nbsp; 
      	있음 <input type="radio" name="elevator" >
      </td>
    </tr>
    <tr>
      <th scope="row" colspan="2">전객실 금연</th>
      <td colspan="2">
      	없음<input type="radio" name="All_non_smoking" checked>
      	&nbsp; 
      	있음 <input type="radio" name="All_non_smoking" >
      </td>
    </tr>
 	<tr>
      <th scope="row" colspan="2">프론트 데스크</th>
      <td colspan="2">
      	없음<input type="radio" name="frontdesk" checked>
      	&nbsp; 
      	있음 <input type="radio" name="frontdesk" >
      </td>
    </tr>
  </tbody>
</table>
	
	
    </div>
      <!-- /.card-body -->
  </div>
  <!-- /.card card-outline card-primary-->
<p></p>

 <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h3 class="card-title">객실 내 주요 시설 및 서비스</h3>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
<table class="table table-striped">
<colgroup>
			<col width="25%">
			<col width="">
		</colgroup>
  <tbody>
    <tr>
      <th scope="row" colspan="2">칫솔</th>
      <td colspan="2">
      	없음<input type="radio" name="toothbrush" checked>
      	&nbsp; 
      	있음 <input type="radio" name="toothbrush" >
      </td>
    </tr>
    <tr>
      <th scope="row" colspan="2">치약</th>
      <td colspan="2">
      	없음<input type="radio" name="toothpaste" checked>
      	&nbsp; 
      	있음 <input type="radio" name="toothpaste" >
      </td>
    </tr>
    <tr>
      <th scope="row" colspan="2">바디워시</th>
      <td colspan="2">
      	없음<input type="radio" name="Bodywash" checked>
      	&nbsp; 
      	있음 <input type="radio" name="Bodywash" >
      </td>
    </tr>
    <tr>
      <th scope="row" colspan="2">샴푸</th>
      <td colspan="2">
      	없음<input type="radio" name="shampoo" checked>
      	&nbsp; 
      	있음 <input type="radio" name="shampoo" >
      </td>
    </tr>
    <tr>
      <th scope="row" colspan="2">에어컨</th>
      <td colspan="2">
      	없음<input type="radio" name="airconditioner" checked>
      	&nbsp; 
      	있음 <input type="radio" name="airconditioner" >
      </td>
    </tr>
 	<tr>
      <th scope="row" colspan="2">TV</th>
      <td colspan="2">
      	없음<input type="radio" name="TV" checked>
      	&nbsp; 
      	있음 <input type="radio" name="TV" >
      </td>
    </tr>
 	<tr>
      <th scope="row" colspan="2">개별 샤워룸</th>
      <td colspan="2">
      	없음<input type="radio" name="Private_showerroom" checked>
      	&nbsp; 
      	있음 <input type="radio" name="Private_showerroom" >
      </td>
    </tr>
 	<tr>
      <th scope="row" colspan="2">헤어드라이어</th>
      <td colspan="2">
      	없음<input type="radio" name="hairdryer" checked>
      	&nbsp; 
      	있음 <input type="radio" name="hairdryer" >
      </td>
    </tr>
 	<tr>
      <th scope="row" colspan="2">온수 (24시간)</th>
      <td colspan="2">
      	없음<input type="radio" name="Hotwater_24h" checked>
      	&nbsp; 
      	있음 <input type="radio" name="Hotwater_24h" >
      </td>
    </tr>
 	<tr>
      <th scope="row" colspan="2">슬리퍼</th>
      <td colspan="2">
      	없음<input type="radio" name="slipper" checked>
      	&nbsp; 
      	있음 <input type="radio" name="slipper" >
      </td>
    </tr>
 	<tr>
      <th scope="row" colspan="2">냉장고</th>
      <td colspan="2">
      	없음<input type="radio" name="Refrigerator" checked>
      	&nbsp; 
      	있음 <input type="radio" name="Refrigerator" >
      </td>
    </tr>
  </tbody>
</table>
   </div>
      <!-- /.card-body -->
  </div>
  <!-- /.card card-outline card-primary-->
        <!-- /.card-body -->
<!--  </form> -->

<link rel="stylesheet" href="${pageContext.request.contextPath }/dist/css/managerHotelAdd.css?ver=1">