<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
<meta charset="UTF-8">
	<title>CSS Dropdowns</title>
	<style>
		.dropdown-button {
			background-color: #f1f1f1;
			padding: 8px;
			font-size: 15px;
			border: none;
		    color:black;
		}
		.dropdown {
			position: relative;
			display: inline-block;
			float:right;
		}
		@media (max-width: 991px) {
    .navbar-main .navbar-nav li ul {
        display: block;
        position: inherit;
        left: auto;
        top: auto;
        width: 100%;
        background: transparent;
        padding: 0 0 0 10px;
        z-index: 1;
        box-shadow: none;
    }

    .navbar-collapse.collapse.in {
        overflow-y: auto;
    }
}
		.dropdown-content {
			display: none;
			position: absolute;
			background-color: #f1f1f1;
			min-width: 75px;
			padding: 5px;
			z-index: 1;
			box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		}
		.dropdown-content a {
			color: black;
			padding: 8px;
			text-decoration: none;
			display: block;
		}
		.dropdown-content a:hover { background-color: #555;color: white; }
		.dropdown:hover .dropdown-content { display: block; }
		.dropdown:hover .dropdown-button { background-color: #04AA6D; color:white}
		/* The side navigation menu */
.sidebar {
  margin: 0;
  padding: 0;
  width: 50px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
  z-index: 1;
}

/* Sidebar links */
.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}

/* Active/current link */
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

/* Links on mouse-over */
.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

/* Page content. The value of the margin-left property should match the value of the sidebar's width property */
div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

/* On screens that are less than 700px wide, make the sidebar into a topbar */
@media screen and (max-width: 800px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

/* On screens that are less than 400px, display the bar vertically, instead of horizontally */
@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
	</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../../../../../resources/css/style.css">
</head>
<body>
<!-- The sidebar -->
<div class="sidebar">
  <a class="active" href="/list">홈</a>
  <a href="/korea">국내 만화</a>
  <a href="/japan">일본 만화</a>
  <a href="/usa">미국 만화</a>
</div>
<nav class="navbar navbar-expand-sm navbar-light bg-light ">
	
  <div class="container-fluid">
    <a class="navbar-brand" href="/list" style="font-weight:bold; font-size:45px;">시공사</a>
    <!--  
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>-->
    <div class="collapse navbar-collapse" id="navbarNavDropdown" style={{paddingRight: "1em"}}>
    <!--  
      <ul class="navbar-nav">
      <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/list" style={{backgroundColor: "#04AA6D"}}>HOME</a>
        </li>
        -->
        <button class="dropdown-button" onclick = "location.href = '/list' " style="background-color: #04AA6D; color: white;">홈</button>
<div class="dropdown">
		<button class="dropdown-button" onclick = "location.href = '/usa' ">미국 만화</button>
		<div class="dropdown-content">
			<a href="/usa/dc">DC 코믹스마블</a>
			<a href="/usa/comics">코믹스리터러리</a>
			<a href="/usa/graphic">그래픽노블</a>
			
		</div>
	</div>
	<div class="dropdown">
		<button class="dropdown-button" onclick = "location.href = '/japan' ">일본 만화</button>
		<div class="dropdown-content">
			<a href="/japan/romance">순정만화</a>
			<a href="/japan/teenage">소년만화</a>
			<a href="/japan/adult">성인만화</a>
			<a href="/japan/plan">기획도서</a>
		</div>
	</div>
	<div class="dropdown">
		<button class="dropdown-button" onclick = "location.href = '/korea' ">국내 만화</button>
		<div class="dropdown-content">
			<a href="/korea/romance">순정만화</a>
			<a href="/korea/teenage">소년만화</a>
			<a href="/korea/adult">성인만화</a>
			<a href="/korea/plan">기획도서</a>
			<a href="/korea/magazine">만화잡지</a>
		</div>
	</div>
	
	<!--  
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="/korea" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            국내 만화
          </a>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="/korea/romance">순정만화</a></li>
            <li><a class="dropdown-item" href="./korea/teenage">소년만화</a></li>
            <li><a class="dropdown-item" href="./korea/adult">성인만화</a></li>
            <li><a class="dropdown-item" href="./korea/plan">기획도서</a></li>
          </ul>
        </li>
   
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="/japan" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            일본 만화
          </a>
         <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="./japan?genre=1">순정만화</a></li>
            <li><a class="dropdown-item" href="./japan?genre=2">소년만화</a></li>
            <li><a class="dropdown-item" href="./japan?genre=3">성인만화</a></li>
            <li><a class="dropdown-item" href="./japan?genre=4">기획도서</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="/usa" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            미국 만화
          </a>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href=".usa?genre=1">순정만화</a></li>
            <li><a class="dropdown-item" href=".usa?genre=2">소년만화</a></li>
            <li><a class="dropdown-item" href=".usa?genre=3">성인만화</a></li>
            <li><a class="dropdown-item" href=".usa?genre=4">기획도서</a></li>
          </ul>
        </li>
      
       -->
      </ul>
    </div>
  </div>
</nav>


<div class="container">
</body>
</html>