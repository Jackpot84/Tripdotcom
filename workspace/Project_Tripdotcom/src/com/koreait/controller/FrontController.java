package com.koreait.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;
import com.koreait.user.action.UserJoinAction;
import com.koreait.user.action.UserLoginAction;

@WebServlet("*.do")
public class FrontController extends HttpServlet{
	
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
		
		switch(requestURI) {
			//회원가입 db 인서트
			case "/joinUser.do":
				forward = new UserJoinAction().execute(req, resp);
				break;
			//로그인 db조회
			case "/userLogin.do":
				forward = new UserLoginAction().execute(req, resp);
				break;
			case "/goUserLogin.do":
				//로그인화면으로 이동
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/app/admin/user/login_view.jsp");
				break;
			case "/goReservationAll.do":
				//내 예약 페이지로 이동
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath(req.getContextPath()+"/app/admin/user/reservationAll.jsp");
				break;
			case "/goMyFavorite.do":
				//즐겨찾기 페이지로 이동
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath(req.getContextPath()+"/app/admin/user/myFavorite.jsp");
				break;
			case "/goMyTripcoin.do":
				//트립코인 페이지로 이동
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath(req.getContextPath()+"/app/admin/user/myTripcoin.jsp");
				break;
			case "/goMyInformation.do":
				//내정보 페이지로 이동
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath(req.getContextPath()+"/app/admin/user/myInformation.jsp");
				break;
			case "/goMyAccount.do":
				//계정및비밀번호 페이지로 이동
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath(req.getContextPath()+"/app/admin/user/myAccount.jsp");
				break;
			}
		
		
		
		
		
		
		
		
		// 일괄처리
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// redirect 방식
				resp.sendRedirect(forward.getPath());
				System.out.println("두번째 리다이렉트");
			} else {
				// forward방식
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
				System.out.println("두번째 포워드");
			}
		}else {
			System.out.println("forward가 null");
		}
		
	}
}
