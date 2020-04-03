/**
  * <p>Title: IdentDao.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年4月11日
　 * @version 1.0
 */
package com.icss.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.icss.util.DBUtil;
import com.icss.vo.Goods;
import com.icss.vo.Indent;

/**
 * <p>Title: IdentDao</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年4月11日
 */
public class IdentDao {
	//添加到购物车,将商品信息插入到购物车
	public boolean insertGoodsToIdentDao(int id) throws ClassNotFoundException, SQLException{
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("insert into school_ident values(school_seq.nextval,gname,1,gnewprice,gimg) select gname,gnewprice,gimg where goods id =? ");
				/*("insert into school_indent values(school_seq.nextval,?,?,?,?)");*/
		ps.setInt(1, id);
		ResultSet rs  = ps.executeQuery();
		while(rs.next()){
			Indent ident = new Indent();
			ident.setIndentid(rs.getInt(1));
			ident.setName(rs.getString(2));
			ident.setNum(rs.getInt(3));
			ident.setPrice(rs.getInt(4));
			ident.setImg(rs.getString(5));
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return true;
	}
	/*插入到数据库之查询商品数据*/
	public Goods insertGoodsOfSelectGoodsByIdDao(int goodsid, String name, int price, int num, String img, String user) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("select * from school_goods where goodsid =? ");
		ps.setInt(1, goodsid);
		ResultSet rs  = ps.executeQuery();
		Goods goods = new Goods();
		while(rs.next()){
			
			goods.setGoodsid(rs.getInt(1));
			goods.setName(rs.getString(2));
			goods.setGoldprice(rs.getInt(3));
			goods.setPrice(rs.getInt(4));
			goods.setNum(rs.getInt(5));
			goods.setInfo(rs.getString(6));
			goods.setImg(rs.getString(7));
			goods.setTeacherid(rs.getInt(8));
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return goods;
	}
	public ArrayList<Goods> insertGoodsToIdentDao(String iname, int inum, int iprice, String iimg, String username, int goodsid) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("insert into school_indent values(school_seq.nextval,?,?,?,?,?,?)");
		ps.setString(1, iname);
		ps.setInt(2, inum);
		ps.setInt(3, iprice);
		ps.setString(4, iimg);
		ps.setInt(5, goodsid);
		ps.setString(6, username);
		//将插入数据返回*************
		ArrayList<Goods> al = new ArrayList<Goods>();
		Goods goods = new Goods();
		goods.setName(iname);
		goods.setNum(inum);
		goods.setPrice(iprice);
		goods.setImg(iimg);
		goods.setGoodsid(goodsid);
		al.add(goods);
		//将插入数据返回*************
		ps.executeUpdate();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}
	public ArrayList<Indent> selectAllByUserIdToIndentDao(String username) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("select * from school_indent where username=?");
		ps.setString(1, username);
		ResultSet rs  = ps.executeQuery();
		ArrayList<Indent> al = new ArrayList<Indent>();
		while(rs.next()){
			Indent ident = new Indent();
			ident.setIndentid(rs.getInt(1));
			ident.setName(rs.getString(2));
			ident.setNum(rs.getInt(3));
			ident.setPrice(rs.getInt(4));
			ident.setImg(rs.getString(5));
			ident.setGoodsid(rs.getInt(6));
			ident.setUsername(rs.getString(7));
			al.add(ident);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}
	//根据用户名计算该用户的购物车商品数量
	public int selectCountOfBUyCarByUsernameDao(String username) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("select count(indentid) c from school_indent where username=?");
		ps.setString(1, username);
		ResultSet rs  = ps.executeQuery();
		int num = 0;
		if(rs.next()){
			num = rs.getInt(1);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return num;
	}
	//购物车该商品数量加一
	public void addNumToIndentByUsernameDao(String username, int indentid) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("update school_indent set num=(num+1) where username=? and indentid =?");
		ps.setString(1, username);
		ps.setInt(2, indentid);
		ps.executeUpdate();
		ps.close();
		DBUtil.getConnection().close();
		
	}
	/**
	 *<p>Title: deleteFromIndentByIndentIdDao</p>
	 *<p>Description: </p>
	　* @param indentID
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 */
	public void deleteFromIndentByIndentIdDao(int indentID) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("delete from school_indent where INDENTID = ?");
		ps.setInt(1, indentID);
		ps.executeUpdate();
		ps.close();
		DBUtil.getConnection().close();
		
	}

}
