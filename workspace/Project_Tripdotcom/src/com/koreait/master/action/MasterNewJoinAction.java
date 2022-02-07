package com.koreait.master.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.master.dao.MasterDao;
import com.koreait.master.dto.Master_AdminDTO;

public class MasterNewJoinAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		Master_AdminDTO maddto = new Master_AdminDTO();
		maddto.setMaster_E_MAIL(request.getParameter("master_E_MAIL"));
		maddto.setMaster_pw(request.getParameter("master_pw"));
		
		MasterDao mdao = new MasterDao();
		
		if(mdao.Master_Join(maddto)) {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/master/master/accountMaster.jsp");
		}else {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/master/masterLogin.html?join=false");
		}
		
		return forward;
	}
}
