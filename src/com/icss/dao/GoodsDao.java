/**
  * <p>Title: GoodsDao.java</p>
�� * <p>Description: </p>
�� * <p>Copyright: Copyright (c) 2020</p>
�� * <p>Company: </p>
�� * @author wushewng
�� * @date 2020��4��11��
�� * @version 1.0
 */
package com.icss.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.icss.util.DBUtil;
import com.icss.vo.Goods;

/**
 * <p>Title: GoodsDao</p>
�� * <p>Description: </p>
�� * @author liuxin
�� * @date 2020��4��11��
 */
public class GoodsDao {
	//��ѯ������Ʒ
	public ArrayList<Goods> selectAllGoodsDao() throws ClassNotFoundException, SQLException{
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("select * from school_goods");
		ResultSet rs = ps.executeQuery();
		ArrayList<Goods> al = new ArrayList<Goods>();
		while(rs.next()){
			Goods goods = new Goods();
			goods.setGoodsid(rs.getInt(1));
			goods.setName(rs.getString(2));
			goods.setGoldprice(rs.getInt(3));
			goods.setPrice(rs.getInt(4));
			goods.setNum(rs.getInt(5));
			goods.setInfo(rs.getString(6));
			goods.setImg(rs.getString(7));
			al.add(goods);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}
	//��ѯ��Ʒ��Ϣ
	public ArrayList<Goods> selectGoodsInfoDao(int id) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				/*("select * from school_goods where goodsid=?");*/
				  ("select * from school_goods  where goodsid=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		ArrayList<Goods> al = new ArrayList<Goods>();
		while(rs.next()){
			Goods goods = new Goods();
			goods.setGoodsid(rs.getInt(1));
			goods.setName(rs.getString(2));
			goods.setGoldprice(rs.getInt(3));
			goods.setPrice(rs.getInt(4));
			goods.setNum(rs.getInt(5));
			goods.setInfo(rs.getString(6));
			goods.setImg(rs.getString(7));
			//goods.setName(rs.getString(8));
			al.add(goods);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}
	//��ҳ-ͳ��ҳ��
		public int getTotalPageDao(int pagesize) throws ClassNotFoundException, SQLException{
			PreparedStatement ps = DBUtil.getConnection().prepareStatement
					("select count(goodsid) c from school_goods");
			ResultSet rs = ps.executeQuery();
			//ͳ��ҳ��
			int total = 0;
			if(rs.next()){
				int num = rs.getInt("c");
				total = num%pagesize==0?num/pagesize:num/pagesize+1;
			}
			return total;
		}
		//��ҳ��ѯ
		public ArrayList<Goods> selectPageDao(int current,int pagesize) throws ClassNotFoundException, SQLException{
			//���統ǰҳΪ2��pagesize=3
			//�Ӳ�ѯrn<=2*6=6
			//���ղ�ѯ rn>3and rn=6
			PreparedStatement ps = DBUtil.getConnection().prepareStatement
					("select * from (select t.*,rownum rn from school_goods t where rownum<=?)where rn>?");
			ps.setInt(1, current*pagesize);
			ps.setInt(2, (current-1)*pagesize);
			ResultSet rs = ps.executeQuery();
			ArrayList<Goods> al = new ArrayList<Goods>();
			while(rs.next()){
				Goods goods = new Goods();
				goods.setGoodsid(rs.getInt(1));
				goods.setName(rs.getString(2));
				goods.setGoldprice(rs.getInt(3));
				goods.setPrice(rs.getInt(4));
				goods.setNum(rs.getInt(5));
				goods.setInfo(rs.getString(6));
				goods.setImg(rs.getString(7));
				goods.setTeacherid(rs.getInt(8));
				al.add(goods);
			}
			rs.close();
			ps.close();
			DBUtil.getConnection().close();
			return al;
			
			
		}

}
