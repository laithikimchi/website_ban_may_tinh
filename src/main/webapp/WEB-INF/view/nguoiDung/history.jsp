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


<section class="pay-ment container w-75 mt-5">
    <div class="row bg-light">
        <div class=" p-4">
            <table class="table table-borderless">
                <thead>
                <tr>
                    <td>Sản phẩm</td>
                    <td>Đơn giá</td>
                    <td>Số lượng</td>
                    <td>Trạng thái</td>
                    <td>Thành tiền</td>
                    <td>Thao tác</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="x" items="${history}">
                    <tr>

                        <td><img alt="${ x.id }" src="/resources/image/${ x.image }" width="50"
                                 height="50"/> ${x.name}</td>
                        <td>${ x.price }</td>
                        <td>${ x.quantity }</td>
                        <td>${x.status == 1? 'chờ xác nhận' : x.status == 2 ? 'đã xác nhận' : x.status == 3 ? 'đã nhận được hàng' :'đã hũy'}</td>
                        <td>${x.price * x.quantity }</td>
                        <td>
                            <a class="btn btn-danger" href="/user/cancel/${x.id}">
                                <i class="fa-solid fa-trash-can"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="row total">
                <div class="col-3">
                    <h4>Tổng tiền : <span class="text-danger">${ a } VND</span></h4>
                </div>
                <div class="col-3 offset-6">
                    <a class="btn btn-success w-50" href="/order">Đã nhận được hàng</a>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>


<jsp:include page="../layout/footer.jsp"/>
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