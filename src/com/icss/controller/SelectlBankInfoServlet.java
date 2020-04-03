package com.icss.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icss.service.BankService;
import com.icss.vo.Bank;
import com.icss.vo.User;

/**
 * Servlet implementation class BankInfoServlet
 */
@WebServlet("/SelectlBankInfoServlet")
public class SelectlBankInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectlBankInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//���ж��Ƿ��½�����û��¼��ת����¼������е�¼����½�ɹ�֮����ת����ҳ
		String user = (String)request.getSession().getAttribute("username");
		System.out.println(user);
		if(user==null){
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			//��������
			Bank bank = new Bank();
			int id = Integer.parseInt(request.getParameter("bankid"));
			//System.out.println(id);
			/*��������*/
			BankService bs = new BankService();
			try {
				ArrayList<Bank> al = bs.selectBankInfoService(id);
				request.setAttribute("list", al);
				request.getRequestDispatcher("single-portfolio-2.jsp").forward(request, response);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
