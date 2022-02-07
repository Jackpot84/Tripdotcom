package com.koreait.manager.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.koreait.managerAdd.dto.HotelsBean;
import com.koreait.managerAdd.dto.Room_name_managerBean;
import com.koreait.managerAdd.dto.RoomsBean;
import com.koreait.managerAdd.dto.RoomtypeBean;
import com.koreait.managerAdd.dto.StandardBean;
import com.koreait.managerAdd.dto.StayBean;
import com.koreait.managerAdd.dto.StyleBean;
import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.manager.dao.ManagerDao;
import com.koreait.manager.dto.BookingListBean;
import com.koreait.manager.dto.BookingListSearchBean;
import com.koreait.manager.dto.ManagerAccountBean;
import com.koreait.user.dto.ReservationPaymentsBean;

public class BookingListSearchAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		ManagerDao mdao = new ManagerDao();
		HttpSession session = request.getSession();

		//어카운드 정보..
		ManagerAccountBean manager = new ManagerAccountBean();
		
		//셀렉트 값들 받아올 비어있는 빈즈 생성
		BookingListBean bookingList = new BookingListBean();
		
		//세션에서 어카운트 정보 받아서 빈객체에 넣고
		manager = (ManagerAccountBean)session.getAttribute("manager");
		
		//다시 bookingList빈즈에 담아서 다오로 가져감
		bookingList.setManager_Issued_Email(manager.getManager_Issued_Email());
		
		System.out.println(bookingList.getManager_Issued_Email());
		
		//다오 호출
		
		request.setAttribute("bookingList", mdao.bookingListRead(bookingList.getManager_Issued_Email()));
		
		
		
		System.out.println(bookingList.getManager_Issued_Email()+2);
		
		
		if(bookingList != null) {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/manager/bookingList.jsp");
		}
		
		return forward;
	}

}


/* 22.02.05 
 * 이전 작업들.. 혹시몰라 남겨둠
 * //호텔정보 빈들... 
BookingListSearchBean bookLSBean = new BookingListSearchBean();
//HotelsBean hotels = new HotelsBean();
//StandardBean standard = new StandardBean();
//StyleBean style = new StyleBean();
//StayBean stay = new StayBean();
//RoomtypeBean roomtype = new RoomtypeBean();
//Room_name_managerBean room_name = new Room_name_managerBean();
//ReservationPaymentsBean reservationPay = new ReservationPaymentsBean();	

System.out.println(request.getParameter("Booking_fromDate"));
System.out.println(request.getParameter("Booking_toDate"));
System.out.println(request.getParameter("stay"));
System.out.println(request.getParameter("standard"));
System.out.println(request.getParameter("style_"));
System.out.println(request.getParameter("roomtype"));
System.out.println(request.getParameter("hotel_name_kor"));
System.out.println(request.getParameter("room_name_manager_kor"));
System.out.println(request.getParameter("reservation_id"));
System.out.println(request.getParameter("checkin_date"));
System.out.println(request.getParameter("checkout_date"));

bookLSBean.setBooking_fromDate(request.getParameter("Booking_fromDate"));
bookLSBean.setBooking_toDate(request.getParameter("Booking_toDate"));
bookLSBean.setStay(request.getParameter("stay"));
bookLSBean.setStandard(request.getParameter("standard"));
bookLSBean.setStyle_(request.getParameter("style_"));
bookLSBean.setRoomtype(request.getParameter("roomtype"));
bookLSBean.setHotel_name_kor(request.getParameter("hotel_name_kor"));
bookLSBean.setRoom_name_manager_kor(request.getParameter("room_name_manager_kor"));
bookLSBean.setReservation_id(request.getParameter("reservation_id"));
bookLSBean.setCheckin_date(request.getParameter("checkin_date"));
bookLSBean.setCheckout_date(request.getParameter("checkout_date"));


System.out.println("--------bookLSBean.get-------");
System.out.println(bookLSBean.getBooking_fromDate());
System.out.println(bookLSBean.getStay());
System.out.println(bookLSBean.getHotel_name_kor());
System.out.println(bookLSBean.getRoomtype());

//		bookLSBean = mdao.bookingListSearch(bookLSBean);
*/