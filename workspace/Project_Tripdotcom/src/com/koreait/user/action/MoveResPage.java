package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;
import com.koreait.user.dto.UserBean;

public class MoveResPage implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDao udao = new UserDao();
		UserBean user = new UserBean();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		user = (UserBean)session.getAttribute("user");
		System.out.println(user.getUser_id());
		//토탈예약
		int totalCnt = udao.getReservationCount(user.getUser_id()); 
		//페이징 처리
		
		//현재 넘겨받은 페이지
		String temp = request.getParameter("page");
		int page = 0;
		//삼항연산자
		page = temp == null ? 1: Integer.parseInt(temp);
		//페이징 처리 사이즈
		int pageSize = 10;
		// 1페이지 endRow = 10, 4페이지 endRow = 40 
		int endRow = page * 10;
		//1페이지 startRow = 1, 4페이지 startRow = 31
		int startRow = endRow-9;
		// [1][2]...[10] 에서의 스타트페이지= [1] /  [21],[22],...[30] 에서의 스타트페이지 = [21]
		int startPage = (page-1)/pageSize*pageSize +1;
		// [1][2]...[10] 에서의 앤드페이지= [10] /  [21],[22],...[30] 에서의 앤드페이지 = [30]
		int endPage = startPage + pageSize -1;
		
		int totalPage = (totalCnt - 1)/pageSize +1;
		
		endPage = endPage > totalPage ? totalPage : endPage;
		
		session.setAttribute("totalPage", totalPage);
		session.setAttribute("nowPage", page);
		session.setAttribute("startPage",startPage);
		session.setAttribute("endPage", endPage);
		
		
		session.setAttribute("getBoardCount",totalCnt);
		session.setAttribute("resList", udao.getResList(startRow,endRow,user.getUser_id()));
	
		
		
		
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
