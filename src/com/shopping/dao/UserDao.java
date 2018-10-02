package com.shopping.dao;

import com.shopping.bean.UserBean;

public interface UserDao {
	
	public boolean login(String username, String password);

	public boolean register(UserBean userBean);
}
