<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
        .add {
            color: blue;
            border: blue 1px solid;
            background-color:#fff;
            border-radius: 5px;
        }
        .add:hover {
            color: #fff;
            background-color: blue;
            border-color: blue;
        }
        .add:active {
            color: #fff;
            background-color: blue;
            border-color: blue;
        }
        .add:disabled{
            color: blue;
            background-color: transparent;
            border-color: blue;
        }
        .logout {
            color: red;
            border: red 1px solid;
            background-color:#fff;
            border-radius: 5px;
        }
        .logout:hover {
            color: #fff;
            background-color: red;
            border-color: red;
        }
        .logout:active {
            color: #fff;
            background-color: red;
            border-color: red;
        }
        .logout:disabled{
            color: red;
            background-color: transparent;
            border-color: red;
        }
        .view {
            color: black;
            border: black 1px solid;
            background-color:#fff;
            border-radius: 5px;
        }
        .view:hover {
            color: #fff;
            background-color: black;
            border-color: black;
        }
        .view:active {
            color: #fff;
            background-color: black;
            border-color: black;
        }
        .view:disabled{
            color: black;
            background-color: transparent;
            border-color: black;
        }
        .container{
            display: flex;
            justify-content: center;
            background-color: white;
        }
        #block{
            /*margin: 10px;*/
            margin-top: 30px;
            width: 300px;
            height: 450px;
            border: 5px solid gray;
            border-radius: 5%;
            background-color: white;
        }
        #block_img{
            background-color: white;
            height: 200px;
            margin-top: 50px;
            margin-bottom: 50px;
            text-align: center;
        }
        #block_text{
            color: black;
            text-align: center;

        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script> <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
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

                <form class="d-flex mt-3 mt-lg-0" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                &nbsp;
                <button class="add" onclick="location.href='add'">Add</button>
                &nbsp;
                <button class="logout" onclick="location.href='../login/logout'">Log out</button>
            </div>
        </div>
    </div>
</nav>
<!--
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Director</th>
        <th>Duration</th>
        <th>Genre</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td><a href="view/${u.seq}">${u.title}</a></td>
            <td>${u.director}</td>
            <td>${u.duration}</td>
            <td>${u.genre}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
-->
<div class="container" style="">
    <div style="width:100%; display: grid; place-items: center; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); grid-gap: 10px;">
<c:forEach items="${list}" var="u">
<div id="block">
    <div id="block_img"><img src="./img/${u.photo}" width="200" class="photo">
    </div>
    <div id="block_text">
        <h4>제목: ${u.title}</h4>
        <h4>장르: ${u.genre}</h4>
        <h4>평점: ${u.rating}점</h4>
        <button class="view" onclick="location.href='view/${u.seq}'">자세히보기</button>
        <button class="add" onclick="location.href='editform/${u.seq}'">수정</button>
        <button class="logout" onclick="delete_ok('${u.seq}')">삭제</button>
    </div>
</div>

</c:forEach>
    </div>
</div>

</body>
</html>