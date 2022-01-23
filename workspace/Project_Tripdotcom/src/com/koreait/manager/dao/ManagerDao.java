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
		System.out.println(result.getManager_Issued_Email()+2);
		result = sqlsession.selectOne("Manager.managerLogin", manager);
		System.out.println(result.getManager_Issued_Email());
		return result;
	}
}
