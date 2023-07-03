<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer class="text-center text-lg-start bg-light text-muted">
    <!-- Section: Social media -->
    <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
        <!-- Left -->
        <div class="me-5 d-none d-lg-block">
            <span>Get connected with us on social networks:</span>
        </div>
        <!-- Left -->

        <!-- Right -->
        <div>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-twitter"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-google"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-instagram"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-linkedin"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-github"></i>
            </a>
        </div>
        <!-- Right -->
    </section>
    <section class="">
        <div class="container text-center text-md-start mt-3">
            <!-- Grid row -->
            <div class="row mt-3">
                <!-- Grid column -->
                <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                    <!-- Content -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        <img src="https://www.logolynx.com/images/logolynx/9d/9d3a1a49aaf9f097cd14fd3e5f3362ff.jpeg"
                             alt="logo" height="60px"/>
                        Company name
                    </h6>
                    <p>Mua máy tính đi<br>
                        Máy tính đẹp lắm !</p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">Products</h6>
                    <p>
                        <a href="#!" class="text-reset">Angular</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">React</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Vue</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Laravel</a>
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
                    <p>
                        <a href="#!" class="text-reset">Pricing</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Settings</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Orders</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Help</a>
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                    <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
                    <p>
                        <i class="fas fa-envelope me-3"></i>
                        info@example.com
                    </p>
                    <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                    <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                </div>
                <!-- Grid column -->
            </div>
            <!-- Grid row -->
        </div>
    </section>
    <!-- Button trigger modal -->


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="/may-tinh" method="post" id="formUpdate">
                        <input type="text" name="id" value="${sessionScope.nguoiDung.id}" hidden>
                        <div class="form-group">
                            <label>Tên </label>
                            <input class="form-control" required minlength="6" type="text" name="name"
                                   value="${sessionScope.nguoiDung.name}">
                        </div>
                        <div class="form-group">
                            <label>Tên đăng nhập</label>
                            <input class="form-control" required minlength="6" type="text" name="account"
                                   value="${sessionScope.nguoiDung.account}">
                        </div>
                        <div class="form-group">
                            <label>Số điện thoại</label>
                            <input class="form-control" required minlength="6" type="text" name="phoneNumber"
                                   value="${sessionScope.nguoiDung.phoneNumber}">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input class="form-control" required type="email" name="email"
                                   value="${sessionScope.nguoiDung.email}">
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ</label>
                            <input class="form-control" required type="address" name="address"
                                   value="${sessionScope.nguoiDung.address}">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input class="form-control" required minlength="6" type="password" name="password"
                                   value="${sessionScope.nguoiDung.password}">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" form="formUpdate" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div class="text-center p-4" style="background-category: rgba(0, 0, 0, 0.05)">
        © 2021 Copyright:
        <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
</footer>