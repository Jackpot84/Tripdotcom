package com.koreait.index.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.index.dao.IndexDao;

public class HotelSearchAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		IndexDao idao = new IndexDao();
		
		 idao.searchHotel(request.getParameter("location"));
		
		forward.setPath(request.getContentType()+"/hotelSearchingList.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
