package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;
import com.koreait.user.dto.UserBean;

public class UserInfoUpdateAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDao udao = new UserDao();
		HttpSession session = request.getSession();
		UserBean user =(UserBean)session.getAttribute("user");
		
		user.setUser_lastname(request.getParameter("user_lastname"));
		user.setUser_firstname(request.getParameter("user_firstname"));
//		user.setUser_birth(request.getParameter("user_birth"));
		System.out.println(request.getParameter("user_birth"));
//		user.setUser_email(request.getParameter("user_email"));
		System.out.println(request.getParameter("gender"));
		user.setUser_gender(request.getParameter("gender"));
		
		udao.userInfoUpdate(user);
		
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/goMyInformation.do");
		
		return forward;
	}
	
}
