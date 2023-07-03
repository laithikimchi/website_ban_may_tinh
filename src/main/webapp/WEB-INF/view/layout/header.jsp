<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header class="container">
    <div class="row">
        <div class="col-2 mt-0">
            <img src="https://www.logolynx.com/images/logolynx/9d/9d3a1a49aaf9f097cd14fd3e5f3362ff.jpeg" alt="logo"
                 height="60px"/>
        </div>
        <div class="col-5 header_menu">
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/may-tinh">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/tat-ca-sp">Sản phẩm</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user/history">Lịch sử mua hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Giới thiệu</a>
                </li>
            </ul>
        </div>
        <div class="col-5 header_icon">
            <ul class="nav justify-content-center d-flex">
                <li>
                    <form class="d-flex" role="search" method="get" action="/may-tinh/search">
                        <input class="form-control me-2" name="ten" type="search" placeholder="Search"
                               style="width: 120px;"
                               aria-label="Search">
                        <button class="btn btn-primary me-2 text-body" style="color: rgb(3, 1, 12);"
                                type="submit">Search
                        </button>
                    </form>
                </li>
                <c:if test="${sessionScope.nguoiDung == null}">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            <i class="fa-solid fa-user"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/login">Login</a></li>
                        </ul>
                    </li>
                </c:if>
                <c:if test="${sessionScope.nguoiDung != null}">
                    <li class="nav-item dropdown">
                        <a class="text-dark nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            <i class="fa-solid fa-user"></i>
                            Xin chào, ${sessionScope.nguoiDung.name}
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/logout">Logout</a></li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#exampleModal">Update
                                account</a></li>
                        </ul>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link" href="/gio-hang">
                        <div class="cart-icon">
                            <i class="fas fa-shopping-cart"></i>
                            <span class="cart-count">${count}</span>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</header>