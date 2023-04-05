package com.tenco.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/inc")
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IndexController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 쿼리 스트링 <- 이게 더 정확한 용어
		
		// http://localhost:8080/demo10/inc?name=홍길동&pw=1234
		String userName = request.getParameter("name");
		String pw = request.getParameter("pw");
		System.out.println(userName);
		System.out.println(pw);
		
		// GET 방식
		// 콘솔 창에서는 인코딩 표준을 설정하지 않아도 한글이 깨지지 않음
		// GET 방식에서는 request.setCharacterEncoding("UTF-8");을 빼는 것이 적절함 (불필요하니까)
		// 응답 시에는 인코딩 표준과 적절한 MIME 타입을 설정하지 않으면 한글이 깨짐
	
//		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		out.print(userName + "<br>");
//		out.print(pw);
		
		// 구분하기 
		// path : URI 개념 (URL) :: sendredirect
		// docBase : 폴더 경로 -> 루트 경로 : webapp -> WEB-INF index.jsp :: RequestDispatcher
		
		// 보안 상, 바로 접근할 수 없어서 forward 방식으로 처리
		// 항상 컨트롤러를 통해 진입
		 request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("userName");
		String pw = request.getParameter("pw");
		System.out.println(userName);
		System.out.println(pw);
		
		// POST 방식
		// 콘솔 창에서도 인코딩 표준을 설정하지 않으면 request로 들어온 값의 한글이 깨짐
		// 응답 시에는 인코딩 표준과 적절한 MIME 타입을 설정하지 않으면 한글이 깨짐
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("사용자 이름 : " + userName);
		out.print("<br>");
		out.print("비밀번호 : " + pw);
	}

}
