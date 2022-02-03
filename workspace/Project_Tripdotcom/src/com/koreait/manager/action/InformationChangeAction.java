package com.koreait.manager.action;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.manager.dao.ManagerDao;
import com.koreait.manager.dto.ManagerAccountBean;

public class InformationChangeAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		ManagerAccountBean manager = new ManagerAccountBean();
		
		//session 객체선언
		HttpSession session = request.getSession();
		manager = (ManagerAccountBean)session.getAttribute("manager");

		manager.setManager_Issued_Email(manager.getManager_Issued_Email());
		//세션에서 이메일을 겟해서 manager에 다시 셋해줌
		

		manager.setManager_Issue_password(request.getParameter("manager_Issue_password"));
		manager.setManager_lastname(request.getParameter("manager_lastname"));
		manager.setManager_firstname(request.getParameter("manager_firstname"));
		manager.setManager_gender(request.getParameter("manager_gender"));
		manager.setManager_Company(request.getParameter("manager_Company"));
		manager.setManager_Department(request.getParameter("manager_Department"));
		manager.setManager_PhoneNumber(request.getParameter("manager_PhoneNumber"));
		manager.setManager_Using_Email(request.getParameter("manager_Using_Email"));

		
		//세션에 저장하기
		//session.setAttribute("manager", manager);

		
		// 다오에서 sql에 전달
		ManagerDao mdao = new ManagerDao();
		
		
		//'수정성공 alert'에 띄우기 위해 리퀘스트에 체크 값 저장
		boolean informationChangeCheck = mdao.informationChange(manager);
		request.setAttribute("informationChangeCheck", informationChangeCheck);
		//informationChangeCheck = false;
		
		
		//
		if(mdao.informationChange(manager)) {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/manager/accountManager.jsp");
		}

		System.out.println("hahaha -! InformationChangeAction");
		
		return forward;
	}

}
