package com.koreait.master.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.manager.dto.ManagerAccountBean;
import com.koreait.master.dto.Master_AdminDTO;
import com.koreait.mybatis.SqlMapConfig;

public class MasterDao {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public MasterDao() {
		sqlsession = factory.openSession(true);
	}
	

	public Master_AdminDTO managerLogin(Master_AdminDTO master) {
		Master_AdminDTO result = new Master_AdminDTO();
		result = sqlsession.selectOne("Manager.masterLogin", master);
		return result;
	}


	public boolean Master_Join(Master_AdminDTO master) {
		boolean result = false;
		
		int result_int = sqlsession.insert("Master.masterJoin", master);
		System.out.println("result_int:"+result_int);
		
		if(result_int == 1) {
			result = true;
		}
		
		return result;
	}
	
	
	public boolean informationChange(Master_AdminDTO master) {
		boolean result = false;

		int result_int  = sqlsession.update("Master.informationChange", master);

		if(result_int == 1) {
			result = true;
		}
		
		return result;
	}
	
	
	
	
	
}
