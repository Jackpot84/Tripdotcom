package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;
import com.koreait.user.dto.UserBean;

public class GetCoinListAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDao udao = new UserDao();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		UserBean user =(UserBean)session.getAttribute("user");
		
		if(request.getParameter("tab")==null) {
			request.setAttribute("useTripCoin", udao.getUseCoinList(user.getUser_id()));
		}else {
		switch(request.getParameter("tab")) {
			case "one":
				request.setAttribute("useTripCoin", udao.getUseCoinList(user.getUser_id()));
				break;
			case "two":
				request.setAttribute("chargeTripCoin", udao.getChargeCoinList(user.getUser_id()));
				break;
			}
		}
		
		
		forward.setPath(request.getContextPath()+"/app/admin/user/myTripcoin.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
}
