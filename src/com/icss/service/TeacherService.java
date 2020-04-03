/**
  * <p>Title: TeacherService.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年4月1日
　 * @version 1.0
 */
package com.icss.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.icss.dao.TeacherDao;
import com.icss.vo.Teacher;

/**
 * <p>Title: TeacherService</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年4月1日
 */
public class TeacherService {

	public ArrayList<Teacher> selectAllTeacherService() throws ClassNotFoundException, SQLException {
		TeacherDao td = new TeacherDao();
		return td.selectAllTeacherDao();
	}

	public ArrayList<Teacher> selecTeacherInfoByIdServce(int teacherid) throws ClassNotFoundException, SQLException {
		TeacherDao td = new TeacherDao();
		return td.selecTeacherInfoById(teacherid);
	}

}
