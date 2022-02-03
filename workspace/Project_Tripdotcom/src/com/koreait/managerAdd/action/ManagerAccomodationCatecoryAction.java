package com.koreait.managerAdd.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;

public class ManagerAccomodationCatecoryAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		String country = request.getParameter("country");
		String Region = request.getParameter("Region");
		String Location = request.getParameter("Location");
		String stay = request.getParameter("stay");
		String stay_type = request.getParameter("stay_type");
		
		System.out.println(country);
		System.out.println(Region);
		System.out.println(Location);
		System.out.println(stay);
		System.out.println(stay_type);
		
		return forward;
	}

	
}
