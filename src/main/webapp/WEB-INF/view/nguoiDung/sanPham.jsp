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

<jsp:include page="../layout/header.jsp"/>

<div style="background-color: #f5f5f5">
    <div class="container-fluid mt-2"><br>
        <div class="row ">
            <h3 class="text-center">Sản phẩm</h3>
            <div class="row mt-0 row-cols-md-4 g-4 ">
                <c:forEach items="${ listProduct.content }" var="x">
                    <div class="col">
                        <div class="card h-100">
                            <img style="height: 250px" src="/resources/image/${ x.url }" class="card-img-top"
                                 alt="${ x.ten }">
                            <div class="card-body">
                                <p class="card-text text-center">
                                    <strong><a style="color: red;"> <span>${x.ten}</span> </a></strong>

                                    <br/>
                                    <strong><span>${x.giaBan}</span><span>.000 VND</span></strong>
                                <div class="mt-2 mb-4 m-5  text-center">
                                    <a name="" id="" class="btn btn-primary " href="/may-tinh/chi-tiet-SP/${x.id}"
                                       role="button">Xem thêm</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <%-- Pagination --%>
            <div class="row mt-5">
                <c:if test="${!isCheck}">
                    <ul class="pagination justify-content-center">
                        <c:forEach var="index" begin="0" end="${ listProduct.totalPages - 1 }">
                            <li class="page-item mx-1"><a
                                    class="page-link ${ index==page?'bg-black text-white':'' }"
                                    href="/tat-ca-sp?page=${ index }">${ index + 1 }</a></li>
                        </c:forEach>
                    </ul>
                </c:if>

                <c:if test="${isCheck}">
                    <ul class="pagination justify-content-center">
                        <c:forEach var="index" begin="0" end="${ listProduct.totalPages - 1 }">
                            <li class="page-item mx-1"><a
                                    class="page-link ${ index==page?'bg-black text-white':'' }"
                                    href="/may-tinh/search?page=${ index }&ten=${ten}">${ index + 1 }</a></li>
                        </c:forEach>
                    </ul>
                </c:if>
            </div>
        </div>
    </div>
</div>
</div>


<jsp:include page="../layout/footer.jsp"/>
<!-- Footer -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"
></script>

</body>

</html>