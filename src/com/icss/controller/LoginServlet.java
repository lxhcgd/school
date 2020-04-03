package com.icss.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icss.service.IdentService;
import com.icss.service.UserService;
import com.icss.vo.User;
import com.sun.media.jfxmedia.events.NewFrameEvent;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		//获取购物车根据不同用户的商品数量
		//String countCar =request.getParameter("CountCar");
		//System.out.println(countCar+"购物车数量");
		//request.setAttribute("CountCar", countCar);
		
		
		//接收实战课程想信息页servlet的goodsid
		String goodsid1 = request.getParameter("goodsid1");
		System.out.println(goodsid1+"：登录页商品id-登录页");
		//接收上一个页面的url
		String url = request.getParameter("url");
		//正常情况下不输出url是正确的
		//System.out.println(url+"登录url");
		//目前接收到上一个url
		//如果接收到的地址url为空,说明不是我要验证的页面,正常往下走
		//如果上一个页面不为空，则上一个页面是我验证的页面，登陆成功之后跳转到上一个页面
		//System.out.println(url+"哈哈哈");
		
		
		//接受请求
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//System.out.println(username);
		//处理请求
		UserService us = new UserService();	
		try {
			User user = us.userLoginService(username, password);
			if (user == null) {
				request.setAttribute("msg", "用户名或密码错误，请重新登录");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			} else {
				// 此时登陆成功此时登陆成功此时登陆成功此时登陆成功此时登陆成功此时登陆成功此时登陆成功
				// 此时登陆成功此时登陆成功此时登陆成功此时登陆成功此时登陆成功此时登陆成功此时登陆成功
				// 此时登陆成功此时登陆成功此时登陆成功此时登陆成功此时登陆成功此时登陆成功此时登陆成功
				// ****************Cookie 简化登录，记住密码****************************
				// 接收记住密码复选框
				String che = request.getParameter("che");
				// System.out.println(che+"哈哈哈哈哈哈哈");
				if (che != null) {
					// 创建Cookie对象
					Cookie usernameCookie = new Cookie("username", username);
					Cookie passwordCookie = new Cookie("password", password);
					// 设置Cookie有效时间，存在本地磁盘中，此时还未生效,默认记住密码60秒
					usernameCookie.setMaxAge(60);
					passwordCookie.setMaxAge(60);
					// 使Cookie生效，存在客户端
					response.addCookie(usernameCookie);
					response.addCookie(passwordCookie);
				}
				// ****************Cookie 简化登录，记住密码****************************
				// ***********************Session,登录访问控制，每次访问新的页面时判断是否有用户是登陆成功的状态**************************
				// 获取session
				HttpSession session = request.getSession();
				// 设置最大非活动时间,默认30分钟
				session.setMaxInactiveInterval(30 * 60);
				// 将用户名存到session
				session.setAttribute("username", username);
				// ***********************Session,登录访问控制，每次访问新的页面时判断是否有用户是登陆成功的状态**************************
				
				
				if(url!=null&&!"".equals(url)){
					//返回上一页
					if(goodsid1!=null&&!"".equals(goodsid1)){
						String newurl = url.substring(url.lastIndexOf('/')+1);
						System.out.println(newurl+"新截取的url");
						request.getRequestDispatcher(newurl+"?goodsid="+goodsid1).forward(request, response);
					}
					
				}else{
					//跳转首页
					/*request.getRequestDispatcher("load.jsp?CountCar"+countCar).forward(request, response);*/
					//获取当前用户购物车数量
					/*IdentService is = new IdentService();
					int countNum = is.selectCountOfBUyCarByUsernameService(username);
					request.setAttribute("countNum", countNum);*/
					request.getRequestDispatcher("load.jsp").forward(request, response);
				}
				
				
				
				
				
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
