package com.tenco;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/todo") // 엔드포인트
public class Todo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Life-Cycle : 생성자 -> init -> service
	// 생성자와 init은 처음 연결됐을 때만 실행되고
	// service는 연결될 때마다 실행됨
	
    public Todo() {
    	System.out.println("---------생성자---------");
    }

    @Override
    public void init() throws ServletException {
    	System.out.println("----------init----------");
    }
    
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	System.out.println("----------service----------");
    }
    
    // 메모리가 해제되면 destroy 실행
    @Override
    public void destroy() {
    	System.out.println("---------destroy--------");
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
