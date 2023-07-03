<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>Dangky</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<style>
    body{
        background: white;
        background-size: cover;
        width: 100%;
        height: 800px;
    }
</style>
<body style="background-color:  white;">
<div class="container">
    <div class="row ">
        <form method="post" action="/dang-ky"  class="col-md-6 col-sm-8 offset-sm-3">
            <h1 class="text-center text-uppercase h3 py-3">Đăng ký tài khoản</h1>
            <div class="form-group">
                <label >Tên </label>
                <input  class="form-control" required minlength="6" type="text" name="name">
            </div>
            <div class="form-group">
                <label >Tên đăng nhập</label>
                <input  class="form-control" required minlength="6" type="text" name="account">
            </div>
            <div class="form-group">
                <label  >Số điện thoại</label>
                <input  class="form-control" required minlength="6" type="password" name="phoneNumber">
            </div>
            <div class="form-group">
                <label >Email</label>
                <input class="form-control" required  type="email" name="email">
            </div>
            <div class="form-group">
                <label  >Địa chỉ</label>
                <input class="form-control" required  type="address" name="address">
            </div>
            <div class="form-group">
                <label  >Password</label>
                <input  class="form-control" required minlength="6" type="password" name="password">
            </div>

            <input type="submit" value="Đăng ký" class="btn-primary btn btn-block">
        </form>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>