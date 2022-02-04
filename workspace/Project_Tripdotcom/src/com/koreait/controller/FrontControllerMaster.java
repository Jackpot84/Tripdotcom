package com.koreait.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

import com.koreait.master.action.MasterJoinAction;

import com.koreait.master.action.MasterNewJoinAction;
import com.koreait.user.action.UserJoinAction;
import com.koreait.user.action.UserLoginAction;

@WebServlet("*.mt")
public class FrontControllerMaster extends HttpServlet{

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
				case "/masterLogin.mt":
					forward = new MasterJoinAction().execute(req, resp);
					break;	
				case"/masterJoin.mt":
					forward = new MasterNewJoinAction().execute(req, resp);
					break;
				case"/masterLogin_back.mt":
					forward = new ActionForward();
					forward.setRedirect(true);
					forward.setPath(req.getContextPath()+"/app/admin/master/loginMaster.html");
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

