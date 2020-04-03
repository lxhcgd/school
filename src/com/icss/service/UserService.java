/**
  * <p>Title: UserService.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年3月30日
　 * @version 1.0
 */
package com.icss.service;

import java.sql.SQLException;

import com.icss.dao.UserDao;
import com.icss.vo.User;

/**
 * <p>Title: UserService</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年3月30日
 */
public class UserService {
	public User userLoginService(String username,String password) throws ClassNotFoundException, SQLException{
		UserDao ud = new UserDao();
		return ud.userLoginDao(username, password);
	}
	public boolean selectNameService(String username) throws ClassNotFoundException, SQLException {
		UserDao ud = new UserDao();
		return ud.selectNameDao(username);
	}

}
