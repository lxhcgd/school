/**
  * <p>Title: TeacherDao.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年4月1日
　 * @version 1.0
 */
package com.icss.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.icss.util.DBUtil;
import com.icss.vo.Goods;
import com.icss.vo.Teacher;

/**
 * <p>Title: TeacherDao</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年4月1日
 */
public class TeacherDao {
	//查询所有团队大咖
	public ArrayList<Teacher> selectAllTeacherDao() throws ClassNotFoundException, SQLException {
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("select * from school_teacher");
		ResultSet rs = ps.executeQuery();
		ArrayList<Teacher> al = new ArrayList<Teacher>();
		while(rs.next()){
			Teacher teacher = new Teacher();
			teacher.setTeacherid(rs.getInt(1));
			teacher.setName(rs.getString(2));
			teacher.setTcoursename(rs.getString(3));
			teacher.setInfo(rs.getString(4));
			teacher.setImg(rs.getString(5));
			teacher.setTcoursename(rs.getString(6));
			al.add(teacher);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}
	public ArrayList<Teacher> selecTeacherInfoById(int teacherid) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("select distinct(teacherid),name,tcoursenum,info,img,tcoursename,goodsid from school_teacher where teacherid=?");
		ps.setInt(1, teacherid);
		ResultSet rs = ps.executeQuery();
		ArrayList<Teacher> al = new ArrayList<Teacher>();
		while(rs.next()){
			Teacher teacher = new Teacher();
			teacher.setTeacherid(rs.getInt(1));
			teacher.setName(rs.getString(2));
			teacher.setTcoursename(rs.getString(3));
			teacher.setInfo(rs.getString(4));
			teacher.setImg(rs.getString(5));
			teacher.setTcoursename(rs.getString(6));
			teacher.setGoodsid(rs.getInt(7));
			al.add(teacher);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}

}
