package com.koreait.manager.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.manager.dao.ManagerDao;
import com.koreait.manager.dto.ManagerAccountBean;

public class ManagerJoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		ManagerAccountBean manager = new ManagerAccountBean();
		manager.setManager_Issued_Email(request.getParameter("Manager_Issued_Email"));
		manager.setManager_Issue_password(request.getParameter("Manager_Issue_password"));
		
		ManagerDao mdao = new ManagerDao();
		
		if(mdao.managerJoin(manager)) {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/manager/loginManager.jsp");
		}else {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/manager/joinManager.jsp?join=false");
		}
		
		return forward;
	}

}
