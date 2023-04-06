<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="d-flex m-3"> <!-- 부트스트랩에서 플렉스 컨테이너로 만들어주는 클래스 -->
		<!-- 경로 찾을 때 path :: URI 형식 기준으로 사용 -->
		<form action="upload" method="post" enctype="multipart/form-data">
		  <p>Custom file:</p>
		  <div class="custom-file mb-3">
		    <input type="file" class="custom-file-input" id="customFile" name="file">
		    <label class="custom-file-label" for="customFile">Choose file</label>
		  </div>
		  
		  <div class="mt-3">
		    <button type="submit" class="btn btn-primary">Submit</button>
		  </div>
		</form>		
	</div>
	
	<script>
		// jQuery
		// on : 이벤트 리스너 등록
		// $ : 제이쿼리의 시작
		// change : 이벤ㅌ ㅡ이룸
		$(".custom-file-input").on("change", function() {
		  let fileName = $(this).val().split("\\").pop();
		  		// 형제 요소 중에 해당 클래스를 가진 요소들 선택 
		  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
		});
	</script>
	
</body>
</html>