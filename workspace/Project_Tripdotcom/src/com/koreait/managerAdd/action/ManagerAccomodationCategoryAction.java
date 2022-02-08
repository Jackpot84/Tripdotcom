package com.koreait.managerAdd.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.managerAdd.dao.ManagerAddDAO;
import com.koreait.managerAdd.dto.AccomodationCategoryDTO;
import com.koreait.managerAdd.dto.CountriesBean;
import com.koreait.managerAdd.dto.LocationsBean;
import com.koreait.managerAdd.dto.RegionsBean;
import com.koreait.managerAdd.dto.StayBean;
import com.koreait.managerAdd.dto.Stay_typeBean;

public class ManagerAccomodationCategoryAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ManagerAddDAO madao = new ManagerAddDAO();
		ActionForward forward = new ActionForward();
		
		HttpSession session = request.getSession();
		
		//숙박시설분류 빈즈 생성
		AccomodationCategoryDTO accomo = new AccomodationCategoryDTO();
		
		
		//파라미터로 받은 값들 변수에 담기
		String country = request.getParameter("country");
		String region = request.getParameter("region");
		String location = request.getParameter("location");
		String stay = request.getParameter("stay");
		String stay_type = request.getParameter("stay_type");
		
		

		
		//전체 숙박시설분류 DTO에 담아주기
		//나라
		if(country.equals("대한민국")) {
			accomo.setCountry_id("0");
		}
		
		
		//지역
		switch(region) {
		case "서울":
			accomo.setRegion_id("1");
			break;
		case "강릉":
			accomo.setRegion_id("2");
			break;
		case "부산":
			accomo.setRegion_id("3");
			break;
		case "제주":
			accomo.setRegion_id("4");
		}
		
		
		//구역
		switch(location){
			case "강남구":
				accomo.setLocation_id("10");
				break;
			case "강북구":
				accomo.setLocation_id("20");
				break;
			case "종로구":
				accomo.setLocation_id("30");
				break;
			case "교동":
				accomo.setLocation_id("40");
				break;
			case "초당":
				accomo.setLocation_id("50");
				break;
			case "수영구":
				accomo.setLocation_id("60");
				break;
			case "해운대구":
				accomo.setLocation_id("70");
				break;
			case "부산진구":
				accomo.setLocation_id("80");
				break;
			case "애월":
				accomo.setLocation_id("90");
				break;
			case "한림":
				accomo.setLocation_id("100");
				break;
			case "세화":
				accomo.setLocation_id("110");
				break;
		}
		
		
		//숙박시설분류
		switch(stay) {
		case "호텔":
			accomo.setStay_id("11");
			break;
		case "게스트하우스":
			accomo.setStay_id("12");
			break;
		}
		
		
		//상세분류
		switch(stay_type) {
		case "호텔":
			accomo.setStay_type_id("21");
			break;
		case "리조트":
			accomo.setStay_type_id("22");
			break;
		case "주택":
			accomo.setStay_type_id("23");
			break;
		case "아파트":
			accomo.setStay_type_id("24");
			break;
		}
		
		
		session.setAttribute("accomo", accomo);
		
	
		if(madao.register(accomo)) {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath() + "/app/admin/manager/managerAdd/hotelCategoryHead2.jsp");
		} else{
			forward.setRedirect(false);
			forward.setPath(request.getContextPath() + "/app/admin/manager/managerAdd/hotelCategoryHead1.jsp");
		}
		
		
		
		
		
		return forward;
	}

	
}
