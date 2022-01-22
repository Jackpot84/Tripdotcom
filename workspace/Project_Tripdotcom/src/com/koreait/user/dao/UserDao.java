package com.koreait.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.SqlMapConfig;
import com.koreait.user.dto.UserBean;

public class UserDao {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserDao() {
		sqlsession = factory.openSession(true);
	}
	
	
	public boolean joinUser(String user_email, String user_pw) {
		boolean result = false;
		UserBean userbean = new UserBean();
		userbean.setUser_email(user_email);
		userbean.setUser_pw(user_pw);
		
		if(sqlsession.insert("User.join", userbean) == 1) {
			//조인 성공
			result = true;
		}else {
			result = false;
		}
		return result;	
	}


	public UserBean loginUser(UserBean user) {
		
		UserBean result = sqlsession.selectOne("User.login", user);
		
		return result;
	}
	
	
	
}
