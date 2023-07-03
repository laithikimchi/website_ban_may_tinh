<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Quản lý Sản Phẩm</title>
    <link rel="icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/3570/3570159.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
<div class="container ">
    <form method="post" action="/admin/may-tinh/update" enctype="multipart/form-data">
        <div class="row">
            <div class="col mb-3 col-xl-6">
                <label class="form-label">Tên</label>
                <input type="text" class="form-control" name="ten" value="${mt.ten}">
                <span class="text-danger">${er1}</span>
            </div>
            <div class="col mb-3 col-xl-6">
                <label class="form-label">Màu sắc</label>
                <select class="form-select form-select" name="mauSac">
                    <option value="ĐỎ" ${mt.mauSac == "ĐỎ" ? "selected" : ""} >ĐỎ</option>
                    <option value="TRẮNG" ${mt.mauSac == "TRẮNG" ? "selected" : ""}>TRẮNG</option>
                    <option value="HỒNG" ${mt.ram == "HỒNG" ? "selected" : ""}>HỒNG</option>

                </select>
            </div>
        </div>
        <div class="row">

            <div class="mb-3 col-xl-6">
                <label class="form-label">Ram</label>
                <select class="form-select form-select" name="ram">
                    <option value="SDRAM" ${mt.ram == "SDRAM" ? "selected" : ""} >SDRAM</option>
                    <option value="DDR" ${mt.ram == "DDR" ? "selected" : ""}>DDRi</option>
                    <option value="DDR 2" ${mt.ram == "DDR 2" ? "selected" : ""}>DDR 2</option>
                    <option value="DDR 3" ${mt.ram == "DDR 3" ? "selected" : ""}>DDR 3</option>
                    <option value="RDRAM" ${mt.ram == "RDRAM" ? "selected" : ""}>RDRAM</option>
                </select>
            </div>
            <div class="mb-3 col-xl-6">
                <label class="form-label">CPU</label><br>
                <select class="form-select form-select" name="cpu">
                    <option value="AMD Ryzen 7 3700X" ${mt.cpu == "AMD Ryzen 7 3700XM" ? "selected" : ""} >AMD Ryzen 7
                        3700X
                    </option>
                    <option value="Intel Core i9 9900k" ${mt.cpu == "Intel Core i9 9900k" ? "selected" : ""}>Intel Core
                        i9
                        9900k
                    </option>
                    <option value="AMD Ryzen 7 2700X" ${mt.cpu == "AMD Ryzen 7 2700X" ? "selected" : ""}>AMD Ryzen 7
                        2700X2
                    </option>
                    <option value="Intel Core i7" ${mt.cpu == "Intel Core i7" ? "selected" : ""}>Intel Core i7</option>
                    <option value="CPU Intel Core i5 9400F" ${mt.cpu == "CPU Intel Core i5 9400F" ? "selected" : ""}>
                        CPU
                        Intel Core i5 9400F
                    </option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col mb-3 col-xl-6">
                <label class="form-label">Gía bán</label>
                <input type="text" class="form-control" name="giaBan" value="${mt.giaBan}">
                <span class="text-danger">${er3}</span>
            </div>
            <div class="col mb-3 col-xl-6">
                <label class="form-label">Số lượng tồn</label>
                <input type="text" class="form-control" name="sl" value="${mt.sl}">
                <span class="text-danger">${er4}</span>
            </div>
        </div>
        <div class="row">
            <div class="col mb-3 col-xl-6">
                <label class="form-label">Mô tả</label>
                <input type="text" class="form-control" name="moTa" value="${mt.moTa}">
                <span class="text-danger">${er2}</span>
            </div>
            <div class="col mb-3 col-xl-6">
                <label class="form-label">Image</label><br>
                <input type="file" class="form-control-file" name="url" value="${mt.url}">
            </div>
        </div>

        <button type="submit" class="btn btn-danger">UPDATE</button>

    </form>
</div>

</body>
</html>