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
		margin: 0px;
		padding: 0px;
	}
	
	h1 {
		text-align: center;
		padding: 10px;
		margin-bottom: 40px;
	}
	
	
	body {
		background-color: #E0E0E0;	
	}
	
	header {
		width : 650px;
	}
	
	section {
		width : 650px;
	}

	table {
		padding: 10px 10px 0px 10px;
	}
	
	td {
		padding-bottom: 10px;
	}
	
	label {
		width: 20%;
	}

</style>
</head>
<body>

	<header>
		<h1>flex form 태그 만들어 보기</h1>
	</header>
	
	<section>
		<form>
				<fieldset>
			<table>
				<tr>
					<td><label>Name : </label></td>
					<td><input type="text" style="width: 510px"></td>
				</tr>
				<tr>
					<td><label>Password : &nbsp&nbsp&nbsp&nbsp</label></td>
					<td><input type="password" style="width: 510px"></td>
				</tr>
			</table>
				</fieldset>
		</form>

	</section>
	

</body>
</html>