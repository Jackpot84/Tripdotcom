package com.koreait.managerAdd.dto;

public class Pay_infoBean {

	private String pay_id;
	private int bk_people;
	private String roomuse_startdate;
	private String roomuse_enddate;
	private int room_commission;
	private int room_price;
	private String room_id;
	
	
	
	
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
	public String getPay_id() {
		return pay_id;
	}
	public void setPay_id(String pay_id) {
		this.pay_id = pay_id;
	}
	public int getBk_people() {
		return bk_people;
	}
	public void setBk_people(int bk_people) {
		this.bk_people = bk_people;
	}
	public String getRoomuse_startdate() {
		return roomuse_startdate;
	}
	public void setRoomuse_startdate(String roomuse_startdate) {
		this.roomuse_startdate = roomuse_startdate;
	}
	public String getRoomuse_enddate() {
		return roomuse_enddate;
	}
	public void setRoomuse_enddate(String roomuse_enddate) {
		this.roomuse_enddate = roomuse_enddate;
	}
	public int getRoom_commission() {
		return room_commission;
	}
	public void setRoom_commission(int room_commission) {
		this.room_commission = room_commission;
	}
	public int getRoom_price() {
		return room_price;
	}
	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}
	
	
	
	
}
