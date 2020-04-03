/**
  * <p>Title: UserDao.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年3月30日
　 * @version 1.0
 */
package com.icss.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.icss.util.DBUtil;
import com.icss.vo.User;

/**
 * <p>Title: UserDao</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年3月30日
 */
public class UserDao {
	//用户登录判断
	public User userLoginDao(String username,String password) throws ClassNotFoundException, SQLException{
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("select * from school_user where username=? and password=? ");
		//预编译
		ps.setString(1, username);
		ps.setString(2, password);
		//将数据放到结果集中
		ResultSet rs = ps.executeQuery();
		User user = new User();
		while(rs.next()){
			
			user.setUsername(username);
			user.setPassword(password);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return user;
	}

	//验证用户名是否存在
		public boolean selectNameDao(String username) throws ClassNotFoundException, SQLException{
			PreparedStatement ps = DBUtil.getConnection().prepareStatement
					("select * from school_user where username = ?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			boolean  flag = false;
			while(rs.next()){
				flag=true;
			}
			rs.close();
			ps.close();
			DBUtil.getConnection().close();
			return flag;
		}

}
