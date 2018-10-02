package com.shopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.shopping.bean.UserBean;
import com.shopping.util.DbUtil;

public class UserDaoImpl implements UserDao {

	private Connection con;
	private ResultSet rs;
	private PreparedStatement pstm = null;
	DbUtil db = new DbUtil();

	// 用户登录
	@Override
	public boolean login(String username, String password) {
		// TODO Auto-generated method stub
		DbUtil db = new DbUtil();
		String sql = "select * from shopping_user where username=? and password=?";
		con = db.getConnect();
		int count = 0;
		try {
			// 加载sql语句
			pstm = con.prepareStatement(sql);
			pstm.setString(1, username);
			pstm.setString(2, password);
			// 执行sql语句
			rs = pstm.executeQuery();

			while (rs.next()) {
				count += 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.close(con, pstm, rs);
		}
		if (count == 0) {
			return false;
		} else {
			return true;
		}
	}

	// 用户注册
	@Override
	public boolean register(UserBean userBean) {
		// TODO Auto-generated method stub
		
		con = db.getConnect();
		String sql = "INSERT INTO shopping_user (shopping_user.username,shopping_user.`password`,shopping_user.e_mail) VALUES(?,?,?);";
		try {
			pstm = con.prepareStatement(sql);
			
			pstm.setString(1, userBean.getUsername());
			pstm.setString(2, userBean.getPassword());
			pstm.setString(3, userBean.getEmail());
			int res = pstm.executeUpdate();
			if (res != 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.close(con, pstm);
		}

		return false;
	}

}
