<%-- 
    Document   : Signin
    Created on : Oct 6, 2021, 2:24:23 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>ĐĂNG KÝ</title>
        <link rel="stylesheet" href="edit/signin.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="title">
                Đăng ký
            </div>
            <form method="post" action="SignInServlet">

                <div class="field">
                    <input type="text"  name="SoDienThoai" required>
                    <label>Số điện thoại</label>
                </div>
                <div class="field">
                    <input type="password" name="MatKhau" required>
                    <label>Mật khẩu</label>
                </div>
                <div class="field">
                    <input type="submit"  value="Đăng ký">
                </div>
                <div class="signup-link">
                    <a href="Login.jsp">Đăng nhập ngay</a>
                    <br><a href="index.jsp">Quay về trang chủ</a>
                </div>
            </form>
        </div>
</body>
</html>
