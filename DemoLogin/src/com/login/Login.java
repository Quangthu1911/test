package com.login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.model.LoginEntry1;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public Login() {
        super();
    }
    public void init(ServletConfig config) throws ServletException {
		super.init(config);
		List<LoginEntry1> entries=new ArrayList<LoginEntry1>();
		entries.add(new LoginEntry1("Anh","123"));
		entries.add(new LoginEntry1("Joe","456"));
		entries.add(new LoginEntry1("Long","789"));

		getServletContext().setAttribute("entries", entries);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<LoginEntry1> entries=(List<LoginEntry1>)getServletContext().getAttribute("entries");
		String name=request.getParameter("name");
		String pass=request.getParameter("pass");
		boolean check=true;
		for(int i=0;i<entries.size();i++)
		{
			
			LoginEntry1 entry=entries.get(i);
			if(name.equals(entry.getName().trim())&&pass.equals(entry.getPass().trim()))
			{
				response.getWriter().print("login success");
				return;
			}
			
			else
			{
				check=false;
				
			}
		}
		if(check==false)
		{
			response.sendRedirect("login.jsp");
		}
	}
	
}
