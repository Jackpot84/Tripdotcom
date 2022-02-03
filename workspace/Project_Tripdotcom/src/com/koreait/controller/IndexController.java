package com.koreait.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;
import com.koreait.index.action.HotelSearchAction;
@WebServlet("*.go")
public class IndexController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		System.out.println(requestURI);
		
		switch(requestURI) {
			case "/app/index/seo/hotelSearchingList.go":
				forward = new ActionForward();
				forward.setPath("/app/index/seo/hotelSearchingList.jsp");
				forward.setRedirect(false);
				break;
		
		}
		
		
		
		// 일괄처리
				if( forward != null ) {
					if( forward.isRedirect() ) {
						// redirect 방식
						resp.sendRedirect(forward.getPath());
					} else {
						// forward방식
						RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
						disp.forward(req, resp);
					}
				}else {
					System.out.println("forward가 null");
				}
	}
}
