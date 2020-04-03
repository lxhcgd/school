/**
  * <p>Title: BankDao.java</p>
�� * <p>Description: </p>
�� * <p>Copyright: Copyright (c) 2020</p>
�� * <p>Company: </p>
�� * @author wushewng
�� * @date 2020��3��31��
�� * @version 1.0
 */
package com.icss.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.icss.util.DBUtil;
import com.icss.vo.Bank;
import com.icss.vo.Goods;

/**
 * <p>Title: BankDao</p>
�� * <p>Description: </p>
�� * @author liuxin
�� * @date 2020��3��31��
 */
public class BankDao {
	//��ѯ�������
	public ArrayList<Bank> selectAllBankDao() throws ClassNotFoundException, SQLException{
		PreparedStatement ps = new DBUtil().getConnection().prepareStatement
				("select * from school_bank");
		ArrayList<Bank> al = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			Bank bank = new Bank();
			bank.setBankid(rs.getInt(1));
			bank.setName(rs.getString(2));
			bank.setInfo(rs.getString(3));
			bank.setPath(rs.getString(4));
			bank.setImg(rs.getString(5));
			al.add(bank);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}
	//��ѯJAVAEE���
	public ArrayList<Bank> selectAllBankOfJavaEEDao() throws ClassNotFoundException, SQLException{
		PreparedStatement ps = new DBUtil().getConnection().prepareStatement
				("select * from school_bank where type = 'javaee' ");
		ArrayList<Bank> al = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			Bank bank = new Bank();
			bank.setBankid(rs.getInt(1));
			bank.setName(rs.getString(2));
			bank.setInfo(rs.getString(3));
			bank.setPath(rs.getString(4));
			bank.setImg(rs.getString(5));
			al.add(bank);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}
	//��ѯJSP���
		public ArrayList<Bank> selectAllBankOfJspDao() throws ClassNotFoundException, SQLException{
			PreparedStatement ps = new DBUtil().getConnection().prepareStatement
					("select * from school_bank where type = 'jsp' ");
			ArrayList<Bank> al = new ArrayList<>();
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Bank bank = new Bank();
				bank.setBankid(rs.getInt(1));
				bank.setName(rs.getString(2));
				bank.setInfo(rs.getString(3));
				bank.setPath(rs.getString(4));
				bank.setImg(rs.getString(5));
				al.add(bank);
			}
			rs.close();
			ps.close();
			DBUtil.getConnection().close();
			return al;
		}

	// ��ѯOracle���
	public ArrayList<Bank> selectAllBankOfOracleDao() throws ClassNotFoundException, SQLException {
		PreparedStatement ps = new DBUtil().getConnection()
				.prepareStatement("select * from school_bank where type = 'oracle' ");
		ArrayList<Bank> al = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Bank bank = new Bank();
			bank.setBankid(rs.getInt(1));
			bank.setName(rs.getString(2));
			bank.setInfo(rs.getString(3));
			bank.setPath(rs.getString(4));
			bank.setImg(rs.getString(5));
			al.add(bank);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}
	//��ѯ�������
	public int selectCountsBankDao() throws ClassNotFoundException, SQLException{
		PreparedStatement ps = DBUtil.getConnection().prepareStatement
				("select count(bankid) c from school_bank");
		ResultSet rs = ps.executeQuery();
		int num = 0;
		if(rs.next()){
			num = rs.getInt(1);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return num;
	}
	//����Ʒ��Ϣ
	public ArrayList<Bank> selectBankInfoDao(int id) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = new DBUtil().getConnection()
				.prepareStatement("select * from school_bank where bankid=?");
		ArrayList<Bank> al = new ArrayList<>();
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Bank bank = new Bank();
			bank.setBankid(rs.getInt(1));
			bank.setName(rs.getString(2));
			bank.setInfo(rs.getString(3));
			bank.setPath(rs.getString(4));
			bank.setImg(rs.getString(5));
			bank.setType(rs.getString(6));
			al.add(bank);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}

	// ��ҳ-ͳ��ҳ��
	public int getTotalPageDao(int pagesize) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = DBUtil.getConnection().prepareStatement("select count(bankid) c from school_bank");
		ResultSet rs = ps.executeQuery();
		// ͳ��ҳ��
		int total = 0;
		if (rs.next()) {
			int num = rs.getInt("c");
			total = num % pagesize == 0 ? num / pagesize : num / pagesize + 1;
		}
		return total;
	}

	public ArrayList<Bank> selectPageDao(int current, int pagesize) throws ClassNotFoundException, SQLException {
		PreparedStatement ps = new DBUtil().getConnection().prepareStatement
				("select * from (select t.*,rownum rn from school_bank t where rownum<=?)where rn>?");
		ps.setInt(1, current*pagesize);
		ps.setInt(2, (current-1)*pagesize);
		ArrayList<Bank> al = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			Bank bank = new Bank();
			bank.setBankid(rs.getInt(1));
			bank.setName(rs.getString(2));
			bank.setInfo(rs.getString(3));
			bank.setPath(rs.getString(4));
			bank.setImg(rs.getString(5));
			al.add(bank);
		}
		rs.close();
		ps.close();
		DBUtil.getConnection().close();
		return al;
	}
		

}
