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

            <a href="#" class="logo"> <span>Dịch vụ</span> đặt xe công nghệ </a>

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

        
        <section class="services" id="services">

            <h1 class="heading"> our <span>services</span> </h1>

            <div class="box-container">

                <div class="box">
                    <i class="fas fa-motorcycle"></i>
                    <h3>Đặt xe máy</h3>
                    <p>Tìm chuyến xe bạn muốn đi, thông tin bao gồm quãng đường và giá tiền, dịch vụ xe 2 bánh.</p>
                    <a href="google map.jsp" class="btn"> Đặt ngay</a>
                </div>
                <div class="box">
                    <i class="fas fa-car"></i>
                    <h3>Đặt xe hơi</h3>
                    <p>Tìm chuyến xe bạn muốn đi, thông tin bao gồm quãng đường và giá tiền, dịch vụ xe 4 bánh.</p>
                    <a href="google map 2.jsp" class="btn"> Đặt ngay</a>
                </div>
                <div class="box">
                    <i class="fas fa-shopping-cart"></i>
                    <h3>Đặt hàng</h3>
                    <p>Tìm món hàng bạn muốn đặt, bao gồm(túi xách,giày dép,quần áo...).</p>
                    <a href="ProductServlet" class="btn"> Đặt ngay</a>
                </div>               
                <div class="box">
                    <i class="fas fa-user"></i>
                    <h3>Thông tin cá nhân</h3>
                    <p>Xem, tuỳ chỉnh thông tin cá nhân.</p>
                    <a href="PersonServlet?ac=${sessionScope.acc.getSoDienThoai()}" class="btn"> Xem</a>
                </div>

                <div class="box">
                    <i class="fas fa-user"></i>
                    <h3>Lịch sử đặt</h3>
                    <p>Thông tin chi tiết về các chuyến xe, hàng hoá,đồ ăn đã đặt.</p>
                    <a href="InformationServlet" class="btn"> Xem</a>
                </div>

                <div class="box">
                    <i class="fas fa-money-check"></i>
                    <h3>Thanh toán</h3>
                    <p>Hỗ trợ thanh toán tiền mặt,momo,internet banking...</p>
                    <a href="Payment.jsp" class="btn"> Thanh toán</a>
                </div>

            </div>

        </section>
    </body>
