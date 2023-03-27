package com.tenco;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 데이터 설정
		String message = "안녕 JSP !";
		
		request.setAttribute("msg", message);
		// RequsetDispatcher를 사용하면 주소는 바뀌지 않고 내용은 result.jsp로 바뀜
		// (비교 : sendRedirect 메서드는 주소도 바뀜)
		RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
		// requset, response 객체를 그대로 던짐
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
