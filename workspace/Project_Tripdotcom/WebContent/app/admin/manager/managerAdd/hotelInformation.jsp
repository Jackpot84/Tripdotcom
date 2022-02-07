<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<form action="${pageContext.request.contextPath}/managerAdd/hotelInformation.mga" name="hotelInformation" method="post">
 <p></p>
  <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h1 class="card-title">기본 정보(*반드시 입력해주세요)</h1>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="row">*호텔명칭(한국어)</th>
	      <th colspan="3"><input type="text" name="hotel_name_kor"></th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">*호텔명칭(영어)</th>
	      <td colspan="3"><input type="text" name="hotel_name_eng"></td>
	    </tr>
	    <tr>
	      <th scope="row">*호텔주소(한국어)</th>
	      <td colspan="3">
	      	<p>상세주소 <input type="text" name="hotel_add_kor"> <br></p>
	     	<p>우편번호 <input type="text" name="zip_code_kor"> </p>
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">*호텔주소(영어)</th>
	      <td colspan="3">
	      	<p>상세주소 <input type="text" name="hotel_add_eng"> <br></p>
	     	<p>우편번호 <input type="text" name="zip_code_eng"> </p>
	      </td>
	    </tr>
	    <tr>
	      <th scope="row">대표 전화번호</th>
	      <td colspan="3">
	      	유선전화  <input type="radio" name="main_phonenumber" checked>
	      	&nbsp; 
	      	핸드폰 <input type="radio" name="main_phonenumber" > <br>
	      	<input type="text" name="main_phonenumber1"> - <input type="text" name="main_phonenumber2">  - <input type="text" name="main_phonenumber3">
	      </td>
	    </tr>
	  </tbody>
	</table><br>
   </div>
  </div>
  
  
 <p></p>
  <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h1 class="card-title">세부 정보(*반드시 입력해주세요)</h1>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="row">*호텔성급</th>
	      <th colspan="3">
			<select name="star">
				<option > 성급없음</option>
				<option > 1성</option>
				<option > 2성</option>
				<option > 3성</option>
				<option > 4성</option>
				<option > 5성</option>
			</select>
	      </th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">*개업년월</th>
	      <td colspan="3"><input type="date" name="open_date"></td>
	    </tr>
	    <tr>
	      <th scope="row">*객실 총 수</th>
	      <td colspan="3">
	      	<input type="text" name="hotel_total_room"> 개
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">*호텔소개(한국어)</th>
	      <td colspan="3">
			<textarea name="hotel_intro_kor" rows="3" cols="100"></textarea>
	      </td>
	    </tr>
	     <tr>
	      <th scope="row">*호텔소개(영어)</th>
	      <td colspan="3">
			<textarea name ="hotel_intro_eng" rows="3" cols="100"></textarea>
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">서비스비용</th>
	      <td colspan="3">
	      	<input type="text" name="service_pay"> %
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">호텔 홈페이지</th>
	      <td colspan="3">
	      	<input type="text" name="homepage">
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">*통화</th>
	      <th colspan="3">
			<select name="currency">
				<option > KRW</option>
				<option > USD</option>
			</select>
	      </th>
	    </tr>
	  </tbody>
	</table><br>
   </div>
  </div>
 
 <p></p>
  <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h1 class="card-title">담당자 정보(*반드시 입력해주세요)</h1>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="row">*담당자 성명</th>
	      <th colspan="3"> <input type="text" name="keeper_name"></th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">*담당자 연락처</th>
	      <td colspan="3">
	      	<p>유선전화 <input type="text" name="keeper_homenum1"> - <input type="text" name="keeper_homenum2"> - <input type="text" name="keeper_homenum3"> <br></p>
	      	<p>핸드폰 <input type="text" name="keeper_phonenum1"> - <input type="text" name="keeper_phonenum2">- <input type="text" name="keeper_phonenum3"><br></p>
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">*담당자 이메일</th>
	      <td colspan="3"><input type="text" name="keeper_email"></td>
	    </tr>
	  </tbody>
	</table><br>
   </div>
  </div>
	

<!-- <p></p> -->
<!--   <div class="card card-outline card-primary"> -->
<!--      <div class="card-header">  -->
<!--       <h1 class="card-title">집주인 정보(*반드시 입력해주세요)</h1> -->
<!--       </div> -->
<!--     /.card-header -->
<!--     <div class="card-body"> -->
<!-- 	<table class="table table-bordered"> -->
<!-- 	  <thead> -->
<!-- 	    <tr> -->
<!-- 	      <th scope="row">*집주인 성명</th> -->
<!-- 	      <th colspan="3"> <input type="text" name="House_owner_name"></th> -->
<!-- 	    </tr> -->
<!-- 	  </thead> -->
<!-- 	  <tbody> -->
<!-- 	    <tr> -->
<!-- 	      <th scope="row">집주인 프로필 사진</th> -->
<!-- 	      <td colspan="3"> -->
<!-- 	      	<input type="button" name="House_owner_profile" value="사진등록"> -->
<!-- 	      </td> -->
<!-- 	    </tr> -->
<!-- 	     <tr> -->
<!-- 	      <th scope="row">*집주인 소개</th> -->
<!-- 	      <td colspan="3"> -->
<!-- 			<textarea name="House_owner_intro" rows="3" cols="100"></textarea> -->
<!-- 	      </td> -->
<!-- 	    </tr> -->
<!--    	    <tr> -->
<!-- 	      <th scope="row">집주인과 합숙여부</th> -->
<!-- 	      <td colspan="3"> -->
<!--   	      	예  <input type="radio" name="House_owner_staytogether" checked> -->
<!--   	      	&nbsp;  -->
<!--   	      	아니오 <input type="radio"  name="House_owner_staytogether" > <br> -->
<!-- 	      </td> -->
<!-- 	    </tr> -->
<!-- 	  </tbody> -->
<!-- 	</table> -->
<!--    </div> -->
<!--   </div> -->
 </form>
 
