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
		System.out.println("进入到InsertGoodsOfSelectGoodsByIdtServlet.java");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//传递路径
		String url = request.getParameter("url");
		request.setAttribute("url", url);
		//插入数据之前，先判断用户是否登陆，获取用户名
		String user = (String)request.getSession().getAttribute("username");
		String iname = request.getParameter("name");
		//解决数据存储到数据库中乱码
		byte[] b =iname.getBytes("ISO-8859-1");
		String strUser = new String(b,"utf-8");
		//接受数据
		int goodsid = Integer.parseInt(request.getParameter("goodsid"));
		String name = request.getParameter("name");
		
		byte[] b1 =name.getBytes("ISO-8859-1");
		String name1 = new String(b1,"utf-8");
		
		
		
		int price = Integer.parseInt(request.getParameter("price"));
		int num = Integer.parseInt(request.getParameter("num"));
		String img = request.getParameter("img");
		
		//System.out.println(goodsid+"商品id1111111111");
		if(user==null){
			//????????????????????这块较为复杂，不实现了，登录成功后跳到首页手动找页面吧??????????实现了?????????????????
			//????????????????????这块较为复杂，不实现了，登录成功后跳到首页手动找页面吧???????????????????????????
			//????????????????????这块较为复杂，不实现了，登录成功后跳到首页手动找页面吧???????????????????????????
			//????????????????????这块较为复杂，不实现了，登录成功后跳到首页手动找页面吧???????????????????????????
			//????????????????????这块较为复杂，不实现了，登录成功后跳到首页手动找页面吧???????????????????????????
			//如果用户为空，则跳转到登陆界面进行登录，登陆成功之后，跳转到上次浏览的实战课程详细信息页？
			/*StringBuffer url = request.getRequestURL();
			System.out.println(url+"嘿嘿嘿嘿嘿");
			request.setAttribute("url", url);*/
			request.setAttribute("goodsid1", goodsid);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			
			//处理数据
			IdentService is = new IdentService();
			try {
				//接受通过商品ID查询到的该条商品全部信息
				/*ArrayList<Goods> al  = is.insertGoodsOfSelectGoodsByIdService(goodsid);
				if(al!=null){
					//查询到该条商品数据，如果不为空，接下来插入到购物车中
					request.setAttribute("list", al);
					request.getRequestDispatcher("checkout.jsp").forward(request, response);
					request.getRequestDispatcher("InsertGoodsToIdentServlet").forward(request, response);
				}*/
				
				/*Goods goods2  = is.insertGoodsOfSelectGoodsByIdService(goodsid,name,price,num,img,user);*/
				System.out.println("显示一下数据");
				System.out.println(name);
				System.out.println(num);
				System.out.println(price);
				System.out.println(goodsid);
				System.out.println(strUser);
				System.out.println(user);
				ArrayList<Goods> al = is.insertGoodsToIdentService(name1,num,price,img,goodsid,user);
				 System.out.println(al+"：返回数据是否为空？");
				if(al!=null){
					//查询到该条商品数据，如果不为空，接下来插入到购物车中
					request.setAttribute("list", al);
					System.out.println("跳转到购物车页");
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
