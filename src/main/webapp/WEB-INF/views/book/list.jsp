<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>  
<head>  
<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">

 <%@ include file="/WEB-INF/views/include/head.jsp" %>
<title>책 목록</title>  
<!--  
<link rel="stylesheet" type="text/css" href="./slick/slick.css"/>

<link rel="stylesheet" type="text/css" href="./slick/slick-theme.css"/>
<link rel="stylesheet" media="all and (min-width:1200px)" href="desktop.css" >
-->

</head>  
<body>  
<!-- 메뉴 파일 -->
	<%@ include file="/WEB-INF/views/include/menu.jsp" %>
<style>
.slick-prev:before {
  color: #04AA6D !important;
  background-color: #eee;
}
.slick-next:before {
  color: #04AA6D !important;
  background-color: #eee;
}

	
	
	.wrapper { 
  border : 2px solid #000; 
  overflow:hidden;
}

.wrapper div {
   min-height: 200px;
   padding: 10px;
}
.mqdiv {
  background-color: white;
  float:left; 
  margin:10px;
  width:300px;
  height:150px;
  
}
.mqdiv2 { 
  background-color: white;
  overflow:hidden;
  margin:10px;
  height:150px;
  min-height:170px;
}

@media screen and (max-width: 400px) {
   .mqdiv { 
    float: none;
    margin-right:0;
    width:auto;
    border:0;
       
  }
}
	</style>

<!--  
<h1>추천 도서</h1>
<div class="slide_div_wrap">
				<div class="slide_div" style={{background:"black"}}>
					<div>
						<a>
							<img src="../../../resources/img/8934944544_1.jpg">
						</a>
					</div>
					<div>
						<a>
							<img src="../../../resources/img/8950960664_1.jpg">
						</a>
					</div>
					<div>
						<a>
							<img src="../../../resources/img/k062832891_1.jpg">
						</a>
					</div>			
					<div>
						<a>
							<img src="../../../resources/img/k342837406_1.jpg">
						</a>
					</div>		
					<div>
						<a>
							<img src="../../../resources/img/k542832564_1.jpg">
						</a>
					</div>		
					<div>
						<a>
							<img src="../../../resources/img/k832832683_1.jpg">
						</a>
					</div>	
					<div>
						<a>
							<img src="../../../resources/img/k892831289_1.jpg">
						</a>
					</div>	
					<div>
						<a>
							<img src="../../../resources/img/k922831329_1.jpg">
						</a>
					</div>	
					<div>
						<a>
							<img src="../../../resources/img/s072831276_1.jpg">
						</a>
					</div>	
					<div>
						<a>
							<img src="../../../resources/img/s302832892_1.jpg">
						</a>
					</div>		
				</div>	
			</div>

-->

<h1 style="text-align: center;">책 목록</h1> 
<div class="wrapper"> 
<div class="mqdiv"style="border : 2px solid #04AA6D;  " >
<div style="margin:auto; " >
<form>  
<input type="text" placeholder="제목으로" name="keyword" value="${keyword}" maxlength="30" />  
<input type="submit" value="검색" />  
</form> 
<form>  
<input type="text" placeholder="카테고리로" name="cate" value="${cate}" />  
<input type="submit" value="검색" />  
</form>
<form>  
<input type="text" placeholder="특정 가격 이하로" name="maximalprice" value="${maximalprice}" />  
<input type="submit" value="검색" />  
</form> 
</div>
 </div>
<div class="mqdiv2" style="border : 2px solid #04AA6D;  ">
<table style="margin:auto; text-align:center;">  
<thead>  
<tr>  
<td>제목</td>  
<td>카테고리</td>  
<td>가격</td>  
</tr>  
</thead>  
<tbody>  
<c:forEach var="row" items="${data}">  
<tr>  
<td>  
<a href="/detail?bookId=${row.book_id}">  
${row.title}  
</a>  
</td>  
<td>${row.category}</td>  
<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${row.price}" />원</td>  
</tr>  
</c:forEach>  
</tbody>  
</table>  
<p style="text-align: center;">  
<a href="/create">생성</a>  
</p>  
</div>
</div>
<h1 style="text-align: center;">추천 도서</h1>

<div class="slide_div_wrap">
				<div class="slide_div" style={{background:"black"}}>
					<div>
						<a>
							<img src="../../../resources/img/8934944544_1.jpg">
						</a>
					</div>
					<div>
						<a>
							<img src="../../../resources/img/8950960664_1.jpg">
						</a>
					</div>
					<div>
						<a>
							<img src="../../../resources/img/k062832891_1.jpg">
						</a>
					</div>			
					<div>
						<a>
							<img src="../../../resources/img/k342837406_1.jpg">
						</a>
					</div>		
					<div>
						<a>
							<img src="../../../resources/img/k542832564_1.jpg">
						</a>
					</div>		
					<div>
						<a>
							<img src="../../../resources/img/k832832683_1.jpg">
						</a>
					</div>	
					<div>
						<a>
							<img src="../../../resources/img/k892831289_1.jpg">
						</a>
					</div>	
					<div>
						<a>
							<img src="../../../resources/img/k922831329_1.jpg">
						</a>
					</div>	
					<div>
						<a>
							<img src="../../../resources/img/s072831276_1.jpg">
						</a>
					</div>	
					<div>
						<a>
							<img src="../../../resources/img/s302832892_1.jpg">
						</a>
					</div>		
				</div>	
			</div>



<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> 

<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
				<script>
				$(document).ready(function(){
					$('.slide_div').slick({
						slidesToShow: 5,
						  slidesToScroll: 1,
						  arrows: true,
						  autoplay: true,
						  autoplaySpeed: 2000,
						  responsive: [
					            {
					                breakpoint: 1024,
					                settings: {
					                    slidesToShow: 5,
					                    slidesToScroll: 1,
					                    autoplay: true,
										  autoplaySpeed: 2000,
					                }
					            },
					            {
					                breakpoint: 600,
					                settings: {
					                    slidesToShow: 3,
					                    slidesToScroll: 1,
					                    autoplay: true,
										  autoplaySpeed: 2000,
					                }
					            },
					            {
					                breakpoint: 480,
					                settings: {
					                    slidesToShow: 1,
					                    slidesToScroll: 1,
					                    autoplay: true,
										  autoplaySpeed: 2000,
					                }
					            }
					            // You can unslick at a given breakpoint now by adding:
					            // settings: "unslick"
					            // instead of a settings object
					        ]
					});
					
				});
  </script>
</body>  

</html>  