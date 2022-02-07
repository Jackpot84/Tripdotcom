package com.koreait.manager.dto;

import java.util.Date;

public class BookingListSearchBean {
	private String Booking_fromDate;
	private String Booking_toDate;
	private String stay;
	private String standard;
	private String style_;
	private String roomtype;
	private String hotel_name_kor;
	private String room_name_manager_kor;
	private String reservation_id;
	private String checkin_date;
	private String checkout_date;
	private String Manager_Issued_Email;
	
	public String getBooking_fromDate() {
		return Booking_fromDate;
	}
	public void setBooking_fromDate(String booking_fromDate) {
		Booking_fromDate = booking_fromDate;
	}
	public String getBooking_toDate() {
		return Booking_toDate;
	}
	public void setBooking_toDate(String booking_toDate) {
		Booking_toDate = booking_toDate;
	}
	public String getStay() {
		return stay;
	}
	public void setStay(String stay) {
		this.stay = stay;
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	public String getStyle_() {
		return style_;
	}
	public void setStyle_(String style_) {
		this.style_ = style_;
	}
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	public String getHotel_name_kor() {
		return hotel_name_kor;
	}
	public void setHotel_name_kor(String hotel_name_kor) {
		this.hotel_name_kor = hotel_name_kor;
	}
	public String getRoom_name_manager_kor() {
		return room_name_manager_kor;
	}
	public void setRoom_name_manager_kor(String room_name_manager_kor) {
		this.room_name_manager_kor = room_name_manager_kor;
	}
	public String getReservation_id() {
		return reservation_id;
	}
	public void setReservation_id(String reservation_id) {
		this.reservation_id = reservation_id;
	}
	public String getCheckin_date() {
		return checkin_date;
	}
	public void setCheckin_date(String checkin_date) {
		this.checkin_date = checkin_date;
	}
	public String getCheckout_date() {
		return checkout_date;
	}
	public void setCheckout_date(String checkout_date) {
		this.checkout_date = checkout_date;
	}
	public String getManager_Issued_Email() {
		return Manager_Issued_Email;
	}
	public void setManager_Issued_Email(String manager_Issued_Email) {
		Manager_Issued_Email = manager_Issued_Email;
	}
}
