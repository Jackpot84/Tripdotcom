package com.koreait.managerAdd.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.korea.it.managerAdd.dao.ManagerAddDAO;
import com.korea.it.managerAdd.dto.CountriesBean;
import com.korea.it.managerAdd.dto.RegionsBean;
import com.koreait.action.Action;
import com.koreait.action.ActionForward;

public class ManagerAccomodationCategoryAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ManagerAddDAO madao = new ManagerAddDAO();
		ActionForward forward = new ActionForward();
		
		String country = request.getParameter("country");
		String region = request.getParameter("Region");
		String Location = request.getParameter("Location");
		String stay = request.getParameter("stay");
		String stay_type = request.getParameter("stay_type");
		
		CountriesBean country = new CountriesBean();
		RegionsBean region = new RegionsBean();
		
		
		
		
		return forward;
	}

	
}
