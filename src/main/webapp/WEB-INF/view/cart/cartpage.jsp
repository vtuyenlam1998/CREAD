<%--
  Created by IntelliJ IDEA.
  User: defaultuser0
  Date: 4/28/2023
  Time: 9:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <!-- Font Awesome -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <!-- MDB -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
            rel="stylesheet"
    />
    <!-- MDB -->
    <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
    ></script>

    <style>
        @media (min-width: 1025px) {
            .h-custom {
                height: 100vh !important;
            }
        }

        .number-input input[type="number"] {
            -webkit-appearance: textfield;
            -moz-appearance: textfield;
            appearance: textfield;
        }

        .number-input input[type=number]::-webkit-inner-spin-button,
        .number-input input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
        }

        .number-input button {
            -webkit-appearance: none;
            background-color: transparent;
            border: none;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            margin: 0;
            position: relative;
        }

        .number-input button:before,
        .number-input button:after {
            display: inline-block;
            position: absolute;
            content: '';
            height: 2px;
            transform: translate(-50%, -50%);
        }

        .number-input button.plus:after {
            transform: translate(-50%, -50%) rotate(90deg);
        }

        .number-input input[type=number] {
            text-align: center;
        }

        .number-input.number-input {
            border: 1px solid #ced4da;
            width: 10rem;
            border-radius: .25rem;
        }

        .number-input.number-input button {
            width: 2.6rem;
            height: .7rem;
        }

        .number-input.number-input button.minus {
            padding-left: 10px;
        }

        .number-input.number-input button:before,
        .number-input.number-input button:after {
            width: .7rem;
            background-color: #495057;
        }

        .number-input.number-input input[type=number] {
            max-width: 4rem;
            padding: .5rem;
            border: 1px solid #ced4da;
            border-width: 0 1px;
            font-size: 1rem;
            height: 2rem;
            color: #495057;
        }

        @media not all and (min-resolution:.001dpcm) {
            @supports (-webkit-appearance: none) and (stroke-color:transparent) {

                .number-input.def-number-input.safari_only button:before,
                .number-input.def-number-input.safari_only button:after {
                    margin-top: -.3rem;
                }
            }
        }

        .shopping-cart .def-number-input.number-input {
            border: none;
        }

        .shopping-cart .def-number-input.number-input input[type=number] {
            max-width: 2rem;
            border: none;
        }

        .shopping-cart .def-number-input.number-input input[type=number].black-text,
        .shopping-cart .def-number-input.number-input input.btn.btn-link[type=number],
        .shopping-cart .def-number-input.number-input input.md-toast-close-button[type=number]:hover,
        .shopping-cart .def-number-input.number-input input.md-toast-close-button[type=number]:focus {
            color: #212529 !important;
        }

        .shopping-cart .def-number-input.number-input button {
            width: 1rem;
        }

        .shopping-cart .def-number-input.number-input button:before,
        .shopping-cart .def-number-input.number-input button:after {
            width: .5rem;
        }

        .shopping-cart .def-number-input.number-input button.minus:before,
        .shopping-cart .def-number-input.number-input button.minus:after {
            background-color: #9e9e9e;
        }

        .shopping-cart .def-number-input.number-input button.plus:before,
        .shopping-cart .def-number-input.number-input button.plus:after {
            background-color: #4285f4;
        }
    </style>
</head>
<body>
<section class="h-100 h-custom" style="background-color: #eee;">
    <div class="container h-100 py-5">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col">
                <div class="card shopping-cart" style="border-radius: 15px;">
                    <div class="card-body text-black">

                        <div class="row">
                            <div class="col-lg-6 px-5 py-4">

                                <h3 class="mb-5 pt-2 text-center fw-bold text-uppercase">Your products</h3>

                                <div class="d-flex align-items-center mb-5">
                                    <div class="flex-shrink-0">
                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Products/13.webp"
                                             class="img-fluid" style="width: 150px;" alt="Generic placeholder image">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <a href="#!" class="float-end text-black"><i class="fas fa-times"></i></a>
                                        <h5 class="text-primary">Samsung Galaxy M11 64GB</h5>
                                        <h6 style="color: #9e9e9e;">Color: white</h6>
                                        <div class="d-flex align-items-center">
                                            <p class="fw-bold mb-0 me-5 pe-3">799$</p>
                                            <div class="def-number-input number-input safari_only">
                                                <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                        class="minus"></button>
                                                <input class="quantity fw-bold text-black" min="0" name="quantity" value="1"
                                                       type="number">
                                                <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                        class="plus"></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="d-flex align-items-center mb-5">
                                    <div class="flex-shrink-0">
                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Products/6.webp"
                                             class="img-fluid" style="width: 150px;" alt="Generic placeholder image">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <a href="#!" class="float-end text-black"><i class="fas fa-times"></i></a>
                                        <h5 class="text-primary">Headphones Bose 35 II</h5>
                                        <h6 style="color: #9e9e9e;">Color: Red</h6>
                                        <div class="d-flex align-items-center">
                                            <p class="fw-bold mb-0 me-5 pe-3">239$</p>
                                            <div class="def-number-input number-input safari_only">
                                                <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                        class="minus"></button>
                                                <input class="quantity fw-bold text-black" min="0" name="quantity" value="1"
                                                       type="number">
                                                <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                        class="plus"></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="d-flex align-items-center mb-5">
                                    <div class="flex-shrink-0">
                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Products/1.webp"
                                             class="img-fluid" style="width: 150px;" alt="Generic placeholder image">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <a href="#!" class="float-end text-black"><i class="fas fa-times"></i></a>
                                        <h5 class="text-primary">iPad 9.7 6-gen WiFi 32GB</h5>
                                        <h6 style="color: #9e9e9e;">Color: rose pink</h6>
                                        <div class="d-flex align-items-center">
                                            <p class="fw-bold mb-0 me-5 pe-3">659$</p>
                                            <div class="def-number-input number-input safari_only">
                                                <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                        class="minus"></button>
                                                <input class="quantity fw-bold text-black" min="0" name="quantity" value="2"
                                                       type="number">
                                                <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                        class="plus"></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <hr class="mb-4" style="height: 2px; background-color: #1266f1; opacity: 1;">

                                <div class="d-flex justify-content-between px-x">
                                    <p class="fw-bold">Discount:</p>
                                    <p class="fw-bold">95$</p>
                                </div>
                                <div class="d-flex justify-content-between p-2 mb-2" style="background-color: #e1f5fe;">
                                    <h5 class="fw-bold mb-0">Total:</h5>
                                    <h5 class="fw-bold mb-0">2261$</h5>
                                </div>

                            </div>
                            <div class="col-lg-6 px-5 py-4">

                                <h3 class="mb-5 pt-2 text-center fw-bold text-uppercase">Payment</h3>

                                <form class="mb-5" method="get" action="/payment">

                                    <div class="form-outline mb-5">
                                        <input type="text" id="typeText" class="form-control form-control-lg" siez="17"
                                               value="1234 5678 9012 3457" minlength="19" maxlength="19" />
                                        <label class="form-label" for="typeText">Card Number</label>
                                    </div>

                                    <div class="form-outline mb-5">
                                        <input type="text" id="typeName" class="form-control form-control-lg" siez="17"
                                               value="John Smith" />
                                        <label class="form-label" for="typeName">Name on card</label>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-5">
                                            <div class="form-outline">
                                                <input type="text" id="typeExp" class="form-control form-control-lg" value="01/22"
                                                       size="7" id="exp" minlength="7" maxlength="7" />
                                                <label class="form-label" for="typeExp">Expiration</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-5">
                                            <div class="form-outline">
                                                <input type="password" id="typeText" class="form-control form-control-lg"
                                                       value="&#9679;&#9679;&#9679;" size="1" minlength="3" maxlength="3" />
                                                <label class="form-label" for="typeText">Cvv</label>
                                            </div>
                                        </div>
                                    </div>

                                    <p class="mb-5">Bằng cách đặt hàng, bạn đồng ý với <a
                                            href="/term">điều khoản dịch vụ và chính sách quyền riêng tư</a> của chúng tôi.</p>

                                    <button class="btn btn-primary btn-block btn-lg">Buy now</button>

                                    <h5 class="fw-bold mb-5" style="position: absolute; bottom: 0;">
                                        <a href="/home"><i class="fas fa-angle-left me-2"></i>Back to shopping</a>
                                    </h5>

                                </form>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
