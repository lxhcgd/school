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
 * Servlet implementation class DeleteFromIndentByIndentIdServlet
 */
@WebServlet("/DeleteFromIndentByIndentIdServlet")
public class DeleteFromIndentByIndentIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFromIndentByIndentIdServlet() {
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
		//接收当前购物车中的该商品的ID
		System.out.println("判断是否进入DeleteFromIndentByIndentIdServlet.java");
		int indentID = Integer.parseInt(request.getParameter("indentid"));
		System.out.println(indentID+":啦啦啦啦购物车商品ID");
		IdentService is = new IdentService();
		try {
			is.deleteFromIndentByIndentIdService(indentID);
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
