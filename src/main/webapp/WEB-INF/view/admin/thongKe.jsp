<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <title>Title</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link rel="stylesheet" href="../../public/style.css">
</head>

<body>
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

<div class="table-responsive mt-3">
    <canvas id="myChart"></canvas>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<div class="table-responsive mt-3">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Tên</th>
            <th>So lượng</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="x" items="${list}">
            <tr>
                <td>${x.ten}</td>
                <td>${x.sl}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script>
    var labels = [<c:forEach items="${labelTop10}" var="item">"${item}", </c:forEach>];
    var values = [<c:forEach items="${valueTop10}" var="item">"${item}", </c:forEach>];

    // Tạo biểu đồ cột
    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Số lượng bán ra',
                data: values,
                backgroundColor: 'rgba(54, 162, 235, 0.😎', // Màu nền cột
                borderColor: 'rgba(54, 162, 235, 1)', // Màu viền cột
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            },
            plugins: {
                title: {
                    display: true,
                    text: 'Top 10 sản phẩm bán chạy nhất'
                }
            }
        }
    });
</script>
</body>
</html>