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
 * Servlet implementation class selectAllGoodsServlet
 */
@WebServlet("/selectAllGoodsServlet")
public class selectAllGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectAllGoodsServlet() {
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
		//��������
		//��������
		GoodsService gs = new GoodsService();
		try {
			//****************��ҳ-������ҳ��ҳ��*********************
			int pagesize = 6;
			int sum = gs.getTotalPageService(pagesize);
			request.setAttribute("sum",sum);

			//****************��ҳ-ҳ��*********************
			//*******************��ҳ-��ѯÿҳ��ʾ����*************************
			int current = Integer.parseInt(request.getParameter("current"));
			ArrayList<Goods> al = gs.selectPageService(current, pagesize);
			request.setAttribute("current", current);
			if(current<1||current>sum){
				request.setAttribute("msg", "��ǰҳ������");
			}else{
				//al = gs.selectAllGoodsService();
				if(al==null){	
				}else{
					request.setAttribute("list", al);
				}
			}
			//*******************��ҳ-��ѯÿҳ��ʾ����*************************
			request.getRequestDispatcher("portfolio-3.jsp").forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
