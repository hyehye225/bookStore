<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- head 파일 -->
	<%@ include file="/WEB-INF/views/include/head.jsp" %>

<title>detail</title>
</head>


<body>

	<!-- 메뉴 파일 -->
	<%@ include file="/WEB-INF/views/include/menu.jsp" %>
	
	

<br>
<br>
<br>
<br>

    <div class="row">
		
		<div class="col-12">
		
				<h3>제목</h3>
				<input class="form-control" type="text" placeholder="제목을 입력해주세요." id="title">
				<h3>소개</h3>
				<input class="form-control" type="text" placeholder="소개를 입력해주세요." id="description">

<br>

			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="showChk"> 
				<label class="form-check-label" for="showChk"> 공개 </label>
			</div>
			
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="payChk"> 
				<label class="form-check-label" for="payChk"> 유료 </label>
			</div>
			
		</div>

    </div>

<br>


	<div class="d-grid gap-2">
  		<button class="btn btn-primary" type="button" id="saveBtn">저장</button>
	</div>
	

	
<script>

$(document).ready(function(){
	
	console.log("ready!");
	
	//저장
	$("#saveBtn").click(function(){
		
		var title = $("#title").val();
		console.log("title : " + title);
		
	 });

});

</script>

	<!-- footer 파일 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>