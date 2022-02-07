package com.koreait.managerAdd.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.managerAdd.dao.ManagerAddDAO;
import com.koreait.managerAdd.dto.AccomodationCategoryDTO;
import com.koreait.managerAdd.dto.HotelsBean;
import com.koreait.managerAdd.dto.House_ownerBean;
import com.koreait.managerAdd.dto.KeeperBean;

public class ManagerHotelInforAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ManagerAddDAO madao = new ManagerAddDAO();
		ActionForward forward = new ActionForward();
		
		HttpSession session = request.getSession();
		
		//호텔정보 빈즈 생성
		HotelsBean hotelinfo = new HotelsBean();
		
		//담당자 빈즈 생성
		KeeperBean keeper = new KeeperBean();
		
		//집주인 빈즈 생성
		House_ownerBean houseown = new House_ownerBean();
		
		//호텔정보 : 파라미터로 받은 값들 변수에 담기
		String hotel_name_eng = request.getParameter("hotel_name_eng");
		String hotel_name_kor = request.getParameter("hotel_name_kor");
		String hotel_add_eng = request.getParameter("hotel_add_eng");
		String hotel_add_kor = request.getParameter("hotel_add_kor");
		String zip_code_eng = request.getParameter("zip_code_eng");
		String zip_code_kor = request.getParameter("zip_code_kor");
		String main_phonenumber1 = request.getParameter("main_phonenumber1");
		String main_phonenumber2 = request.getParameter("main_phonenumber2");
		String main_phonenumber3 = request.getParameter("main_phonenumber3");
		String star = request.getParameter("star");
		String open_date = request.getParameter("open_date");
		int hotel_total_room = Integer.parseInt(request.getParameter("hotel_total_room"));
		int service_pay = Integer.parseInt(request.getParameter("service_pay"));
		String homepage = request.getParameter("homepage");
		String hotel_intro_eng = request.getParameter("hotel_intro_eng");
		String hotel_intro_kor = request.getParameter("hotel_intro_kor");
		String currency = request.getParameter("currency");
		
		
		
		
		// 세션에서 stay_type_id 꺼내기
		AccomodationCategoryDTO acco = (AccomodationCategoryDTO)session.getAttribute("accomo");
		
		String stay_type_id = acco.getStay_type_id();
		
		
		//객체 hotelinfo에 담아주기
		hotelinfo.setHotel_name_eng(hotel_name_eng);
		hotelinfo.setHotel_name_kor(hotel_name_kor);
		hotelinfo.setHotel_add_eng(hotel_add_eng);
		hotelinfo.setHotel_add_kor(hotel_add_kor);
		hotelinfo.setZip_code_eng(zip_code_eng);
		hotelinfo.setZip_code_kor(zip_code_kor);
		hotelinfo.setMain_phonenumber1(main_phonenumber1);
		hotelinfo.setMain_phonenumber2(main_phonenumber2);
		hotelinfo.setMain_phonenumber3(main_phonenumber3);
		hotelinfo.setStar(star);
		hotelinfo.setOpen_date(open_date);
		hotelinfo.setHotel_total_room(hotel_total_room);
		hotelinfo.setService_pay(service_pay);
		hotelinfo.setHomepage(homepage);
		hotelinfo.setHotel_intro_eng(hotel_intro_eng);
		hotelinfo.setHotel_intro_kor(hotel_intro_kor);
		hotelinfo.setCurrency(currency);
		hotelinfo.setStay_type_id(stay_type_id);
		
		
		//담당자 정보: 파라미터로 받은 값들 변수에 담기
		String keeper_name = request.getParameter("keeper_name");
		String keeper_homenum1 = request.getParameter("keeper_homenum1");
		String keeper_homenum2 = request.getParameter("keeper_homenum2");
		String keeper_homenum3 = request.getParameter("keeper_homenum3");
		String keeper_phonenum1 = request.getParameter("keeper_phonenum1");
		String keeper_phonenum2 = request.getParameter("keeper_phonenum2");
		String keeper_phonenum3 = request.getParameter("keeper_phonenum3");
		String keeper_email = request.getParameter("keeper_email");
		
		
		keeper.setKeeper_name(keeper_name);
		keeper.setKeeper_homenum1(keeper_homenum1);
		keeper.setKeeper_homenum2(keeper_homenum2);
		keeper.setKeeper_homenum3(keeper_homenum3);
		keeper.setKeeper_phonenum1(keeper_phonenum1);
		keeper.setKeeper_phonenum2(keeper_phonenum2);
		keeper.setKeeper_phonenum3(keeper_phonenum3);
		keeper.setKeeper_email(keeper_email);
		
		
		//집주인 정보
		if(request.getParameter("house_owner_name") !=null) {
			String house_owner_name = request.getParameter("house_owner_name");
			String house_owner_profile = request.getParameter("house_owner_profile");
			String house_owner_intro = request.getParameter("house_owner_intro");
			int house_owner_staytogether = Integer.parseInt(request.getParameter("house_owner_staytogether"));
			
			houseown.setHouse_owner_name(house_owner_name);
			houseown.setHouse_owner_profile(house_owner_profile);
			houseown.setHouse_owner_intro(house_owner_intro);
			houseown.setHouse_owner_staytogether(house_owner_staytogether);
		}
		
		
		if(madao.informHotel(hotelinfo)) {
			if(madao.informKeeper(keeper)) {
			
				forward.setRedirect(false);
				forward.setPath(request.getContextPath() + "/app/admin/manager/managerAdd/hotelCategoryHead3.jsp");
			} else {
				forward.setRedirect(false);
				forward.setPath(request.getContextPath() + "/app/admin/manager/managerAdd/hotelCategoryHead2.jsp");					
			}
		
		
		}

		return forward;

	
	}
}
