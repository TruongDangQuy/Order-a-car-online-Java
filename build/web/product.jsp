<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đặt hàng</title>

        <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="edit/product.css">

    </head>
    <body>

        <!-- header section starts  -->

        <header class="header">

            <a href="#" class="logo"> <i class="fas fa-shopping-basket"></i> Mua sắm </a>

            <nav class="navbar">
                <a href="services.jsp">Trang chủ</a>
                <a href="ProductServlet">Thực phẩm</a>
                <a href="#">Hàng hoá</a>
                <a href="#">Đồ ăn</a>
                <a href="ManageProductServlet">Quản lý hàng hoá</a>
                <a>${sessionScope.acc.getSoDienThoai()}</a>
            </nav>

            <div class="icons">
                <div class="fas fa-bars" id="menu-btn"></div>
                <div class="fas fa-search" id="search-btn"></div>
                <div class="fas fa-shopping-cart" id="cart-btn"></div>
                <div class="fas fa-user" id="login-btn"></div>
            </div>

            <form action="SearchProduct" method="get" class="search-form">
                <input type="search" id="search-box" placeholder="Tìm kiếm..." name="tab">
                <button><label for="search-box" class="fas fa-search"></label></button>
            </form>

            <div class="shopping-cart">
                <div class="box">
                    <i class="fas fa-trash"></i>
                    <img src="image/cart-img-1.png" alt="">
                    <div class="content">
                        <h3>watermelon</h3>
                        <span class="price">$4.99/-</span>
                        <span class="quantity">qty : 1</span>
                    </div>
                </div>
                <div class="box">
                    <i class="fas fa-trash"></i>
                    <img src="image/cart-img-2.png" alt="">
                    <div class="content">
                        <h3>onion</h3>
                        <span class="price">$4.99/-</span>
                        <span class="quantity">qty : 1</span>
                    </div>
                </div>
                <div class="box">
                    <i class="fas fa-trash"></i>
                    <img src="image/cart-img-3.png" alt="">
                    <div class="content">
                        <h3>chicken</h3>
                        <span class="price">$4.99/-</span>
                        <span class="quantity">qty : 1</span>
                    </div>
                </div>
                <div class="total"> total : $19.69/- </div>
                <a href="#" class="btn">checkout</a>
            </div>

            <form action="" class="login-form">
                <h3>login now</h3>
                <input type="email" placeholder="your email" class="box">
                <input type="password" placeholder="your password" class="box">
                <p>forget your password <a href="#">click here</a></p>
                <p>don't have an account <a href="#">create now</a></p>
                <input type="submit" value="login now" class="btn">
            </form>

        </header>

        <!-- header section ends -->

        <!-- home section starts  -->

        <section class="home" id="home">
            <div class="content">
                <h3>Nhóm các loại <span>thực phẩm</span> dành cho bạn</h3>
                <c:forEach items="${listType}" var="ust">
                    <a href="TypeServlet?tid=${ust.getMaLoai()}" class="btn" ><p>${ust.getTenLoai()}</p></a>
                </c:forEach>
            </div>
        </section>
        <!-- home section ends -->      
        <!-- products section starts  -->
        <section class="products" id="products">

            <h1 class="heading"> Sản phẩm <span>hữu cơ tươi ngon</span> </h1>          
            <div class="swiper product-slider">

                <div class="swiper-wrapper">
                    <c:forEach items="${listProduct}" var="product">
                        <div class="swiper-slide box">                           
                            <img src="${product.getHinhAnh()}" alt="">
                            <h3>${product.getTenTP()}</h3>
                            <div class="price">${product.getGiaTP()} ${product.getDVT()} </div>
                            <div class="price">Số lượng: ${product.getSLCon()}</div>
                            <input type="hidden" value=${product.getMaTP()}>
                            <input type="hidden" value=${product.getMaLoai()}>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                            <a href="Cart.jsp" class="btn">Thêm vào giỏ</a>                           
                        </div>
                    </c:forEach>                                                                           
                </div>

            </div>


        </section>

        <!-- products section ends -->
        <!-- categories section starts  -->
        <section class="products" id="products">
            <div class="swiper product-slider">
                <h1 class="heading"> Top 5 sản phẩm <span>mới nhất</span> </h1>
                <div class="swiper-wrapper">
                    <c:forEach items="${listLast}" var="product">
                        <div class="swiper-slide box">                           
                            <img src="${product.getHinhAnh()}" alt="">
                            <h3>${product.getTenTP()}</h3>
                            <div class="price">${product.getGiaTP()} ${product.getDVT()} </div>
                            <div class="price">Số lượng: ${product.getSLCon()}</div>
                            <input type="hidden" value=${product.getMaTP()}>
                            <input type="hidden" value=${product.getMaLoai()}>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                            <a href="#" class="btn">Thêm vào giỏ</a>                           
                        </div>
                    </c:forEach>
                </div><!-- comment -->
            </div>
        </section>
        <!-- categories section ends -->

        <!-- review section starts  -->

        <section class="review" id="review">

            <h1 class="heading"> customer's <span>review</span> </h1>

            <div class="swiper review-slider">

                <div class="swiper-wrapper">

                    <div class="swiper-slide box">
                        <img src="image/pic-1.png" alt="">
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>

                    <div class="swiper-slide box">
                        <img src="image/pic-2.png" alt="">
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>

                    <div class="swiper-slide box">
                        <img src="image/pic-3.png" alt="">
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>

                    <div class="swiper-slide box">
                        <img src="image/pic-4.png" alt="">
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>

                </div>

            </div>

        </section>

        <!-- review section ends -->

















        <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

        <!-- custom js file link  -->
        <script src="js/product.js"></script>

    </body>
</html>