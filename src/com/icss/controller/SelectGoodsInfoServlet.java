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
import com.icss.vo.Goods;

/**
 * Servlet implementation class GoodsInfoServlet
 */
@WebServlet("/SelectGoodsInfoServlet")
public class SelectGoodsInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectGoodsInfoServlet() {
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
		StringBuffer url = request.getRequestURL();
		//System.out.println(url+"�ٺٺٺٺ�");
		request.setAttribute("url", url);
		//��������
		int id = Integer.parseInt(request.getParameter("goodsid"));
		//�ɹ����id��
		//System.out.println(id+"SelectGoodsInfoServlet.java");
		//��������
		GoodsService gs = new GoodsService();
		try {
			//ͨ����Ʒ��Ϣid��ѯ����Ʒȫ����Ϣ
			ArrayList<Goods> al = gs.selectGoodsInfoService(id);
			if(al==null){
				
			}else{
				request.setAttribute("list", al);
				//ʵս�γ���ϸ��Ϣҳ
				request.getRequestDispatcher("single-product.jsp").forward(request, response);
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
