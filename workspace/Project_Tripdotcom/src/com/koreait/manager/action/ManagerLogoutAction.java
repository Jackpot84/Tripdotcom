package com.koreait.manager.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;

public class ManagerLogoutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		//session 객체선언
		HttpSession session = request.getSession();
		//세션에 저장하기
		session.removeAttribute("manager");
				
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"app/admin/manager/loginManager.jsp");
		
		return forward;
	}

}
