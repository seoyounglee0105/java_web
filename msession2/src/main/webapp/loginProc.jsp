<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 여기는 java 코드만 처리 -->

<%
	// 넘겨 받은 값 userName과 password를 확인해서
	// admin1과 1234와 값이 같다면 로그인 처리하는 코드를 작성하시오.
	// 아이디와 비밀번호가 틀렸다면 login.jsp로 보내시오.
	
	String inputUserName = request.getParameter("userName");
	String inputPassword = request.getParameter("pw");
	
	String userName = "admin";
	String password = "1234";
	
	if (inputUserName != null && inputPassword != null) {
		if (inputUserName.equals(userName) && inputPassword.equals(password)) {
			session.setAttribute("userName", inputUserName);
			response.sendRedirect("index.jsp");
		} else {
			out.print("<script> alert('로그인 실패'); location.href = 'login.jsp'; </script>");
		}
		
	}
	
%>