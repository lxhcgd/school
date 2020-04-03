/**
  * <p>Title: GoodsService.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年4月11日
　 * @version 1.0
 */
package com.icss.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.icss.dao.GoodsDao;
import com.icss.vo.Goods;

/**
 * <p>Title: GoodsService</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年4月11日
 */
public class GoodsService {
	public ArrayList<Goods> selectAllGoodsService()throws ClassNotFoundException, SQLException{
		GoodsDao gs = new GoodsDao();
		return gs.selectAllGoodsDao();
	}
	public ArrayList<Goods> selectGoodsInfoService(int id) throws ClassNotFoundException, SQLException {
		GoodsDao gs = new GoodsDao();
		return gs.selectGoodsInfoDao(id);
	}
	public int getTotalPageService(int pagesize) throws ClassNotFoundException, SQLException {
		GoodsDao gs = new GoodsDao();
		return gs.getTotalPageDao(pagesize);
	}
	public ArrayList<Goods>selectPageService(int current, int pagesize) throws ClassNotFoundException, SQLException {
		GoodsDao gs = new GoodsDao();
		return gs.selectPageDao(current,pagesize);
	}

}
