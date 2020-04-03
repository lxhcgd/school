/**
  * <p>Title: BankService.java</p>
　 * <p>Description: </p>
　 * <p>Copyright: Copyright (c) 2020</p>
　 * <p>Company: </p>
　 * @author wushewng
　 * @date 2020年3月31日
　 * @version 1.0
 */
package com.icss.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.icss.dao.BankDao;
import com.icss.vo.Bank;
import com.icss.vo.Goods;

/**
 * <p>Title: BankService</p>
　 * <p>Description: </p>
　 * @author liuxin
　 * @date 2020年3月31日
 */
public class BankService {
	public ArrayList<Bank> selectAllBankService() throws ClassNotFoundException, SQLException{
		BankDao bank = new BankDao();
		return bank.selectAllBankDao();
	}
	public ArrayList<Bank> selectBankOfJavaEEService() throws ClassNotFoundException, SQLException{
		BankDao bank = new BankDao();
		return bank.selectAllBankOfJavaEEDao();
	}
	public ArrayList<Bank> selectBankOfJspService() throws ClassNotFoundException, SQLException{
		BankDao bank = new BankDao();
		return bank.selectAllBankOfJspDao();
	}public ArrayList<Bank> selectBankOfOracleService() throws ClassNotFoundException, SQLException{
		BankDao bank = new BankDao();
		return bank.selectAllBankOfOracleDao();
	}
	public int selectCountsBankService() throws ClassNotFoundException, SQLException{
		BankDao bank = new BankDao();
		return bank.selectCountsBankDao();
	}
	public ArrayList<Bank> selectBankInfoService(int id) throws ClassNotFoundException, SQLException {
		BankDao bank = new BankDao();
		return bank.selectBankInfoDao(id);
	}

	public int getTotalPageService(int pagesize) throws ClassNotFoundException, SQLException {
		BankDao bank = new BankDao();
		return bank.getTotalPageDao(pagesize);
	}
	public ArrayList<Bank> selectPageService(int current, int pagesize) throws ClassNotFoundException, SQLException {
		BankDao bank = new BankDao();
		return bank.selectPageDao(current,pagesize);
	}
	

}
