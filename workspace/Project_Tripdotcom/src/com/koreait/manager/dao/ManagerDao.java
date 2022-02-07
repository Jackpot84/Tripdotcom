package com.koreait.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.manager.dto.BookingListBean;
import com.koreait.manager.dto.BookingListSearchBean;
import com.koreait.manager.dto.ManagerAccountBean;
import com.koreait.mybatis.SqlMapConfig;

public class ManagerDao {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public ManagerDao() {
		sqlsession = factory.openSession(true);
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
	
	public ManagerAccountBean managerLogin(ManagerAccountBean manager) {
		ManagerAccountBean result = new ManagerAccountBean();
		result = sqlsession.selectOne("Manager.managerLogin", manager);
		return result;
	}
	
	public boolean informationChange(ManagerAccountBean manager) {
		boolean result = false;

		int result_int  = sqlsession.update("Manager.informationChange", manager);

		if(result_int == 1) {
			result = true;
		}
		return result;
	}

	public List<BookingListBean> bookingListRead(String manager_Email) {
	    List<BookingListBean> booking_List = sqlsession.selectList("Manager.bookingList", manager_Email);
		return booking_List;
	}
	
	/*public BookingListBean bookingListRead(BookingListBean bookingList) {
		BookingListBean result = new BookingListBean();
		System.out.println("result:"+result);
		result = sqlsession.selectOne("Manager.bookingList", bookingList);
		return result;
	}*/
	
}


/*
 * 22.02.05 이전 작업들 혹시몰라 남겨둠
//	public BookingListSearchBean bookingListSearch(BookingListSearchBean bookLSBean) {
//		BookingListSearchBean result = new BookingListSearchBean();
//		result = sqlsession.selectOne("Manager.bookingListSearch", bookLSBean);
//		return result;
//	}
*/