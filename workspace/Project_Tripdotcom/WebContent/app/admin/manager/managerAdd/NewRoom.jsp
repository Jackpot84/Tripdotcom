<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<form action="${pageContext.request.contextPath}/managerAdd/NewRoom.mga" name="hotelInformation" method="post">
  <p class="center1"></p>
   
      <div class="row">
      	<div class="col-sm-4">
   		</div>
   		<div class="col-sm-4">
   		
     		<button type="button" class="btn btn-block btn-primary btn-lg" onclick="roomAdd()">객실추가</button>    
   		</div>
  	</div>
  	<p class="center2"></p>
 </form>
 
<link rel="stylesheet" href="${pageContext.request.contextPath }/dist/css/managerHotelAdd.css?ver=1">