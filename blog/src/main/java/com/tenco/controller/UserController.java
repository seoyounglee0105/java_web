package com.tenco.controller;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/usercontroller") // xml 파일 재정의하는거
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 문제 2
		// JSON 형식으로 name=홍길동, age=10 이라는 값을 리턴시키세요
		// 항상 언어 지정 후 getWriter()하도록 신경쓰기
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print("{ \"name\" : \"홍길동\", \"age\" : 10 }");
	}

	// Method : post
	// http://localhost:8080/Blog/usercontroller
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// form 태그에서 넘어오는 값들을 받아보고 어떠한 연산을 해서 응답 처리
		
		// 요청 시 파라미터로 넘겨온 키값을 확인해서 값을 추출하는 기술을 알아보자
		// request 객체에 사용자가 입력한 값이 담겨서 들어옴
		request.setCharacterEncoding("utf-8"); // 한글 가능
		String inputName = request.getParameter("name"); // 매개변수에 Key값 세팅
		String inputPwd = request.getParameter("password");
		
		System.out.println("name : " + inputName);
		System.out.println("pwd : " + inputPwd);
		
		// 허용하는 이름과 패스워드
		String name = "이서영";
		String pwd = "1234";
		
		// 응답 처리
		// MIME TYPE text/html 방식 -> 이름과 비번을 확인했습니다 응답
		response.setContentType("text/plain; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if (inputName.equals(name) && inputPwd.equals(pwd)) {
			out.print("로그인되셨습니다.");
		} else {
			out.print("이름 또는 비밀번호가 틀렸습니다.");
		}
		
	}

}
