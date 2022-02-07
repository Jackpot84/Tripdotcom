package com.koreait.manager.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.manager.dao.ManagerDao;
import com.koreait.manager.dto.ManagerAccountBean;

public class ManagerLoginAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		ManagerAccountBean manager = new ManagerAccountBean();
		ManagerDao mdao = new ManagerDao();
		manager.setManager_Issued_Email(request.getParameter("Manager_Issued_Email"));
		manager.setManager_Issue_password(request.getParameter("Manager_Issue_password"));
		
		
		manager = mdao.managerLogin(manager);	
//		request.setAttribute("manager", manager);
		
		//session 객체선언
		HttpSession session = request.getSession();
		//세션에 저장하기
		session.setAttribute("manager", manager);
		
		/* 겟 test
		//ManagerAccountBean manager2 = (ManagerAccountBean)session.getAttribute("manager");
		//System.out.println("manager2.getManager_Issued_Email():"+manager2.getManager_Issued_Email());
		*/
		
		if(manager != null) {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/manager/accountManager.jsp");
		}else {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/manager/loginManager.jsp?login=false");
		}
		
		
		return forward;
	}

}
