<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<%-- <form action="${pageContext.request.contextPath}/managerAdd/accommodationCategory.mga" name="roomInformation" method="post"> --%>
  <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h3 class="card-title">정산 방식(*반드시 입력해주세요)</h3>
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
	      <th scope="row">*정산 방식</th>
	      <td colspan="3">
	      트립 코인
	  	  </td>
     	</tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">*정산기록</th>
	      <td colspan="3">
   	      	<p>이메일 <input type="text" name="Calc_email"> <br></p>
	      	<p>이름 <input type="text" name="Calc_keeper_name"> <br></p>
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