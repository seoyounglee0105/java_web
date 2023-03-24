<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 액션 태그 -->
<!-- include : 복사해서 가져오기 -->
<jsp:include page="/layout/header.jsp"/> <!-- 셀프 클로징 태그 -->
<style>
	main {
		display: flex;
		padding: 20px;
		flex-direction: column;
		align-items: center;
		justify-content: flex-start;
	}
	
	main pre {
		width: 100%;
		border: 1px solid black;
		padding: 20px;
	}
	
	table {
		width: 400px;
		font-size: 14px;
		margin: 20px;
		border-collapse: collapse;
	}
	
	.title {
		font-size: 16px;
		font-weight: bold;
	}
	
	td {
		background-color: #f2f2f2;
		border: 1px solid #ccc;
		text-align: center;
	}
	
	.nbsp {
		background-color: white;
		border: 0px;
	}
	
</style>
<main>
	<h1>구구단 예제</h1>
	<table>
		<% int count = 1; %>
		<% for (int i = 2; i < 10; i++) { %>
			<tr>	
				<td class = "title"><%=i %>단 시작</td>
			</tr>
			<% for (int j = 1; j <= 9; j++) { %>
			<tr>
				<td><%=i %> X <%=j %> = <%=mulNumber(i, j) %></td>
			</tr>
			<% } %>
			<% if (count == 8) { %>
			<% break; } %>
			<tr>
				<td class = "nbsp">&nbsp;</td>
				<% count++; %>
				<% System.out.println(count); %>
			</tr> 
		<% } %>
	</table>	
	<br>
	<pre>스크립트릿과 표현식을 잘 구분해봅시다.</pre>
</main>

<%!
	public int mulNumber(int a, int b) {
		int result = a * b;
		return result;
	}
%>

<jsp:include page="/layout/footer.jsp"/> <!-- 셀프 클로징 태그 -->
