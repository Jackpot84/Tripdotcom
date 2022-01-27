package com.koreait.manager.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.manager.dto.ManagerAccountBean;
import com.koreait.mybatis.SqlMapConfig;

public class ManagerDao {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public ManagerDao() {
		sqlsession = factory.openSession(true);
	}
	

	public ManagerAccountBean managerLogin(ManagerAccountBean manager) {
		ManagerAccountBean result = new ManagerAccountBean();
		result = sqlsession.selectOne("Manager.managerLogin", manager);
		return result;
	}


	public boolean managerJoin(ManagerAccountBean manager) {
		boolean result = false;
		
		int result_int = sqlsession.insert("Manager.managerJoin", manager);
		System.out.println("result_int:"+result_int);
		
		if(result_int == 1) {
			result = true;
		}
		
		return result;
	}
	
	
	
}
