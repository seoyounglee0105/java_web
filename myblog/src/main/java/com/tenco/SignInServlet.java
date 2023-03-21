package com.tenco;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signinservlet")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public SignInServlet() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post 작동함");
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		
		response.setContentType("application/x-www-form-urlencoded; charset=utf-8");
		
		PrintWriter printwr = response.getWriter();
		printwr.print("로그인되었습니다.");

		System.out.println(name);
		System.out.println(pw);
		
		
	}

}
