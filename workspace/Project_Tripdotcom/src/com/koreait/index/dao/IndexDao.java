package com.koreait.index.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.SqlMapConfig;

public class IndexDao {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public IndexDao() {
		sqlsession = factory.openSession(true);
	}

	public void searchHotel(String location) {
		sqlsession.selectOne("Index.searchHotel", location);
	}
	
	
}
