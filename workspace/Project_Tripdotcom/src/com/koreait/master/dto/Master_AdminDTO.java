package com.koreait.master.dto;

import java.util.Date;

public class Master_AdminDTO {
	private int master_Admin_ID;
	private String master_E_MAIL;
	private String master_pw;
	private String master_First_name;
	private String master_Last_name;
	private Date master_Birth;
	private String master_Gender;
	private Date master_Registration_Date;
	private String Company_Rank;
	private String Company_phoneNumber;
	public int getMaster_Admin_ID() {
		return master_Admin_ID;
	}
	public void setMaster_Admin_ID(int master_Admin_ID) {
		this.master_Admin_ID = master_Admin_ID;
	}
	public String getMaster_E_MAIL() {
		return master_E_MAIL;
	}
	public void setMaster_E_MAIL(String master_E_MAIL) {
		this.master_E_MAIL = master_E_MAIL;
	}
	public String getMaster_pw() {
		return master_pw;
	}
	public void setMaster_pw(String master_pw) {
		this.master_pw = master_pw;
	}
	public String getMaster_First_name() {
		return master_First_name;
	}
	public void setMaster_First_name(String master_First_name) {
		this.master_First_name = master_First_name;
	}
	public String getMaster_Last_name() {
		return master_Last_name;
	}
	public void setMaster_Last_name(String master_Last_name) {
		this.master_Last_name = master_Last_name;
	}
	public Date getMaster_Birth() {
		return master_Birth;
	}
	public void setMaster_Birth(Date master_Birth) {
		this.master_Birth = master_Birth;
	}
	public String getMaster_Gender() {
		return master_Gender;
	}
	public void setMaster_Gender(String master_Gender) {
		this.master_Gender = master_Gender;
	}
	public Date getMaster_Registration_Date() {
		return master_Registration_Date;
	}
	public void setMaster_Registration_Date(Date master_Registration_Date) {
		this.master_Registration_Date = master_Registration_Date;
	}
	public String getCompany_Rank() {
		return Company_Rank;
	}
	public void setCompany_Rank(String company_Rank) {
		Company_Rank = company_Rank;
	}
	public String getCompany_phoneNumber() {
		return Company_phoneNumber;
	}
	public void setCompany_phoneNumber(String company_phoneNumber) {
		Company_phoneNumber = company_phoneNumber;
	}

}