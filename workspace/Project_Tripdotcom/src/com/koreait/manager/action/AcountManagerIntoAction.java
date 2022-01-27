package com.koreait.manager.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.manager.dto.ManagerAccountBean;

public class AcountManagerIntoAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		
		
		//session 객체선언
//		HttpSession session = request.getSession();
//		
//		ManagerAccountBean manager = (ManagerAccountBean)session.getAttribute("manager");
//		System.out.println(manager.getManager_Issued_Email());
//		System.out.println(manager.getManager_Issue_password());
		
		if(true) {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/manager/accountManager.jsp");
		}
		return forward;
	}

}
