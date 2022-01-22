package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;
import com.koreait.user.dto.UserBean;

public class UserLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDao udao = new UserDao();
		UserBean user = new UserBean();
		ActionForward forward = new ActionForward();
		
		user.setUser_email(request.getParameter("user_email"));
		user.setUser_pw(request.getParameter("user_pw"));
		
		user = udao.loginUser(user);
		
		request.setAttribute("user", user);

		if(user != null) {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/user/reservationAll.jsp");
		}else {
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"app/admin/user/login_view.jsp?loginTest=false");
		}
		
		return forward;
	}
}
