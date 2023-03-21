package com.tenco;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// ms는 동적인 자원
@WebServlet("/ms") // 어노테이션
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyServlet() {
        super();
    }

	           // GET과 POST
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Writer : IO 
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		// 주소 창으로 정보 요청 : GET 방식
		// http://localhost:8080/myWeb1/ms
		// ms : 서블릿을 생성할 때 URL Mappings한 값
		request.getContentType();
		System.out.println("contentType : " + request.getContentType());
		// 응답 : response 객체 사용
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=utf-8;");
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		out.print("<body>");
		out.print("<section>");
		out.print("<p style = \"color:red\">"); 
		out.print("Hello First Servlet");
		out.print("</p>");
		out.print("</section>");
		out.print("</body>");
		out.print("</html>");
	}

	           // GET과 POST
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
	}

}
