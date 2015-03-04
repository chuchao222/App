package com.tip.product.app.user;

import java.io.IOException;
import java.sql.Array;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tip.product.app.ibatis.SqlClient;

public class UserDaoImpl implements IUserDao {

	@Override
	public List getUserList() {
		List list = new ArrayList();
		 try {
			 
			list=SqlClient.getInstance().queryForList("get_user_list");
			for (int i=0; i<list.size();i++){
				System.out.println(list.get(i));
			}
		
		 } catch (SQLException e) {
			 
			e.printStackTrace();
		} catch (IOException e) {
			 
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		
	}


}
