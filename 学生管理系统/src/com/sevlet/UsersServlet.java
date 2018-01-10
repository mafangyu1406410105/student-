package com.sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.imp.UsersDaoImp;
import com.whjg.Users;

public class UsersServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			//±‡¬Î
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			request.setCharacterEncoding("utf-8");
			
			String username = request.getParameter("username");
			String userpass = request.getParameter("userpass");
			
			if(username.equals("¬Ì∑º”Ò") && userpass.equals("123")){
				request.setAttribute("username", username);
				request.getRequestDispatcher("list.jsp").forward(request, response);
				
			}else{
				
				System.out.println("”√ªß√˚√‹¬Î¥ÌŒÛ£¨«Î÷ÿ ‘");
				response.sendRedirect("index.jsp");
			
			}
			/*UsersDaoImp bdi = new UsersDaoImp();
			Users sc = new Users();
			sc.setUsername(username);
			sc.setUserpass(userpass);*/
			
			/*try {
				boolean flag = bdi.checklogin(sc);
				if(flag==true){
					
				}else{
					
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
	}
}
