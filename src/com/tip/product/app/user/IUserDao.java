package com.tip.product.app.user;

import java.util.List;

public interface IUserDao {

	
	public List getUserList();
	
	public void saveUser(User user);
}
