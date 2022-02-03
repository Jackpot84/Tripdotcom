<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<form action="${pageContext.request.contextPath}/managerAdd/accommodationCategory.mga" name="accommodationCategory" method="post">
 <p><h3></h3></p>
  <div class="card card-outline card-primary">
<!--     <div class="card-header"> -->
      <h3 class="card-title">건물 소재지</h3>
      <div class="card-tools">
        <!-- Buttons, labels, and many other things can be placed here! -->
        <!-- Here is a label for example -->
      </div>
      <!-- /.card-tools -->
    </div>
    <!-- /.card-header -->
    <div class="card-body">
    
      <input type="text" name="country" value="대한민국" disabled>
		 <select name="Region" id="Region" onchange="testChange(this.value)">
		  <option value="지역선택"> 지역선택  </option>
		  <option value="서울"> 서울  </option>
		  <option value="강릉"> 강릉  </option>
		  <option value="부산"> 부산  </option>
		  <option value="제주"> 제주  </option>
		</select>
		<select name="Location" id="Location">
		  <option value="구역선택">구역선택</option>
	    </select>
    </div>
      <!-- /.card-body -->
  </div>
  <!-- /.card card-outline card-primary-->
<p></p>

<div class="card card-outline card-primary">
    <div class="card-header">
      <h3 class="card-title">숙박 시설 분류</h3>
      <input type="hidden" name="stay">
      <div class="card-tools">
        <!-- Buttons, labels, and many other things can be placed here! -->
        <!-- Here is a label for example -->
      </div>
      <!-- /.card-tools -->
    </div>


    
    <div class="row">


      <div class="col-sm-3">
    <!-- /.card-header -->
      <p></p>
      <div class="card" >
        <div class="card-body hotel">
          <h5 class="card-title hotel">호텔</h5>
          <p class="card-text hotel">호텔 설명</p>
        </div>
      </div>
    </div>

    <div class="col-sm-3">
      <p></p>
      <div class="card">
        <div class="card-body guesthouse" >
          <h5 class="card-title guesthouse">게스트하우스</h5>
          <p class="card-text guesthouse">게스트하우스 설명</p>
        </div>
      </div>
    </div>
  </div>
</div>
    <!-- /.card-body -->
<p></p>

    <div class="card card-outline card-primary" id="stay_type">
        <div class="card-header">
          <h3 class="card-title">상세 분류</h3>
          <input type="hidden" name="stay_type">
          <div class="card-tools">
            <!-- Buttons, labels, and many other things can be placed here! -->
            <!-- Here is a label for example -->
          </div>
          <!-- /.card-tools -->
        </div>
        <div class="row">
          <div class="col-sm-3">
        <!-- /.card-header -->
          <p></p>
          <div class="card">
            <div class="card-body stay_type1">
              <h5 class="card-title stay_type1" id="stay_type1_id">상세분류1</h5>
              <input type="hidden" name="stay_type">
              <p class="card-text stay_type1" id="stay_type1_exp">설명</p>
            </div>
          </div>
        </div>

        <div class="col-sm-3">
          <p></p>
          <div class="card">
            <div class="card-body stay_type2">
              <h5 class="card-title stay_type2" id="stay_type2_id">상세분류2</h5>
              <p class="card-text stay_type2" id="stay_type2_exp">설명</p>
            </div>
          </div>
        </div>
      </div>
    </div>
        <!-- /.card-body -->
 </form>

