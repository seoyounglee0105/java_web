<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- sql 패키지에 있는 모든 클래스 사용 가능 -->
<%@ page import="java.sql.*"  %>

<%
	request.setCharacterEncoding("utf-8");
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	String email = request.getParameter("email");

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/demo5?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
		String dbUser = "root";
		String dbPw = "1234";
		Connection conn = DriverManager.getConnection(url, dbUser, dbPw);
		String sql = " INSERT INTO user(userName, password, email) VALUES (?, ?, ?) ";	
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, userName);
		stmt.setString(2, password);
		stmt.setString(3, email);
		stmt.executeUpdate();
		
		conn.close();	
		response.sendRedirect("joinOk.jsp");
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>