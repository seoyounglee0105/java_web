package com.tenco.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginProc")
public class LoginProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginProc() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	// form의 method = "post" action = "http://localhost:8080/demo2/loginProc"
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email"); // name = "email"
		String password = request.getParameter("password"); // name = "password"
		String isRemember = request.getParameter("isRemember");
		String hobby = request.getParameter("hobby");
		// 다중 선택 기능이 있는 폼 요소의 값은 배열로 받기
		String[] likes = request.getParameterValues("like");
		
		System.out.println("email : " + email);
		System.out.println("password : " + password);
		System.out.println("isRemember : " + isRemember);
		System.out.println("hobby : " + hobby);
		// 방어적 코드
		if (likes != null) {
			for (String like : likes) {
				System.out.println("like : " + like);	
			}			
		}
		
	}

}
