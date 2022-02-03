<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Starter</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="../../../../plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="../../../../plugins/fontawesome-free-5.15.4-web/css/all.min.css">
  <!-- Theme style -->
    <link rel="stylesheet" href="../../../../dist/css/add.css">
    <link rel="stylesheet" href="../../../../dist/css/styleAdd.css">
    <link rel="stylesheet" href="../../../../dist/css/bg.css">
    <link rel="stylesheet" href="../../../../dist/css/adminlte.css">
<body>

 <p><h3>기본 정보(*반드시 입력해주세요)</h3></p>
 
	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="row">*호텔명칭(한국어)</th>
	      <th colspan="3"><input type="text" name="Hotel_name_kor"></th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">*호텔명칭(영어)</th>
	      <td colspan="3"><input type="text" name="Hotel_name_eng"></td>
	    </tr>
	    <tr>
	      <th scope="row">*호텔주소(한국어)</th>
	      <td colspan="3">
	      	<p>상세주소 <input type="text" name="Hotel_add_kor"> <br></p>
	     	<p>우편번호 <input type="text" name="Zip_code_kor"> </p>
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">*호텔주소(영어)</th>
	      <td colspan="3">
	      	<p>상세주소 <input type="text" name="Hotel_add_eng"> <br></p>
	     	<p>우편번호 <input type="text" name="Zip_code_eng"> </p>
	      </td>
	    </tr>
	    <tr>
	      <th scope="row">대표 전화번호</th>
	      <td colspan="3">
	      	유선전화  <input type="radio" name="Main_phonenumber" checked>
	      	&nbsp; 
	      	핸드폰 <input type="radio" name="Main_phonenumber" > <br>
	      	<input type="text" name="Main_phonenumber1"> - <input type="text" name="Main_phonenumber2">  - <input type="text" name="Main_phonenumber3">
	      </td>
	    </tr>
	  </tbody>
	</table><br>

 <p><h3>세부 정보(*반드시 입력해주세요)</h3></p>
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
	      <td colspan="3"><input type="date" name="Open_date"></td>
	    </tr>
	    <tr>
	      <th scope="row">*객실 총 수</th>
	      <td colspan="3">
	      	<input type="text" name="Hotel_Total_room"> 개
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">*호텔소개(한국어)</th>
	      <td colspan="3">
			<textarea name="Hotel_intro_kor" rows="3" cols="100"></textarea>
	      </td>
	    </tr>
	     <tr>
	      <th scope="row">*호텔소개(영어)</th>
	      <td colspan="3">
			<textarea name ="Hotel_intro_eng" rows="3" cols="100"></textarea>
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
	      	<input type="text" name="Homepage"> 개
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">*통화</th>
	      <th colspan="3">
			<select name="Currency">
				<option > KRW</option>
				<option > USD</option>
			</select>
	      </th>
	    </tr>
	  </tbody>
	</table><br>


 <p><h3>담당자 정보(*반드시 입력해주세요)</h3></p>
	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="row">*담당자 성명</th>
	      <th colspan="3"> <input type="text" name="Keeper_name"></th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">*담당자 연락처</th>
	      <td colspan="3">
	      	<p>유선전화 <input type="text" name="Keeper_homenum1"> - <input type="text" name="Keeper_homenum2"> - <input type="text" name="Keeper_homenum3"> <br></p>
	      	<p>핸드폰 <input type="text" name="Keeper_phonenum1"> - <input type="text" name="Keeper_phonenum2">- <input type="text" name="Keeper_phonenum3"><br></p>
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">*담당자 이메일</th>
	      <td colspan="3"><input type="text" name="Keeper_email"></td>
	    </tr>
	  </tbody>
	</table><br>
	

 <p><h3>집주인 정보(*반드시 입력해주세요)</h3></p>
	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="row">*집주인 성명</th>
	      <th colspan="3"> <input type="text" name="House_owner_name"></th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">집주인 프로필 사진</th>
	      <td colspan="3">
	      	<input type="button" name="House_owner_profile" value="사진등록">
	      </td>
	    </tr>
	     <tr>
	      <th scope="row">*집주인 소개</th>
	      <td colspan="3">
			<textarea name="House_owner_intro" rows="3" cols="100"></textarea>
	      </td>
	    </tr>
   	    <tr>
	      <th scope="row">집주인과 합숙여부</th>
	      <td colspan="3">
  	      	예  <input type="radio" name="House_owner_staytogether" checked>
  	      	&nbsp; 
  	      	아니오 <input type="radio"  name="House_owner_staytogether" > <br>
	      </td>
	    </tr>
	  </tbody>
	  
	  
	  
	</table>	
<!-- jQuery -->
<script src="../../../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../../../dist/js/adminlte.js"></script>
</body>
</html>