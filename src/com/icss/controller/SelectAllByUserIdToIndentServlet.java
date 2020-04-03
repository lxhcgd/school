package com.icss.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.service.IdentService;
import com.icss.vo.Indent;

/**
 * Servlet implementation class SelectAllByUserIdToIndentServlet
 */
@WebServlet("/SelectAllByUserIdToIndentServlet")
public class SelectAllByUserIdToIndentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectAllByUserIdToIndentServlet() {
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
		//��������
		//��ҳ�Ĺ��ﳵ��Ϣ�������û�����ѯ���û������й��ﳵ��Ϣ
		String username = (String)request.getSession().getAttribute("username");
		//System.out.println(username);
		//��������
		IdentService is= new IdentService();
		ArrayList<Indent> al;
		try {
			al = is.selectAllByUserIdToIndentService(username);
			request.setAttribute("list", al);
			
			
			int countNum = is.selectCountOfBUyCarByUsernameService(username);
			System.out.println(countNum+"��ȡ���ﳵ����selectAllGoodsToIndexPageServlet.java");
			request.setAttribute("countNum", countNum);
			
			
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
