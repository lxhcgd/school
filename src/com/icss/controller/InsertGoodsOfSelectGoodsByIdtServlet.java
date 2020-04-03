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
import com.icss.vo.Goods;

/**
 * Servlet implementation class insertGoodsToIdentServlet
 */
@WebServlet("/InsertGoodsOfSelectGoodsByIdtServlet")
public class InsertGoodsOfSelectGoodsByIdtServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertGoodsOfSelectGoodsByIdtServlet() {
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
		System.out.println("���뵽InsertGoodsOfSelectGoodsByIdtServlet.java");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//����·��
		String url = request.getParameter("url");
		request.setAttribute("url", url);
		//��������֮ǰ�����ж��û��Ƿ��½����ȡ�û���
		String user = (String)request.getSession().getAttribute("username");
		String iname = request.getParameter("name");
		//������ݴ洢�����ݿ�������
		byte[] b =iname.getBytes("ISO-8859-1");
		String strUser = new String(b,"utf-8");
		//��������
		int goodsid = Integer.parseInt(request.getParameter("goodsid"));
		String name = request.getParameter("name");
		
		byte[] b1 =name.getBytes("ISO-8859-1");
		String name1 = new String(b1,"utf-8");
		
		
		
		int price = Integer.parseInt(request.getParameter("price"));
		int num = Integer.parseInt(request.getParameter("num"));
		String img = request.getParameter("img");
		
		//System.out.println(goodsid+"��Ʒid1111111111");
		if(user==null){
			//????????????????????����Ϊ���ӣ���ʵ���ˣ���¼�ɹ���������ҳ�ֶ���ҳ���??????????ʵ����?????????????????
			//????????????????????����Ϊ���ӣ���ʵ���ˣ���¼�ɹ���������ҳ�ֶ���ҳ���???????????????????????????
			//????????????????????����Ϊ���ӣ���ʵ���ˣ���¼�ɹ���������ҳ�ֶ���ҳ���???????????????????????????
			//????????????????????����Ϊ���ӣ���ʵ���ˣ���¼�ɹ���������ҳ�ֶ���ҳ���???????????????????????????
			//????????????????????����Ϊ���ӣ���ʵ���ˣ���¼�ɹ���������ҳ�ֶ���ҳ���???????????????????????????
			//����û�Ϊ�գ�����ת����½������е�¼����½�ɹ�֮����ת���ϴ������ʵս�γ���ϸ��Ϣҳ��
			/*StringBuffer url = request.getRequestURL();
			System.out.println(url+"�ٺٺٺٺ�");
			request.setAttribute("url", url);*/
			request.setAttribute("goodsid1", goodsid);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			
			//��������
			IdentService is = new IdentService();
			try {
				//����ͨ����ƷID��ѯ���ĸ�����Ʒȫ����Ϣ
				/*ArrayList<Goods> al  = is.insertGoodsOfSelectGoodsByIdService(goodsid);
				if(al!=null){
					//��ѯ��������Ʒ���ݣ������Ϊ�գ����������뵽���ﳵ��
					request.setAttribute("list", al);
					request.getRequestDispatcher("checkout.jsp").forward(request, response);
					request.getRequestDispatcher("InsertGoodsToIdentServlet").forward(request, response);
				}*/
				
				/*Goods goods2  = is.insertGoodsOfSelectGoodsByIdService(goodsid,name,price,num,img,user);*/
				System.out.println("��ʾһ������");
				System.out.println(name);
				System.out.println(num);
				System.out.println(price);
				System.out.println(goodsid);
				System.out.println(strUser);
				System.out.println(user);
				ArrayList<Goods> al = is.insertGoodsToIdentService(name1,num,price,img,goodsid,user);
				 System.out.println(al+"�����������Ƿ�Ϊ�գ�");
				if(al!=null){
					//��ѯ��������Ʒ���ݣ������Ϊ�գ����������뵽���ﳵ��
					request.setAttribute("list", al);
					System.out.println("��ת�����ﳵҳ");
					request.getRequestDispatcher("SelectAllByUserIdToIndentServlet").forward(request, response);
					/*request.getRequestDispatcher("checkout.jsp").forward(request, response);*/
					/*request.getRequestDispatcher("A.jsp").forward(request, response);*/
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

}
