package com.koreait.managerAdd.dao;

	import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.managerAdd.dto.AccomodationCategoryDTO;
import com.koreait.managerAdd.dto.HotelsBean;
import com.koreait.managerAdd.dto.House_ownerBean;
import com.koreait.managerAdd.dto.KeeperBean;
import com.koreait.mybatis.SqlMapConfig;

	public class ManagerAddDAO {

		SqlSessionFactory factory = SqlMapConfig.getFactory();
		SqlSession sqlsession;
		
		public ManagerAddDAO() {
			sqlsession = factory.openSession(true);
		}

		
		public boolean register(AccomodationCategoryDTO accomo) {
			
			boolean result = false;
			
			if(sqlsession.insert("managerAdd.register", accomo)==1) {
				result = true;
			}
			
			return result;
		}


		public boolean informHotel(HotelsBean hotelinfo) {
			
			boolean result = false;
			
			if(sqlsession.insert("managerAdd.informHotel", hotelinfo)==1) {
				result = true;
			}
			
			return result;
		}


		public boolean informKeeper(KeeperBean keeper) {
			boolean result = false;
			
			if(sqlsession.insert("managerAdd.informKeeper", keeper)==1) {
				result = true;
			}
			
			return result;
		}


		public boolean informHouse(House_ownerBean houseown) {
			boolean result = false;
			
			if(sqlsession.insert("managerAdd.informHouse", houseown)==1) {
				result = true;
			}
			
			return result;
		}
		
		
}
