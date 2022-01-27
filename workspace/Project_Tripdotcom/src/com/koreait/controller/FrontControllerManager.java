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
import com.koreait.manager.action.ManagerJoinAction;
import com.koreait.manager.action.ManagerLoginAction;
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
				case "/loginManager_back.mg":
					//로그인 화면에서 회원가입 클릭
					forward = new ActionForward();
					forward.setRedirect(true);
					forward.setPath(req.getContextPath()+"/app/admin/manager/loginManager.jsp");
					break;
				case "/accountManager.mg":
					//중간관리자 로그인
					forward = new ManagerLoginAction().execute(req, resp);
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
				case "/accountManager_into.mg":
					//마이페이지 화면에서 드랍다운 마이페이지 클릭
					forward = new AcountManagerIntoAction().execute(req, resp);
					break;
				case "/bookingList.mg":
					//사이드바에서 예약조회클릭
					forward = new ActionForward();
					forward.setRedirect(false);
					forward.setPath(req.getContextPath()+"/app/admin/manager/bookingList.jsp");
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

