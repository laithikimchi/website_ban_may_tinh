<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <link rel="icon" href="/public/images/logo-ico.svg"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        .active {
            background-color: #81c8c2;
            color: #ffffff;
        }

        i {
            color: #000000;
        }

        .i {
            margin-left: 15px;
        }
    </style>

</head>
<body>
<div class="container-fluid">
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
                    <section class="cart">
                        <div class="container mt-3">
                            <h1 class="text-center text-dark">Hóa đơn</h1>
                            <div class="row bg-light">
                                <div class="table-responsive p-4" style="overflow-x: auto">
                                    <table class="table table-borderless">
                                        <thead>
                                        <tr>
                                            <td>Mã hóa đơn</td>
                                            <td>Id user</td>
                                            <td>Sản phẩm</td>
                                            <td>Đơn giá</td>
                                            <td>Số lượng</td>
                                            <td>Trạng thái</td>
                                            <td>Thành tiền</td>
                                            <td>###</td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="x" items="${listAllOrder.content}">
                                            <tr>
                                                <td>${x.orderId}</td>
                                                <td>${x.userId}</td>
                                                <td>${x.productName}</td>
                                                <td>${ x.price }</td>
                                                <td>${ x.quantity }</td>
                                                <td class="fw-500"> ${x.status == 1? 'chờ xác nhận' : x.status == 2 ? 'đã xác nhận' : x.status == 3 ? 'đã nhận được hàng' :'đã hũy'}</td>
                                                <td>${x.price * x.quantity }</td>
                                                <td>
                                                    <a class="btn btn-success" href="/admin/order/confirm/${x.orderId}"
                                                       style="${x.status == 1  ? '' : 'display:none'}">
                                                        <i class="fa-solid fa-check"></i> </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="container">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination">
                                        <c:forEach begin="0" end="${listAllOrder.totalPages - 1}" var="page">
                                            <li class="page-item">
                                                <a class="page-link ${listAllOrder.number == page?'active':''}"
                                                   href="/admin/order?page=${page}">${page + 1}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </section>
            </div>
        </div>
    </div>

    <link rel="stylesheet" href="../../../public">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
