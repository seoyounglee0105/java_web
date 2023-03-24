<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String[] names = {"바나나", "사과", "복숭아"};
	String[] cart = request.getParameterValues("fruit");
	
	boolean indexOn = false;
	
	for (int i = 0; i < cart.length; i++) {
		// 해당 요소가 체크되어 있다면 쿠키 생성
		if (cart[i] != null) {
			Cookie cookie = new Cookie(names[i], cart[i]);
			cookie.setMaxAge(60 * 60 * 24 * 10);
			response.addCookie(cookie);
			indexOn = true;
		// 해당 요소가 체크되지 않았다면 쿠키 삭제
		} else {
			Cookie cookie = new Cookie(names[i], cart[i]);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
	}
	
	if (indexOn == true) {
		response.sendRedirect("index.jsp");
	} else {
		response.sendRedirect("cart.jsp");
	}
	
%>