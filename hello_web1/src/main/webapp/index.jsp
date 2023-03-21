<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 외부 스타일 시트 연결하기 -->
<!-- 내부 스타일 시트로 사용하며 테스트하다가, 완성되면 외부로 빼기 -->
<link rel = "stylesheet" type = "text/css" href = "css/styles.css">
<style type="text/css">
	a:link {
		text-decoration: none; 
	}
	a:visited {
		color: black;
		text-decoration: none;
	}
	a:hover {
		color: black;
		text-decoration: underline;
	}
</style>
</head>
<body>
	<header>
		<h2>First JSP Web</h2>
	</header>

	<section>
		<nav>
			<ul>
				<li><a href = "#"> 홈</a>
				<li><a href = "#">구독화면</a>
				<li><a href = "layout_1.jsp">추천화면</a>
				<li><a href = "form2.jsp">flex form</a>
				<!-- 하이퍼링크를 걸어두면 다른 파일로 쉽게 넘어갈 수 있음 -->
			</ul>
		</nav>
		<article>
			<p>
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
				Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
				when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
				It has survived not only five centuries, but also the leap into electronic typesetting, 
				remaining essentially unchanged. It was popularised in the 1960s with the release 
				of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop 
				publishing software like Aldus PageMaker including versions of Lorem Ipsum.
			</p>
		</article>
	</section>
	
	<footer>
		<span>footer</span>
	</footer>
</body>
</html>