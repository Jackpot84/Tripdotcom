package com.koreait.master.dto;

public class Hotel_ApprovalDTO {
private int Approval_Number_Id;
private int Area;
private int Number_Of_Floors;
private String Number_Of_Rooms;
private String Approval_status;
public int getApproval_Number_Id() {
	return Approval_Number_Id;
}
public void setApproval_Number_Id(int approval_Number_Id) {
	Approval_Number_Id = approval_Number_Id;
}
public int getArea() {
	return Area;
}
public void setArea(int area) {
	Area = area;
}
public int getNumber_Of_Floors() {
	return Number_Of_Floors;
}
public void setNumber_Of_Floors(int number_Of_Floors) {
	Number_Of_Floors = number_Of_Floors;
}
public String getNumber_Of_Rooms() {
	return Number_Of_Rooms;
}
public void setNumber_Of_Rooms(String number_Of_Rooms) {
	Number_Of_Rooms = number_Of_Rooms;
}
public String getApproval_status() {
	return Approval_status;
}
public void setApproval_status(String approval_status) {
	Approval_status = approval_status;
}

}
