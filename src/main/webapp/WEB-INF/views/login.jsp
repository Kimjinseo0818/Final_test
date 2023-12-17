<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        img, label { display:inline-block;}
        label{ width:130px}
        button{ background-color:blue; color:white;font-size:15px}

    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body style="background-color: gray">
<div style="width: 40%; margin-left: 30%; margin-top: 5%;">
    <form method="post" action="loginOk" style="align-content: center">
        <h1 class="h3 mb-3 fw-normal" style="text-align: center; color: white; font-weight:bold; font-size: 200%">내가 저장한 영화 정보 보기</h1>
        <img src="../img/snowman.jpg" height="250" style="margin-left: 15%; margin-bottom: 20px;">
        <div class="form-floating">
            <input type="text" class="form-control" id="floatingInput" placeholder="ID" name='userid'>
            <label for="floatingInput">ID</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password">
            <label for="floatingPassword" >Password</label>
        </div>

        <div class="form-check text-start my-3">
            <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault" >
            <label class="form-check-label" for="flexCheckDefault">
                Remember me
            </label>
        </div>
        <button class="btn btn-primary w-100 py-2" type="submit">Log in</button>
        <p class="mt-5 mb-3 text-body-secondary">&copy; 2017–2023</p>
    </form>
</div>
<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>


