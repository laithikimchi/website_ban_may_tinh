<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<jsp:include page="layout/header.jsp"/>
<section class="line text-center">
    <span class="text-white title"></span>
</section>
<section class="banner">
    <img src="https://i.pinimg.com/originals/ef/80/83/ef8083bfe79088dc00bd8eca9c821cd5.jpg" alt="banner"/>
</section>

<div class=" mt-2 ">
    <section class="product">
        <div class="row container">
            <c:forEach items="${listProduct}" end="5" var="x">
                <div class="col-sm-4 mt-3 ">
                    <div class="card">
                        <a href=""><img style="height: 250px" src="/resources/image/${x.url}"
                                        class="card-img-top" alt="${x.ten}"/></a>
                        <div class="card-body">
                            <p class="card-text text-center">
                                <strong><a style="color: red;"> <span>${x.ten}</span> </a></strong>

                                <br/>
                                <strong><span>${x.giaBan}</span><span>.000 VND</span></strong>
                            <div class="mt-2 mb-4 m-5  text-center">
                                <a name="" id="" class="btn btn-primary " href="/may-tinh/chi-tiet-SP/${x.id}"
                                   role="button">Xem thêm</a>
                            </div>
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>
</div>

<jsp:include page="layout/footer.jsp"/>
<!-- Footer -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"
></script>
<!-- Bootstrap JavaScript Libraries -->

</body>

</html>