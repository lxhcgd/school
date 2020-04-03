package com.icss.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.service.GoodsService;
import com.icss.service.IdentService;
import com.icss.vo.Goods;

/**
 * Servlet implementation class selectAllGoodsToIndexPageServlet
 */
@WebServlet("/selectAllGoodsToIndexPageServlet")
public class selectAllGoodsToIndexPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectAllGoodsToIndexPageServlet() {
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
		String username = (String) request.getSession().getAttribute("username");
		
		
		
		
		
		//System.out.println(countNum+"获取购物车数量selectAllGoodsToIndexPageServlet.java");
		//接受数据
		//处理数据
		IdentService is = new IdentService();
		GoodsService gs = new GoodsService();
		try {
			ArrayList<Goods> al = gs.selectAllGoodsService();
			request.setAttribute("list", al);
			if(al==null){
				
			}else{
				request.setAttribute("list", al);
				int countNum = is.selectCountOfBUyCarByUsernameService(username);
				System.out.println(countNum+"获取购物车数量selectAllGoodsToIndexPageServlet.java");
				request.setAttribute("countNum", countNum);
				request.getRequestDispatcher("index.jsp").forward(request, response);	
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
