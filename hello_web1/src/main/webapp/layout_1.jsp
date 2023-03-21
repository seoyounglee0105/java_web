<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {
		box-sizing: border-box;
		padding: 0;
	}
	
	
	
	h1, h2, h3, h4, h5, h6 {
		margin: 0;
	}
	
	section {
		display: flex;
		width: 1000px;
		margin: 40px 20px; 
		padding: 20px;
		background-color: #fff;
	}
	
	article.side1 {
		order: 1;
		flex: 1;
		text-align: left;
	}
	
	article.main {
		order: 2;
		flex: 3;
		display: flex;
		flex-direction: column;
		justify-content: center;
	}
	
	article.main.img {
		flex: 1;
	}
	
	article.side2 {
		order: 3;
		flex: 1;
		text-align: right;
	}
	
	section {
		
	}
</style>
</head>
<body>
	<section>
		<article class="main">
			<img alt="메인이미지" src="images/main_img.jpg">
			<h2>Main Content</h2>
			<p>t is a long established fact that a reader will be distracted
				by the readable content of a page when looking at its layout.</p>
		</article>

		<article class="side1">
			<h2>Side Content 1</h2>
			It is a long established fact that a reader will be distracted by the
			readable content of a page when looking at its layout. The point of
			using Lorem Ipsum is that it has a more-or-less normal distribution
			of letters, as opposed to using 'Content here, content here', making
			it look like readable English.
		</article>

		<article class="side2">
			<h2>Side Content 2</h2>
			It is a long established fact that a reader will be distracted by the
			readable content of a page when looking at its layout. The point of
			using Lorem Ipsum is that it has a more-or-less normal distribution
			of letters, as opposed to using 'Content here, content here', making
			it look like readable English.
		</article>
	</section>
</body>
</html>