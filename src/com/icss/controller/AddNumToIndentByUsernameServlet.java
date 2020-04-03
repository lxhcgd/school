package com.icss.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.service.IdentService;

/**
 * Servlet implementation class AddNumToIndentByUsernameServlet
 */
@WebServlet("/AddNumToIndentByUsernameServlet")
public class AddNumToIndentByUsernameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNumToIndentByUsernameServlet() {
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
		//接收信息
		String username= (String) request.getSession().getAttribute("username");
		System.out.println(username+"111111111111");
		int indentid = Integer.parseInt(request.getParameter("indentid"));
		System.out.println(indentid+"2222222222222");
		IdentService is = new IdentService();
		try {
			is.addNumToIndentByUsernameService(username,indentid);
			request.getRequestDispatcher("SelectAllByUserIdToIndentServlet").forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
