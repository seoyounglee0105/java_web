package com.tenco.todo.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenco.todo.dto.CategoryDTO;
import com.tenco.todo.repository.CategoryDAO;

@WebServlet("/cTest")
public class CategoryTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
    
    @Override
    public void init() throws ServletException {
    	// todo - DB 연결 확인 후 삭제 예정
//    	DBHelper dbHelper = new DBHelper();
//    	dbHelper.getConnection();
    }
    
    
    @Override
    public void destroy() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoryDAO dao = new CategoryDAO();
		
		// 주소 설계
		// http://localhost:8080/todo/cTest?action=delete&cid=1
		
		String action = request.getParameter("action");
		// 널포인터에러 방지 : 대상 문자열을 앞에
		if ("delete".equals(action)) {
			String cid = request.getParameter("cid");
			dao.delete(Integer.parseInt(cid));
			response.sendRedirect("/todo/cTest");
			
		} else {
			ArrayList<CategoryDTO> resultList = dao.select();
			request.setCharacterEncoding("UTF-8");
			request.setAttribute("list", resultList); // requset 객체 값 세팅
			// 상대 경로
			request.getRequestDispatcher("test/categoryList.jsp").forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");

		// 쿼리 파라미터 방식 데이터 받아 보기
		String action = request.getParameter("action");
	
		CategoryDAO categoryDAO = new CategoryDAO();
		int responseCount = 0;
	
		if (action.equals("insert")) {
			responseCount = categoryDAO.insert(name);
			
		} else if (action.equals("update")) {
			int id = Integer.parseInt(request.getParameter("id"));
			responseCount = categoryDAO.update(id, name);
			
		} else if (action.equals("delete")) {
			
			
		}
		response.setContentType("text/plain; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("적용된 개수 확인 : " + responseCount);			
		
	}

		
}
