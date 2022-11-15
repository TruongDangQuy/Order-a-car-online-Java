<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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

            <a href="index.jsp" class="logo"> <span>Dịch Vụ</span> Đặt Xe Công Nghệ </a>

            <nav class="navbar">
                <a href="index.jsp"><span>Trang chủ</span></a>
            </nav>

            <div id="login-btn">
                <button class="btn">Đăng Nhập</button>
                <i class="far fa-user"></i>
            </div>

        </header> 

        <div class="login-form-container">

            <span id="close-login-form" class="fas fa-times"></span>

            <form method="post" action="LogInServlet">
                <h3>Đăng Nhập</h3>
                <input name="SoDienThoai" placeholder="Số Điện Thoại" class="box">
                <input type="password" name="MatKhau" placeholder="Mật Khẩu" class="box">
                <input type="submit" value="Đăng nhập" class="btn">
                <p>Đăng nhập với</p>
                <div class="buttons">
                    <a href="#" class="btn"> google </a>
                    <a href="#" class="btn"> facebook </a>
                </div>
                <p> Không có tài khoản ư, <a href="Signin.jsp">Đăng ký tại đây!</a> </p>
            </form>

        </div>

        <section class="home" id="home">

            <h3 data-speed="-2" class="home-parallax">Di chuyển mọi nơi</h3>

            <img data-speed="5" class="home-parallax" src="image/vehicle-4.png" width="100" height="400" alt="">

            <a data-speed="7" href="Login.jsp" class="btn home-parallax">Đặt Xe Ngay</a>

        </section>

        <section class="icons-container">

            <div class="icons">
                <i class="fas fa-home"></i>
                <div class="content">
                    <h3>150+</h3>
                    <p>Chi nhánh</p>
                </div>
            </div>

            <div class="icons">
                <i class="fas fa-car"></i>
                <div class="content">
                    <h3>4770+</h3>
                    <p>Dịch vụ</p>
                </div>
            </div>

            <div class="icons">
                <i class="fas fa-users"></i>
                <div class="content">
                    <h3>320+</h3>
                    <p>Chăm sóc khách hàng</p>
                </div>
            </div>

            <div class="icons">
                <i class="fas fa-car"></i>
                <div class="content">
                    <h3>1500+</h3>
                    <p>Phương tiện di chuyển</p>
                </div>
            </div>

        </section>

        <section class="vehicles" id="vehicles">

            <h1 class="heading"> Phương tiện <span>di chuyển</span> </h1>

            <div class="swiper vehicles-slider">

                <div class="swiper-wrapper">

                    <div class="swiper-slide box">
                        <img src="image/vehicle-1.png" alt="">
                        
                    </div>

                    <div class="swiper-slide box">
                        <img src="image/vehicle-2.png" alt="">
                        
                    </div>

                    <div class="swiper-slide box">
                        <img src="image/vehicle-3.png" alt="">
                        
                    </div>

                    <div class="swiper-slide box">
                        <img src="image/vehicle-4.png" alt="">
                        
                    </div>

                    <div class="swiper-slide box">
                        <img src="image/vehicle-5.png" alt="">
                        
                    </div>

                    <div class="swiper-slide box">
                        <img src="image/vehicle-6.png" alt="">
                        
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










        <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

        <script src="script.js"></script>

    </body>
</html>