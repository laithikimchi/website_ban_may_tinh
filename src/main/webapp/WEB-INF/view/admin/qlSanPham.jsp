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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link rel="stylesheet" href="../../../public/style.css">
    <style>
        .pagination .active a.page-link {
            background-color: aqua;
            color: white;
        }
    </style>
</head>


<body class="container-fluid">
<div class="container-fluid mt-3">
        <div class="row">
            <div class="col-2 p-4 shadow" style="background-color: #81c8c2; height: 100vh">
                <div class="d-flex justify-content-center">
                    <a class="navbar-brand" href="#">
                        <img src="https://www.logolynx.com/images/logolynx/9d/9d3a1a49aaf9f097cd14fd3e5f3362ff.jpeg"
                             alt="logo" height="130px"/></a>
                </div>
                <hr/>
                <div class="list-group">
                    <p class="text-secondary fw-bold">Components</p>
                    <a href="#" class="list-group-item list-group-item-action border-0"
                       style="background-color: #81c8c2; color: #1c1c1c">
                        <span><i class="fa-solid fa-gauge-high fs-6 px-1"></i></span> Dash board
                    </a>
                    <a href="" class="list-group-item list-group-item-action border-0"
                       style="background-color: #81c8c2; color: #1c1c1c">
                        <span><i class="fa-solid fa-user fs-6 px-1"></i></span> Accounts
                    </a>
                    <a href="/admin/may-tinh/list-mt" class="list-group-item list-group-item-action border-0"
                       style="background-color: #81c8c2; color: #1c1c1c">
                        <span><i class="fa-solid fa-glasses"></i></span> Products
                    </a>
                    <a href=""
                       class="list-group-item list-group-item-action border-0"
                       style="background-color: #81c8c2; color: #1c1c1c">
                        <span><i class="fa-regular fa-folder-open"></i></span> Ram
                    </a>
                    <a href="" class="list-group-item list-group-item-action border-0"
                       style="background-color: #81c8c2; color: #1c1c1c">
                        <span><i class="fa-solid fa-cart-shopping fs-6 px-1"></i></span> Cpu
                    </a>
                    <a href=""
                       class="list-group-item list-group-item-action border-0"
                       style="background-color: #81c8c2; color: #1c1c1c">
                        <span><i class="fa-solid fa-industry"></i></span> Color
                    </a>
                    <a
                            href="/admin/thongke"
                            class="list-group-item list-group-item-action border-0"
                            style="background-color: #81c8c2; color: #1c1c1c"
                    >
                        <span><i class="fa-solid fa-fill"></i></span> Statistical
                    </a>
                    <a
                            href=""
                            class="list-group-item list-group-item-action border-0"
                            style="background-color: #81c8c2; color: #1c1c1c"
                    >
                        <span><i class="fa-solid fa-recycle"></i></span> Material
                    </a>
                    <a href="/admin/order" class="list-group-item list-group-item-action border-0"
                       style="background-color: #81c8c2; color: #1c1c1c">
                        <span><i class="fa-solid fa-truck-fast fs-6 px-1"></i></span> Orders
                    </a>
                    <a
                            href=""
                            class="list-group-item list-group-item-action border-0"
                            style="background-color: #81c8c2; color: #1c1c1c"
                    >
                        <span><i class="fa-solid fa-calendar-check fs-6 px-1"></i></span> Order details
                    </a>
                    <p class="text-secondary fw-bold">Extras</p>
                    <a href="#" class="list-group-item list-group-item-action border-0"
                       style="background-color: #81c8c2; color: #1c1c1c">
                        <span><i class="fa-solid fa-message fs-6 px-1"></i></span> Feedbacks
                    </a>
                    <a href="#" class="list-group-item list-group-item-action border-0"
                       style="background-color: #81c8c2; color: #1c1c1c">
                        <span><i class="fa-solid fa-gear fs-6 px-1"></i></span> Settings
                    </a>
                </div>
            </div>
            <div class="col-10 px-0">
                <nav class="navbar navbar-expand-lg shadow-sm" style="background-color: #ffffff">
                    <div class="container-fluid">
                        <div class="collapse navbar-collapse" id="navbarText">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item"><a class="nav-link active" aria-current="page"
                                                        href="/">Home</a>
                                </li>
                            </ul>
                            <span class="navbar-text" id="dropAccount" role="button" data-bs-toggle="dropdown"
                                  aria-expanded="false">
                      <span> Welcome </span>
                  <i class="fa-solid fa-user fs-4"></i>
                </span>
                            <ul class="dropdown-menu" aria-labelledby="dropAccount" style="left: auto; right: 10px">
                                <li><a class="dropdown-item" href="/home">Home</a></li>
                                <li><a class="dropdown-item" href="/logout">Log out</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <div class="row m-0 g-3">
                    <div class="container ">
                        <form:form modelAttribute="filterMT" action="/admin/may-tinh/filter" method="get">
                            <!-- Example single danger button -->
                            <div class="row">

                                <div class="btn-group col-xl-3 mt-3">
                                    <form:input type="text" class="form-control" path="tenSP"/>
                                </div>
                                <div class="btn-group col-xl-2 mt-3">
                                    <form:select class="form-select form-select" path="mauSac">
                                        <form:option value="">MÀU SẮC</form:option>
                                        <form:option value="ĐỎ">ĐỎ</form:option>
                                        <form:option value="TRẮNG">TRẮNG</form:option>
                                        <form:option value="HỒNG">HỒNG</form:option>
                                    </form:select>

                                </div>
                                <div class="btn-group col-xl-2 mt-3">
                                    <form:select class="form-select form-select" path="ram">
                                        <form:option value="">RAM</form:option>
                                        <form:option value="SDRAM">SDRAM</form:option>
                                        <form:option value="DDR">DDRi</form:option>
                                        <form:option value="DDR 2">DDR 2</form:option>
                                        <form:option value="DDR 3">DDR 3</form:option>
                                        <form:option value="RDRAM">RDRAM</form:option>
                                    </form:select>
                                </div>
                                <div class="btn-group col-xl-2 mt-3">

                                    <form:select class="form-select form-select" path="cpu">
                                        <form:option value="">CPU</form:option>
                                        <form:option value="AMD Ryzen 7 3700X">AMD Ryzen 7
                                            3700X
                                        </form:option>
                                        <form:option value="Intel Core i9 9900k">Intel Core
                                            i9
                                            9900k
                                        </form:option>
                                        <form:option value="AMD Ryzen 7 2700X">AMD Ryzen 7
                                            2700X2
                                        </form:option>
                                        <form:option value="Intel Core i7">Intel Core i7</form:option>
                                        <form:option value="CPU Intel Core i5 9400F">
                                            CPU
                                            Intel Core i5 9400F
                                        </form:option>
                                    </form:select>
                                </div>
                                <div class="btn-group col-xl-2 mt-3">
                                    <form:select class="form-select form-select" path="giaBan">
                                        <form:option value="">GIÁ</form:option>
                                        <form:option value="ASC">Từ thấp -> cao</form:option>
                                        <form:option value="DESC">Từ cao -> thấp</form:option>
                                    </form:select>
                                </div>


                                <button type="submit" class="btn btn-primary col-xl-1  mt-3">Filter</button>

                            </div>
                        </form:form>

                    </div>
                    <hr>
                    <br>
                    <div class="row m-0 g-3">
                        <div class="container ">
                            <form method="post" action="/admin/may-tinh/add" enctype="multipart/form-data">
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
                                            <option value="TRẮNG" ${mt.mauSac == "TRẮNG" ? "selected" : ""}>TRẮNG
                                            </option>
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
                                            <option value="AMD Ryzen 7 3700X" ${mt.cpu == "AMD Ryzen 7 3700XM" ? "selected" : ""} >
                                                AMD Ryzen 7
                                                3700X
                                            </option>
                                            <option value="Intel Core i9 9900k" ${mt.cpu == "Intel Core i9 9900k" ? "selected" : ""}>
                                                Intel Core
                                                i9
                                                9900k
                                            </option>
                                            <option value="AMD Ryzen 7 2700X" ${mt.cpu == "AMD Ryzen 7 2700X" ? "selected" : ""}>
                                                AMD
                                                Ryzen 7
                                                2700X2
                                            </option>
                                            <option value="Intel Core i7" ${mt.cpu == "Intel Core i7" ? "selected" : ""}>
                                                Intel
                                                Core
                                                i7
                                            </option>
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
                                        <input type="number" class="form-control" name="giaBan" value="${mt.giaBan}">
                                        <span class="text-danger">${er3}</span>
                                    </div>
                                    <div class="col mb-3 col-xl-6">
                                        <label class="form-label">Số lượng tồn</label>
                                        <input type="number" class="form-control" name="sl" value="${mt.sl}">
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

                                <button type="submit" class="btn btn-danger">ADD</button>

                            </form>
                        </div>

                        <%--    <c:if test="${showTable == 1}">--%>
                        <div class="table-responsive mt-3">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Tên</th>
                                    <th>Màu sắc</th>
                                    <th>Cpu</th>
                                    <th>Số lượng tồn</th>
                                    <th>Gía bán</th>
                                    <th>Image</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="x" items="${listMT}">
                                    <tr>
                                        <td>${x.ten}</td>
                                        <td>${x.mauSac}</td>
                                        <td>${x.cpu}</td>
                                        <td>${x.sl}</td>
                                        <td>${x.giaBan}</td>
                                        <td>${x.url}</td>
                                        <td>

                                            <a href="/admin/may-tinh/detail-${x.id}">
                                                <button class="btn btn-success">Detail</button>
                                            </a>
                                            <a href="/admin/may-tinh/view-update-${x.id}">
                                                <button class="btn btn-success">Edit</button>
                                            </a>
                                                <%--                        <a href="/may-tinh/delete-${x.id}" class="btn btn-success">--%>
                                                <%--                            Remove--%>
                                                <%--                        </a>--%>
                                            <button type="button" class="btn btn-danger"
                                                    onclick="showConfirm('${x.id}')">Remove
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>

                        <%--    </c:if>--%>

                        <%--    <c:if test="${!showTable}">--%>
                        <%--        <div class="alert alert-primary mt-3" role="alert">--%>
                        <%--            <strong>Oops!</strong> Không có bản ghi nào!--%>
                        <%--        </div>--%>

                        <%--    </c:if>--%>
                    </div>
                    <c:if test="${check == 0}">
                    <div class="container">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">

                                <c:forEach begin="0" end="${mayTinhPage.totalPages - 1}" var="page">
                                    <li class="page-item">
                                        <a class="page-link ${mayTinhPage.number == page?'active':''}"
                                           href="/admin/may-tinh/list-mt?page=${page}">${page + 1}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </nav>
                    </div>
                    </c:if>
                    <c:if test="${check == 1}">
                    <div class="container">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">

                                <c:forEach begin="0" end="${mayTinhPage.totalPages - 1}" var="page">
                                    <li class="page-item">
                                        <a class="page-link ${mayTinhPage.number == page?'active':''}"
                                           href="/admin/may-tinh/search?page=${page}&tenSP=${searchMayTinh.tenSP}&min=${searchMayTinh.min}&max=${searchMayTinh.max}">${page + 1}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </nav>
                    </div>
                    </c:if>

                    <c:if test="${check == 2}">
                    <div class="container">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">

                                <c:forEach begin="0" end="${mayTinhPage.totalPages - 1<0?0:mayTinhPage.totalPages - 1}"
                                           var="page">
                                    <li class="page-item">
                                        <a class="page-link ${mayTinhPage.number == page?'active':''}"
                                           href="/admin/may-tinh/filter?page=${page}&mauSac=${filterMT.mauSac}&ram=${filterMT.ram}&cpu=${filterMT.cpu}&giaBan=${filterMT.giaBan}">${page + 1}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </nav>
                    </div>
                    </c:if>
                    <c:if test="${isADD}">
                    <script>
                        alert("Thêm thành công !")
                    </script>
                    </c:if>
                    <c:if test="${isUpdate}">
                    <script>
                        alert("Update thành công !")
                    </script>
                    </c:if>

                    <script>
                        function showConfirm(id) {
                            // if (confirm("Xác nhận xóa  ?")) {
                            //     window.location.href = "/may-tinh/delete-id=" + id;
                            // }
                            let op = confirm("Bạn có muốn xóa ?")
                            if (op === true) {
                                window.location.href = "/admin/may-tinh/delete-" + id;
                                alert("Xóa thành công rồi đấy")
                            }
                        }

                        // function checkNull(idInput, idMessage) {
                        //     const input = document.getElementById(idInput);
                        //     const message = document.getElementById(idMessage);

                        // if (input.value === '') {
                        //     message.innerHTML = 'Không được để trống!';
                        // } else {
                        //     message.innerHTML = '';
                        // }
                        // }

                        <c:if test="${checkSuccess == 1}">
                        alert("Success!");
                        </c:if>
                        <c:if test="${checkSuccess == 0}">
                        alert("Failed!");
                        </c:if>
                    </script>

                    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
                            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
                            crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
                            integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
                            crossorigin="anonymous"></script>
</body>
</html>