package com.koreait.managerAdd.dto;

public class RoomsBean {

	
	private String room_id;
	private int area; 
	private int floor_num;
	private int room_count;
	private int internet;
	private int No_smokiong;
	private int window;
	private String room_explain;
	private String room_pic;
	private String hotel_id;
	
	
	public String getHotel_id() {
		return hotel_id;
	}
	public void setHotel_id(String hotel_id) {
		this.hotel_id = hotel_id;
	}
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
	public int getArea() {
		return area;
	}
	public void setArea(int area) {
		this.area = area;
	}
	public int getFloor_num() {
		return floor_num;
	}
	public void setFloor_num(int floor_num) {
		this.floor_num = floor_num;
	}
	public int getRoom_count() {
		return room_count;
	}
	public void setRoom_count(int room_count) {
		this.room_count = room_count;
	}
	public int getInternet() {
		return internet;
	}
	public void setInternet(int internet) {
		this.internet = internet;
	}
	public int getNo_smokiong() {
		return No_smokiong;
	}
	public void setNo_smokiong(int no_smokiong) {
		No_smokiong = no_smokiong;
	}
	public int getWindow() {
		return window;
	}
	public void setWindow(int window) {
		this.window = window;
	}
	public String getRoom_explain() {
		return room_explain;
	}
	public void setRoom_explain(String room_explain) {
		this.room_explain = room_explain;
	}
	public String getRoom_pic() {
		return room_pic;
	}
	public void setRoom_pic(String room_pic) {
		this.room_pic = room_pic;
	}
	
	
	
}
