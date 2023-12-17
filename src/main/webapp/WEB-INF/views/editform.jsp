<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.BoardVO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
	<style>
		#edit {
			border-collapse: collapse;
		}
		#edit td {
			border: 1px solid #ddd;
			padding: 8px;
		}
		#edit td:nth-child(odd) {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			color: white;
			background-color: #006bb3;
		}

	</style>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Offcanvas navbar large">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">영화 목록</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2" aria-controls="offcanvasNavbar2" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasNavbar2" aria-labelledby="offcanvasNavbar2Label">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasNavbar2Label">Offcanvas</h5>
				<button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="#"></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#"></a>
					</li>
				</ul>
				<button class="btn btn-outline-success" onclick="history.back()" style="background-color: white">Back to List</button>

			</div>
		</div>
	</div>
</nav>
<h1>Edit Form</h1>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>제목:</td><td><form:input path="title"/></td></tr>
		<tr><td>영화사:</td><td><form:input path="studio"/></td></tr>
		<tr><td>감독:</td><td><form:input path="director"/></td></tr>
		<tr><td>배우:</td><td><form:input path="actors"/></td></tr>
		<tr><td>시청기간:</td><td><form:input path="duration"/></td></tr>
		<tr><td>평점:</td><td><form:input path="rating"/></td></tr>
		<tr><td>장르:</td><td><form:input path="genre"/></td></tr>
		<tr><td>권장연령:</td><td><form:input path="recommendAge"/></td></tr>
		<tr><td>줄거리:</td><td><form:textarea cols="50" rows="5" path="summary"/></td></tr>
		<tr><td></td><td id="is"><input type="submit" value="Edit Post"/> &nbsp; <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
	</table>
</form:form>
<br>

</body>
</html>