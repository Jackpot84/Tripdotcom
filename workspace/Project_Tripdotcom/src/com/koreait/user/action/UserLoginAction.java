package com.koreait.user.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;
import com.koreait.user.dto.ReservationPaymentsBean;
import com.koreait.user.dto.UserBean;

public class UserLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDao udao = new UserDao();
		UserBean user = new UserBean();
		ActionForward forward = new ActionForward();
		
		//로그인하기위한 파라미터값세팅
		user.setUser_email(request.getParameter("user_email"));
		user.setUser_pw(request.getParameter("user_pw"));
		
		user = udao.loginUser(user);
		
		request.setAttribute("reservationList", udao.getReservation(user.getUser_id()));
		System.out.println("예약목록담김");
		
		request.setAttribute("user", user);
		System.out.println("user담김");
		
		if(user != null) {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/user/reservationAll.jsp");
			System.out.println("포워드");
		}else {
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"app/admin/user/login_view.jsp?loginTest=false");
			System.out.println("리다이렉트");
		}
		return forward;
	}
}
