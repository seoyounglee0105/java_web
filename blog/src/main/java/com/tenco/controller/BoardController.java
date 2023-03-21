package com.tenco.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// URL : http://localhost:8080/blog/index.html -> 확장자가 있음
// URI : http://localhost:8080/blog/boardcontroller -> Indentifier 식별자

// web.xml 환경 설정에서 해야 하는 부분인데
// web.xml 파일은 웹 서버 동작 시 한 번만 로딩되므로 서버를 재시작해야 함
@WebServlet("/boardcontroller")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardController() {
        super();
    }

    // GET
    // HTTP 메세지 바디가 없음
    // Q. GET 방식으로는 데이터를 전혀 보내지 못하나요?
    // A. ㄴㄴ 보낼 수 있어요 시작 줄에 
    // http://localhost:8080/blog/boardcontroller?name="홍길동"
    
    // Session -> 메모리 영역
    // key-value 구조로 해당 사용자의 id, pw 등에 대한 객체를 만들어서 보관
    // 이걸 활용해서 사용자를 인증할 수 있음
    
    
    // http://localhost:8080/blog/boardcontroller
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("");
		System.out.println("contextPath : " + request.getContextPath()); // 프로젝트명 (루트 컨텍스트)
		System.out.println("cookies : " + request.getCookies()); // 할당하지 않아서 null
		System.out.println("session : " + request.getSession()); // 
		// 쿠키로 들어가면
		// JSESSIONID 라는 게 있음
		// 사용자가 웹 서버에 최초 요청하고 응답 시에 값을 담아서 보내지는 것
		System.out.println("p_names : " + request.getParameterNames());
		System.out.println("test : " + request.getParameter("name"));
		
		// response 객체
		
		// 쿠키 : 부스러기를 떨어뜨린다는 의미에서 나옴
		response.addCookie(new Cookie("myCookie", "abc123"));
		// 쿠키 활용 예시 : 아이디 기억하기
	
		response.getWriter();
		
		response.getStatus(); // 통신성공 : 200, 통신실패 : 404
		
		// 새로운 request, response 객체가 생성됨
		// 다른 곳으로 연결해줌
 		response.sendRedirect("/usercontroller");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
