package com.tenco.todo.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenco.todo.dto.TodolistDTO;
import com.tenco.todo.repository.TodoDAO;

@WebServlet("/tTest")
public class TodoTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TodoTest() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TodoDAO dao = new TodoDAO();

		String action = request.getParameter("action");
		String tid = request.getParameter("tid");

		if ("delete".equals(action)) {
			dao.delete(Integer.parseInt(tid));
			response.sendRedirect("/todo2/tTest");

		} else if ("update".equals(action)) {
			boolean tComp = Boolean.parseBoolean(request.getParameter("tComp"));

			if (tComp == false) {
				dao.updateTrue(Integer.parseInt(tid));
			} else {
				dao.updateFalse(Integer.parseInt(tid));
			}

			response.sendRedirect("/todo2/tTest");

		} else {
			ArrayList<TodolistDTO> resultList = dao.select();
			request.setCharacterEncoding("UTF-8");
			request.setAttribute("list", resultList);
			request.getRequestDispatcher("todoTest/todoList.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		TodoDAO todoDAO = new TodoDAO();
		int responseCount = 0;

		if (action.equals("insert")) {
			String title = request.getParameter("title");
			String description = request.getParameter("description");
			int priority = Integer.parseInt(request.getParameter("priority"));
			int categoryId = Integer.parseInt(request.getParameter("categoryId"));
			TodolistDTO dto = new TodolistDTO(title, description, priority, categoryId);
			responseCount = todoDAO.insert(dto);
		}

		response.setContentType("text/plain; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("적용된 개수 확인 : " + responseCount);
	}

}
