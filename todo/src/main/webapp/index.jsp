<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	
	body {
		display: flex;
		justify-content: center;
	}
	
	.page-container {
		display: flex;
		background-color: blanchedalmond;
		justify-content: center;
		flex-direction: column;
		max-width: 500px;
		flex: 1 0 0;
	}
	
	.header {
		/* flex 첫 번째 속성 (flex-grow) : flex-item이 늘어날 수 있는 비율을 지정함 (기본값 : 0) */
		       							  /* 확장하는 크기 비율을 조정할 수 있음 */
		/* flex 두 번째 속성 : 비율에 따라 줄어듦 */
		flex: 0 0 90px;
		border-bottom: 1px solid gray;
		display: flex;
		justify-content: right;
		align-items: center;
		padding: 0 20px;
	}
	
	.main-container {
		flex: 1;
		padding: 0 16px;
	}
	
	.section-title-heading {
		margin: 20px 0;
		font-size: 1.5rem;
	}
	
	.section-home-menu {
		display: flex;
		justify-content: flex-start;
	}
	
	.menu-icon {
		display: flex;
		flex-direction: column;
		border: 1px solid gray;
		border-radius: 20px;
		padding: 10px;
		align-items: center;
		justify-content: center;
		flex: 0 0 20px;
		margin-right: 10px;
	}
	
	.article {
		display: flex;
		flex-direction: column;
	}
	
	.article-img {
		flex: 2 0 30px;
		margin-bottom: 20px;
	}
	
	.article-img-description {
		flex:1;
		margin-bottom: 20px;
	}
	
</style>
</head>
<body>
	<div class="page-container">
		<div class="header">
			<span class="material-symbols-outlined"> search </span> 
			<span class="material-symbols-outlined" style="color:red;"> favorite </span>
		</div>
		<div class="main-container">
			<div class="section section-title">
				<h2 class="section-title-heading">Recipes</h2>
			</div>

			<div class="section section-home">

				<!-- 우리가 만든 아이콘 넣을 곳 -->
				<div class="section-home-menu">
					<div class="menu-icon">
						<span class="material-symbols-outlined" style="color:red;"> home </span>
						<span>ALL</span>
					</div>
					<div class="menu-icon">
						<span class="material-symbols-outlined" style="color:red;"> home </span>
						<span>ALL</span>
					</div>
					<div class="menu-icon">
						<span class="material-symbols-outlined" style="color:red;"> home </span>
						<span>ALL</span>
					</div>
					<div class="menu-icon">
						<span class="material-symbols-outlined" style="color:red;"> home </span>
						<span>ALL</span>
					</div>
				</div>

				<br>

				<div class="article">
					<img alt="" class="article-img" src="images/burger.jpeg">
					<span class="article-img-description">햄버거 사먹기</span>
				</div>
				<div class="article">
					<img alt="" class="article-img" src="images/pizza.jpeg">
					<span class="article-img-description">피자 사먹기</span>
				</div>
				<div class="article">
					<img alt="" class="article-img" src="images/coffee.jpeg">
					<span class="article-img-description">커피 사먹기</span>
				</div>

			</div>
		</div> <!-- end of main-container -->
	</div>
</body>
</html>