package com.koreait.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;
import com.koreait.manager.action.AcountManagerIntoAction;
import com.koreait.manager.action.BookingListSearchAction;
import com.koreait.manager.action.InformationChangeAction;
import com.koreait.manager.action.ManagerJoinAction;
import com.koreait.manager.action.ManagerLoginAction;
import com.koreait.manager.action.ManagerLogoutAction;
import com.koreait.user.action.UserJoinAction;
import com.koreait.user.action.UserLoginAction;

@WebServlet("*.mg")
public class FrontControllerManager extends HttpServlet{

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
				case "/loginManager.mg":
					//중간관리자 회원가입
					forward = new ManagerJoinAction().execute(req, resp);
					break;	
				case "/accountManager.mg":
					//중간관리자 로그인
					forward = new ManagerLoginAction().execute(req, resp);
					break;
				case "/logoutManager.mg":
					//중간관리자 로그아웃
					forward = new ManagerLogoutAction().execute(req, resp);
					break;
				case "/loginManager_back.mg":
					//어카운트 화면에 로그인 없이 바로진입
					forward = new ActionForward();
					forward.setRedirect(true);
					forward.setPath(req.getContextPath()+"/app/admin/manager/loginManager.jsp");
					break;
				case "/joinManager_togo.mg":
					//로그인 화면에서 회원가입 클릭
					forward = new ActionForward();
					forward.setRedirect(true);
					forward.setPath(req.getContextPath()+"/app/admin/manager/joinManager.jsp");
					break;
				case "/loginManager_togo.mg":
					//회원가입 화면에서 로그인 클릭
					forward = new ActionForward();
					forward.setRedirect(true);
					forward.setPath(req.getContextPath()+"/app/admin/manager/loginManager.jsp");
					break;
				case "/accountManager_in.mg":
					//마이페이지 화면에서 드랍다운(nav) 마이페이지 클릭
					//사이드바에서 마이페이지 클릭
					forward = new AcountManagerIntoAction().execute(req, resp);
					break;
				/*case "/bookingList_search.mg":
					//예약목록에서 검색클릭
					forward = new BookingListSearchAction().execute(req, resp);
					break;*/
				case "/informationChange.mg":
					//accountManager페이지에서 관리자정보수정 팝업->수정버튼 클릭
					forward = new InformationChangeAction().execute(req, resp);
					break;
					
				//사이드바
				/*case "/hotelCategoryHead.mg":
					//사이드바에서 예약조회클릭
					forward = new ActionForward();
					forward.setRedirect(false);
					forward.setPath(req.getContextPath()+"/app/admin/manager/managerAdd/hotelCategoryHead.jsp");
					break;*/
				case "/cancleList.mg":
					//사이드바에서 예약조회클릭
					forward = new ActionForward();
					forward.setRedirect(false);
					forward.setPath(req.getContextPath()+"/app/admin/manager/cancleList.jsp");
					break;	
				case "/bookingList.mg":
					//사이드바에서 예약조회클릭
					//DB조회가 필요한화면
					forward = new BookingListSearchAction().execute(req, resp);
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

