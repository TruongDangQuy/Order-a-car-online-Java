<%-- 
    Document   : contact
    Created on : Aug 2, 2022, 7:54:07 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="edit/style.css">

    </head>
    <body>
        <header class="header">

            <div id="menu-btn" class="fas fa-bars"></div>

            <a href="#" class="logo"> <span>Liên hệ</span> với chúng tôi </a>

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
        <section class="contact" id="contact">

            <h1 class="heading"><span>contact</span> us</h1>

            <div class="row">

                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7838.217522070629!2d106.71438140000001!3d10.802981400000013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1659535296152!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                <form action="">
                    <h3>Liên Hệ</h3>
                    <input type="text" placeholder="Họ tên" class="box">
                    <input type="email" placeholder="Email" class="box">
                    <input type="tel" placeholder="Số điện thoại" class="box">
                    <textarea placeholder="Lời nhắn" class="box" cols="30" rows="10"></textarea>
                    <input type="submit" value="Gửi" class="btn">
                </form>

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
        <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

        <script src="script.js"></script>
    </body>
</html>
