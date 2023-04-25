<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<!-- head 파일 -->
	<%@ include file="/WEB-INF/views/include/head.jsp" %>

<title>list</title>
</head>
<body>

	<!-- 메뉴 파일 -->
	<%@ include file="/WEB-INF/views/include/menu.jsp" %>




	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성일시</th>
				<th scope="col">수정자</th>
				<th scope="col">수정일시</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>English</td>
				<td>kim</td>
				<td>2020-12-11 09:00</td>
				<td>hong</td>
				<td>2020-12-11 09:00</td>
			</tr>
			
			<tr>
				<td>2</td>
				<td>it</td>
				<td>hong</td>
				<td>2020-12-11 09:00</td>
				<td>k</td>
				<td>2020-12-11 09:00</td>
			</tr>
			
		</tbody>
	</table>



<script>


$(document).ready(function(){
	
	console.log("ready!");
	

});


</script>



	<!-- footer 파일 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>