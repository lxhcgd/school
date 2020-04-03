package com.icss.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.service.IdentService;
import com.icss.vo.Indent;

/**
 * Servlet implementation class InsertGoodsToIdentServlet
 */
@WebServlet("/InsertGoodsToIdentServlet")
public class InsertGoodsToIdentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertGoodsToIdentServlet() {
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
		//接收数据
		String username = (String) request.getSession().getAttribute("username");
		int goodsid = Integer.parseInt(request.getParameter("goodsid"));
		String iname = request.getParameter("name");
		//解决数据存储到数据库中乱码
		byte[] b =iname.getBytes("ISO-8859-1");
		String str = new String(b,"utf-8");
		//System.out.println(str+"哈哈哈哈哈");
		int inum = Integer.parseInt(request.getParameter("num"));
		int iprice = Integer.parseInt(request.getParameter("price"));
		String iimg = request.getParameter("img");
		//处理数据
		IdentService is = new IdentService();
		Indent ident;
		try {
			is.insertGoodsToIdentService(str,inum,iprice,iimg,goodsid,username);
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
