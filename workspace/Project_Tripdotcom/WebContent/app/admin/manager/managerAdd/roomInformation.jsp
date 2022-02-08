<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<%-- <form action="${pageContext.request.contextPath}/managerAdd/accommodationCategory.mga" name="roomInformation" method="post"> --%>
  <p><h3></h3></p>
  <div class="card card-outline card-primary">
     <div class="card-header"> 
      <h3 class="card-title">객실 정보(*반드시 입력해주세요)</h3>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
		<table class="table table-bordered">
		  <thead>
		    <tr>
		      <th scope="row" class="base">*객실 타입 명칭</th>
		      <td colspan="3">
		      
				<div class="row">	
			         <div class="col-3-sm">
			         <span class="form-group">
			            <label for="standard">규격(옵션)</label><br>
			       			<select>
								<option > Standard</option>
								<option > Deluxe</option>
								<option > Superior</option>
						</select>
			           </span>
			         </div>
			         &nbsp; 
			         &nbsp; 
			         <div class="col-3-sm">
			         	<span class="form-group">
				            <label for="styles">스타일(옵션)</label><br>
				       			<select>
									<option > Sea view</option>
									<option > Mountain view</option>
									<option > City view</option>
								</select>
			        	 </span>
			         </div>
			         &nbsp; 
			         &nbsp; 
			         <div class="col-3-sm">
			         <span class="form-group">
			            <label for="roomtype">객실타입</label><br>
			       			<select>
							<option > Single room</option>
							<option > Double room</option>
							<option > Twin room</option>
						</select>
			           </span>
			         </div>
			         &nbsp; 
			         &nbsp; 
	          </div><br>
	          <p>한국어 <input type="text" name="Room_name_manager_kor"></p>
	          <p>영어 <input type="text" name="Room_name_manager_eng"></p>
	          
	         
		    </td>
	    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">*면적</th>
		      <td colspan="3"><input type="text" name="area"> m2</td>
		    </tr>
		    <tr>
		      <th scope="row">*층수</th>
		      <td colspan="3">
		      	<input type="text" name="floor_num"> 층
		      </td>
		    </tr>
		    <tr>
		      <th scope="row">*객실수량</th>
		      <td colspan="3">
		      	<input type="text" name="room_count"> 개
		      </td>
		    </tr>
	   	    <tr>
		      <th scope="row">인터넷</th>
		      <td colspan="3">
		      	인터넷 사용 가능 <input type="radio" name="internet" checked>
		      	&nbsp; 
		      	인터넷 사용 불가 <input type="radio" name="internet" > <br>
		      </td>
		    </tr>
		    <tr>
		      <th scope="row">금연 정보</th>
		      <td colspan="3">
		      	금연 <input type="radio" name="no_smoking" checked>
		      	&nbsp; 
		      	흡연 가능 <input type="radio" name="no_smoking" > <br>
		      </td>
		    </tr>
		    <tr>
		      <th scope="row">창문</th>
		      <td colspan="3">
		      	창문 있음 <input type="radio" name="window" checked>
		      	&nbsp; 
		      	창문 없음 <input type="radio" name="window" > <br>
		      </td>
		    </tr>
		    <tr>
		      <th scope="row">*침대 유형</th>
		      <td colspan="3">
		      	<div id="Addbed">
		    	<p>
		      		침대유형 
		    	  	&nbsp; 
	      			&nbsp; 	
	   				<select name=bed_count">
						<option > 1</option>
						<option > 2</option>
						<option > 3</option>
					</select> 개
		      	&nbsp; 
		      	&nbsp;
		      		<select name="bed_type">
						<option > Single</option>
						<option > Double</option>
					</select>
			 	</p>
				</div>
					<button type="button" class="btn btn-block btn-primary btn-xs plus" onclick="addBed()">+</button>
					<button type="button" class="btn btn-block btn-primary btn-xs plus" onclick="removeBed(this)">-</button>
					&nbsp;
				<div id ="field"></div>
		      </td>
		    </tr>
		    <tr>
		      <th scope="row">*최대 성인 수</th>
		      <td colspan="3">
				<select name="max_adultsCount">
					<option > 0</option>
					<option > 1</option>
					<option > 2</option>
					<option > 3</option>
					<option > 4</option>
					<option > 5</option>
				</select> 명
		    </tr>
	   	    <tr>
		      <th scope="row">객실설명</th>
		      <td colspan="3">
		      	<textarea name="room_explain" rows="3" cols="100"></textarea>
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
      <h3 class="card-title">판매 정보(*반드시 입력해주세요)</h3>
      </div>
    <!-- /.card-header -->
    <div class="card-body">
			<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="row" class="base">*선결제객실요금</th>
	      <td colspan="3">
		      <p>
		      	조식인원 
				<select name="bk_people">
					<option > 0</option>
					<option > 1</option>
					<option > 2</option>
					<option > 3</option>
					<option > 4</option>
					<option > 5</option>
				</select>
		      </p>
		      &nbsp; 
		      <p>
		       *유효기간 <input type="date" name="roomuse_startdate"> - <input type="date" name="roomuse_enddate">
		      </p>
		      &nbsp; 
		      <p>
				가격 명세표<br>
				수수료 15% <br>
				판매가격 <input type="text" name="room_price"> KRW
			  </p>
			  &nbsp; 
			  <p>
			  	취소규정<br>
			  	체크인 72시간 이전 무료 취소 / 이후 80% 차감 후 환불
			  </p>
				
	      </td>
	    </tr>
	  </thead>
	
	</table>	
   </div>
      <!-- /.card-body -->
  </div>
  <!-- /.card card-outline card-primary-->
        <!-- /.card-body -->
<!--  </form> -->

<link rel="stylesheet" href="${pageContext.request.contextPath }/dist/css/managerHotelAdd.css?ver=1">