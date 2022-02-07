<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<%-- <form action="${pageContext.request.contextPath}/managerAdd/accommodationCategory.mga" name="roomInformation" method="post"> --%>
    <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h3 class="card-title">사업자 증명(*반드시 입력해주세요)</h3>
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
	      <th scope="row">*인증서 유형</th>
	      <td colspan="3">
		      	없음 <input type="radio" name="Certifi_type" checked>
		      	&nbsp; 
		      	사업자 등록증 <input type="radio" name="Certifi_type" >
		      	&nbsp;
		      	임대차계약 <input type="radio" name="Certifi_type">
		      	&nbsp; 
		      	집문서 <input type="radio" name="Certifi_type" >
		      	&nbsp; 
		      	수도,전기세 납부 증명<input type="radio" name="Certifi_type">
	  	  </td>
     	</tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">*기업 명칭</th>
	      <td colspan="3">
	      	<input type="text" name="Comp_name">
	  	  </td>
     	</tr>
	    <tr>
	      <th scope="row">*일련 번호</th>
	      <td colspan="3">
	      	<input type="text" name="serial_num">
	  	  </td>
     	</tr>
	    <tr>
	      <th scope="row">*법인명</th>
	      <td colspan="3">
	      	<input type="text" name="Corporation_name">
	  	  </td>
     	</tr>
	    <tr>
	      <th scope="row">*사업장</th>
	      <td colspan="3">
	      	<input type="text" name="workspace">
	  	  </td>
     	</tr>
	    <tr>
	      <th scope="row">경영 범위</th>
	      <td colspan="3">
	      	<input type="text" name="Busi_scope">
	  	  </td>
     	</tr>
	    <tr>
	      <th scope="row">*유효기간</th>
	      <td colspan="3">
	      	<input type="date" name="Validity"> 까지 유효하다
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