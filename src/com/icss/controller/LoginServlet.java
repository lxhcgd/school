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
		
		//��ȡ���ﳵ���ݲ�ͬ�û�����Ʒ����
		//String countCar =request.getParameter("CountCar");
		//System.out.println(countCar+"���ﳵ����");
		//request.setAttribute("CountCar", countCar);
		
		
		//����ʵս�γ�����Ϣҳservlet��goodsid
		String goodsid1 = request.getParameter("goodsid1");
		System.out.println(goodsid1+"����¼ҳ��Ʒid-��¼ҳ");
		//������һ��ҳ���url
		String url = request.getParameter("url");
		//��������²����url����ȷ��
		//System.out.println(url+"��¼url");
		//Ŀǰ���յ���һ��url
		//������յ��ĵ�ַurlΪ��,˵��������Ҫ��֤��ҳ��,����������
		//�����һ��ҳ�治Ϊ�գ�����һ��ҳ��������֤��ҳ�棬��½�ɹ�֮����ת����һ��ҳ��
		//System.out.println(url+"������");
		
		
		//��������
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//System.out.println(username);
		//��������
		UserService us = new UserService();	
		try {
			User user = us.userLoginService(username, password);
			if (user == null) {
				request.setAttribute("msg", "�û�����������������µ�¼");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			} else {
				// ��ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ�
				// ��ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ�
				// ��ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ���ʱ��½�ɹ�
				// ****************Cookie �򻯵�¼����ס����****************************
				// ���ռ�ס���븴ѡ��
				String che = request.getParameter("che");
				// System.out.println(che+"��������������");
				if (che != null) {
					// ����Cookie����
					Cookie usernameCookie = new Cookie("username", username);
					Cookie passwordCookie = new Cookie("password", password);
					// ����Cookie��Чʱ�䣬���ڱ��ش����У���ʱ��δ��Ч,Ĭ�ϼ�ס����60��
					usernameCookie.setMaxAge(60);
					passwordCookie.setMaxAge(60);
					// ʹCookie��Ч�����ڿͻ���
					response.addCookie(usernameCookie);
					response.addCookie(passwordCookie);
				}
				// ****************Cookie �򻯵�¼����ס����****************************
				// ***********************Session,��¼���ʿ��ƣ�ÿ�η����µ�ҳ��ʱ�ж��Ƿ����û��ǵ�½�ɹ���״̬**************************
				// ��ȡsession
				HttpSession session = request.getSession();
				// �������ǻʱ��,Ĭ��30����
				session.setMaxInactiveInterval(30 * 60);
				// ���û����浽session
				session.setAttribute("username", username);
				// ***********************Session,��¼���ʿ��ƣ�ÿ�η����µ�ҳ��ʱ�ж��Ƿ����û��ǵ�½�ɹ���״̬**************************
				
				
				if(url!=null&&!"".equals(url)){
					//������һҳ
					if(goodsid1!=null&&!"".equals(goodsid1)){
						String newurl = url.substring(url.lastIndexOf('/')+1);
						System.out.println(newurl+"�½�ȡ��url");
						request.getRequestDispatcher(newurl+"?goodsid="+goodsid1).forward(request, response);
					}
					
				}else{
					//��ת��ҳ
					/*request.getRequestDispatcher("load.jsp?CountCar"+countCar).forward(request, response);*/
					//��ȡ��ǰ�û����ﳵ����
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
