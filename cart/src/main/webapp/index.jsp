<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie[] cookies = request.getCookies();
	
	String[] names = {"banana", "apple", "peach"};
	
	ArrayList<String> cart = new ArrayList<String>();
	
	boolean isEmpty = true;
	
	if (cookies != null) {
		for (Cookie c : cookies) {
			if (c.getName().equals("banana")) {
				cart.add("바나나");
				isEmpty = false;
			} else if (c.getName().equals("apple")) {
				cart.add("사과");
				isEmpty = false;
			} else if (c.getName().equals("peach")) {
				cart.add("복숭아");
				isEmpty = false;
			}
		}
	} 
	
	if (isEmpty == true) {
		response.sendRedirect("cart.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	table {
		border-collapse: collapse;
	}
	
	td {
		padding: 5px 10px;
		border: 1px solid black;
		text-align: center;
	}
</style>
</head>
<body>
	<header>
		<h1>장바구니 상태</h1>
	</header>
	
	<section>
		<table>
			<% for (int i = 0; i < cart.size(); i++) { %>
				<tr>
					<td><span><%=cart.get(i) %></span>
				</tr>
			<% } %>
		</table>
	</section>
</body>
</html>