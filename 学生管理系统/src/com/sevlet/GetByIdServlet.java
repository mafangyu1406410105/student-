package com.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.imp.UsersDaoImp;
import com.whjg.Users;

public class GetByIdServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			//…Ë÷√±‡¬Î
			String userid = request.getParameter("userid");
			
			UsersDaoImp udi = new UsersDaoImp();
			Users u;
			try {
				u = udi.getById(Integer.parseInt(userid));
				request.setAttribute("u", u);
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		    request.getRequestDispatcher("update.jsp").forward(request, response);
				
			
	}

}
