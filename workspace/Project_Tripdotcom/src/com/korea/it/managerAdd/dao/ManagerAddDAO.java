package com.korea.it.managerAdd.dao;

	import org.apache.ibatis.session.SqlSession;
	import org.apache.ibatis.session.SqlSessionFactory;

	import com.koreait.mybatis.SqlMapConfig;

	public class ManagerAddDAO {

		SqlSessionFactory factory = SqlMapConfig.getFactory();
		SqlSession sqlsession;
		
		public ManagerAddDAO() {
			sqlsession = factory.openSession(true);
		}
		
		
}
