<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<%-- <form action="${pageContext.request.contextPath}/managerAdd/accommodationCategory.mga" name="roomInformation" method="post"> --%>
  <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h3 class="card-title">계약 정보(*반드시 입력해주세요)</h3>
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
	      <th scope="row">*계약 종료 일자</th>
	      <td colspan="3">
	     	 <input type="date" name="Contract_EndDate"> 유효기간 까지
	  	  </td>
     	</tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">*호텔이 전자 계약 서명을 받기 위해 사용하는 이메일</th>
	      <td colspan="3">
   	      	<input type="text" name="Contract_hotel_email">
	  	  </td>
     	</tr>
	    <tr>
	      <th scope="row">*계약자 이름</th>
	      <td colspan="3">
   	      	<input type="text" name="Contract_name">
	  	  </td>
     	</tr>
	  </tbody>
	</table><br>
   </div>
      <!-- /.card-body -->
  </div>
  <!-- /.card card-outline card-primary-->
        <!-- /.card-body -->
<!--  </form> -->

<link rel="stylesheet" href="${pageContext.request.contextPath }/dist/css/managerHotelAdd.css?ver=1">