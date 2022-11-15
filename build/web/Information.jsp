<%-- 
    Document   : Information
    Created on : Aug 6, 2022, 10:58:24 AM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lịch sử đặt xe</title>
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <!--File CSS-->
        <link rel="stylesheet" href="edit/table.css">
    </head>
    <body>
        <section>
            <form action="SearchInformationServlet" method="GET">
            <input type="search" placeholder="Search..." name="tab">
            <td colspan="2"><button class="favorite styled" type="submit">Tìm kiếm</button><button class="favorite styled" type="reset">Đặt lại</button></td>
        </form>
            <h1>Lịch sử đặt xe</h1>
            <p style="color: red;">${errorString}</p>
            <div class="tbl-header">
                <table cellpadding="6" cellspacing="6" border="5">
                    <thead>
                        <tr>
                            <th>Mã đặt xe</th>
                            <th>Số điện thoại</th>
                            <th>Điểm đón</th>
                            <th>Điểm đến</th>
                            <th>Số km</th>
                            <th>Thời gian</th>
                            <th>Thành tiền</th>
                            <th>Loại xe</th>
                            <th>Ngày Giờ Đặt</th>
                            <th>Tuỳ chỉnh</th>
                        </tr>
                    </thead>
                </table>
            </div>
            <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tbody>
                        <c:forEach items="${informationList}" var="userInformation"> 
                            <tr>
                                <td>${userInformation.getMaDatXe()}</td>
                                <td>${userInformation.getSoDienThoai()}</td>
                                <td>${userInformation.getDiemDon()}</td>
                                <td>${userInformation.getDiemDen()}</td>
                                <td>${userInformation.getSoKm()}</td>
                                <td>${userInformation.getThoiGian()}</td>
                                <td>${userInformation.getThanhTien()}</td>
                                <td>${userInformation.getLoaiXe()}</td>
                                <td>${userInformation.getNgayGioDat()}</td>
                                <td>

                                    <a href="DeleteInformation?code=${userInformation.getMaDatXe()}" onclick="showMess(${userInformation.getMaDatXe()})"><button class="favorite styled" type="button">Xóa bỏ</button></a>

                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>
        <a href="services.jsp"><button class="favorite styled" type="button">Back To Home</button></a>
    </body>
    <script>
        function showMess(idprice){
            var option = confirm('Xoá thông tin này?');
            if (option ===true){
                window.location.href= 'DeleteInformation?code='+getMaDatXe();
            }
            else{
                window.close();
            }
        }
    </script>
    <script src=""></script>
</html>
