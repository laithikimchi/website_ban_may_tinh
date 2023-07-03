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

<jsp:include page="../layout/header.jsp"/>

<div class="container">
    <form:form action="/add-cart" method="post" modelAttribute="gioHang">
        <form:input path="productId" type="hidden" value="${ detail.id }"/>
        <form:input path="giaBan" type="hidden" value="${ detail.giaBan}"/>
        <div class="row gy-1 p-5">
            <div class="col-6 p-2">
                <img alt="${ detail.ten }" src="/resources/image/${ detail.url }" class="w-100"/>
            </div>
            <div class="col-6 px-5">
                <h1>${ detail.ten }</h1>
                <h4 class="text-danger fw-bold">
                        ${ detail.giaBan }
                    <span>VND</span>
                </h4>

                <h5>Mô tả : <span class="text-secondary">${ detail.moTa }</span></h5>

                <h5>Trạng thái : <span class="text-secondary">${ detail.sl >= 1 ?'Còn hàng':'Hết hàng' }</span></h5>

                <h5>Số lượng :</h5>
                <nav aria-label="Page navigation example">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <button class="btn btn-outline-secondary" type="button" id="button-addon1"
                                    onclick="decreaseValue()">-
                            </button>
                        </div>
                        <form:input type="number" class="input-number" placeholder="Số lượng" aria-label="Số lượng"
                                    aria-describedby="button-addon1" id="quantity" min="1" max="10" value="1"
                                    path="sl"/>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button" id="button-addon2"
                                    onclick="increaseValue()">+
                            </button>
                        </div>
                    </div>
                </nav>
                <button class="btn btn-info w-50 text-white" type="submit">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <span>ADD TO CART</span>
                </button>
            </div>
        </div>
    </form:form>
</div>


<jsp:include page="../layout/footer.jsp"/>
<c:if test="${isSl}">
    <script>
        alert("Số lượng không đủ !")
    </script>
</c:if>
<!-- Footer -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"
></script>
<script>
    function increaseValue() {
        let value = parseInt(document.getElementById('quantity').value, 10);
        value = isNaN(value) ? 0 : value;
        value++;
        document.getElementById('quantity').value = value;
    }

    function decreaseValue() {
        let value = parseInt(document.getElementById('quantity').value, 10);
        value = isNaN(value) ? 0 : value;
        value < 2 ? value = 1 : '';
        value--;
        document.getElementById('quantity').value = value;
    }
</script>
<!-- Bootstrap JavaScript Libraries -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous">
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
        crossorigin="anonymous">
</script>
</body>

</html>