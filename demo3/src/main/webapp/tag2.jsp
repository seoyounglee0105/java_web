<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Date"%>
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
</style>
<main>
	<pre>
		선언문 (declaration)
		<%! %> 
		JSP 페이지에서 전역변수, 메서드, 클래스 등을 선언할 수 있음
		스크립트 릿과 달리, JSP 페이지에서 직접 호출할 수 없음
		선언해놓고 스크립트릿 or 표현식으로 호출하기
		선언문 위치는 상관 X
		--------------------------------------------
		선언문과 표현식 연습
		현재 시간은 한국 표기법으로 <%=getKoreanTime() %>   <!-- 세미콜론 ㄴㄴ -->
	</pre>
</main>

<!-- 메서드를 선언함 -->
<%! 
	public String getKoreanTime() {
		// 서버의 시간대를 한국 시간대로 변경하기
		TimeZone.setDefault(TimeZone.getTimeZone("Asia/Seoul"));
		
		// 현재 시간을 가져와서 문자열로 변환
		Date now = new Date();  
		System.out.println(System.currentTimeMillis());
		String timeStr = String.format("%tY년 %tm월 %td일 %tT", now, now, now, now);
		return timeStr;
	}
%>

<jsp:include page="/layout/footer.jsp"/> <!-- 셀프 클로징 태그 -->
