<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션 객체는 웹 컨테이너 어디에서든지 공유됨
	
	// 세션 객체 저장한 거 날림 (세션 메모리에서 해제)
	session.invalidate(); // 로그아웃 처리
	
	// 페이지 이동
	response.sendRedirect("login.jsp");
%>