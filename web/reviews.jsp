<%-- 
    Document   : reviews
    Created on : Aug 2, 2022, 7:53:51 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="edit/style.css">
    </head>
    <body>
        <header class="header">

            <div id="menu-btn" class="fas fa-bars"></div>

            <a href="#" class="logo"> <span>Đánh giá</span> từ khách hàng  </a>

            <nav class="navbar">
                <a href="services.jsp">Dịch vụ</a>
                <a href="reviews.jsp">Đánh giá</a>
                <a href="contact.jsp">Liên hệ</a>
                <a>${sessionScope.acc.getSoDienThoai()}</a>
            </nav>

            <div id="login-btn">
                <a href="LogOutServlet"><button class="btn">Đăng xuất</button></a>
                <i class="far fa-user"></i>
            </div>

        </header> 
        <div class="login-form-container">

            <span id="close-login-form" class="fas fa-times"></span>

            <form action="">
                <h3>Đăng Nhập</h3>
                <input placeholder="Số Điện Thoại" class="box">
                <input type="password" placeholder="Mật Khẩu" class="box">
                <p> forget your password <a href="#">click here</a> </p>
                <input type="submit" value="login" class="btn">
                <p>or login with</p>
                <div class="buttons">
                    <a href="#" class="btn"> google </a>
                    <a href="#" class="btn"> facebook </a>
                </div>
                <p> Không có tài khoản ư, <a href="#">Đăng ký tại đây!</a> </p>
            </form>

        </div>
        <section class="reviews" id="reviews">

    <h1 class="heading"> client's <span>review</span> </h1>

    <div class="swiper review-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="image/th.jpg" alt="">
                <div class="content">
                    <p>Rất tốt</p>
                    <h3>User1</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/book-5.png" alt="">
                <div class="content">
                    <p>Rất tốt</p>
                    <h3>User2</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/book-7.png" alt="">
                <div class="content">
                    <p>Rất tốt.</p>
                    <h3>User3</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/book-8.png" alt="">
                <div class="content">
                    <p>Rất tốt.</p>
                    <h3>User4</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/book-5.png" alt="">
                <div class="content">
                    <p>Rất tốt</p>
                    <h3>User5</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/th.jpg" alt="">
                <div class="content">
                    <p>Rất tốt.</p>
                    <h3>User6</h3>
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

        <div class="swiper-pagination"></div>

    </div>

</section>
        <section class="footer" id="footer">

            <div class="box-container">

                <div class="box">
                    <h3>Có tại</h3>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> india </a>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> japan </a>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> VietNam </a>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> russia </a>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> USA </a>
                </div>

                <div class="box">
                    <h3>Footer</h3>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Footer </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Footer </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Footer </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Footer </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Footer </a>
                    <a href="#"> <i class="fas fa-arrow-right"></i> Footer </a>
                </div>

                <div class="box">
                    <h3>Footer</h3>
                    <a href="#"> <i class="fas fa-phone"></i> Footer </a>
                    <a href="#"> <i class="fas fa-phone"></i> Footer </a>
                    <a href="#"> <i class="fas fa-envelope"></i> Footer </a>
                    <a href="#"> <i class="fas fa-map-marker-alt"></i> Footer </a>
                </div>

                <div class="box">
                    <h3>Tham khảo tại</h3>
                    <a href="#"> <i class="fab fa-facebook-f"></i> Facebook </a>
                    <a href="#"> <i class="fab fa-twitter"></i> Twitter </a>
                    <a href="#"> <i class="fab fa-instagram"></i> Instagram </a>
                    <a href="#"> <i class="fab fa-tiktok"></i> Tiktok </a>
                    <a href="#"> <i class="fab fa-youtube"></i> Youtube </a>
                </div>

            </div>

            <div class="credit"> Dịch vụ đặt xe công nghệ cao </div>

        </section>
        
       
    </body>
</html>
