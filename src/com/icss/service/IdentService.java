/**
  * <p>Title: IdentService.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年4月12日
　 * @version 1.0
 */
package com.icss.service;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.tomcat.dbcp.dbcp.DbcpException;

import com.icss.dao.IdentDao;
import com.icss.util.DBUtil;
import com.icss.vo.Goods;
import com.icss.vo.Indent;

/**
 * <p>Title: IdentService</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年4月12日
 */
public class IdentService {
	public boolean insertGoodsToIdentService(int goodsid) throws ClassNotFoundException, SQLException{
		IdentDao id = new IdentDao();
		return id.insertGoodsToIdentDao(goodsid);
	}


/*	public Goods insertGoodsOfSelectGoodsByIdService(int goodsid, String name, int price, int num, String img,String user) throws ClassNotFoundException, SQLException {
		IdentDao id = new IdentDao();
		return id.insertGoodsOfSelectGoodsByIdDao(goodsid,name,price,num,img,user);
	}
*/
	public ArrayList<Goods> insertGoodsToIdentService(String iname, int inum, int iprice, String iimg, int goodsid, String username) throws ClassNotFoundException, SQLException {
		IdentDao id = new IdentDao();
		return id.insertGoodsToIdentDao(iname,inum,iprice,iimg,username,goodsid);
	}
	public ArrayList<Indent> selectAllByUserIdToIndentService(String username) throws ClassNotFoundException, SQLException {
		IdentDao id = new IdentDao();
		return id.selectAllByUserIdToIndentDao(username);
	}

	public int selectCountOfBUyCarByUsernameService(String username) throws ClassNotFoundException, SQLException {
		IdentDao id = new IdentDao();
		return id.selectCountOfBUyCarByUsernameDao(username);
	}
	public void addNumToIndentByUsernameService(String username, int indentid) throws ClassNotFoundException, SQLException {
		IdentDao id = new IdentDao();
		id.addNumToIndentByUsernameDao(username,indentid);
		
	}
	public void deleteFromIndentByIndentIdService(int indentID) throws ClassNotFoundException, SQLException {
		IdentDao id = new IdentDao();
		id.deleteFromIndentByIndentIdDao(indentID);
	}

}
