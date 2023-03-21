package com.tenco;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/uc")
public class userController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public userController() {
        super();
        // doGet 메서드가 호출될 때 한 번 생성됨
        System.out.println("UserController 생성자 호출");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("UserController doGet 메서드 호출~");
		PrintWriter out = response.getWriter();
		// HTTP 메세지 - http 메세지 헤더에 정의됨
		// ContentType -> text/html. application/json
		// ContentType : 응답보낼 데이터 타입의 형식
		// 웹 표준 기술인 MIME TYPE이라는 것이 정해져 있음
		response.setContentType(getServletInfo());
	}

	// 서버는 주소 경로가 똑같더라도 메서드 선정에 따라 구분할 수 있음
	// http://localhost:8080/myWeb1/uc
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("METHOD 방식 중 POST 요청 방식을 확인하고 응답 처리해보자");
		BufferedReader br = request.getReader();
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain; charset=utf-8");
		System.out.println(br.readLine());
		
		PrintWriter out = response.getWriter();
		out.print("MIKE 홍길동 ~");
		
	}

}
