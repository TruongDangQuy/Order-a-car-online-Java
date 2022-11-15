<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Đặt xe máy</title>
    
    <link rel="stylesheet" href="styles/bootstrap.min.css" />

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" href="styles/ie10-viewport-bug-workaround.css" />

    <link rel="stylesheet" href="styles/style.min.css" />

    
    <script src="scripts/jquery-1.11.2.min.js"></script>
    
    <script src="scripts/bootstrap.min.js"></script><!-- comment -->
    
    <script src="scripts/ie10-viewport-bug-workaround.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Poppins:500&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg&libraries=places"></script>
     
    <script src="scripts/googleMap.min.js"></script>
</head>

<body>
    
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="google map.jsp">Đặt xe máy</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav navbar-right">
                <!--
                <li><a href="./settings.html">Settigns</a></li>
                <li><a href="./logout.html">Logout</a></li>
                -->
              </ul>
            </div>
        </div>
    </nav>
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 location-form">
                <form id="frmLocation" action="" role="form">
                    <div class="panel-group" id="locationDetails" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="locationDetailsHeading">
                                <h4 class="panel-title">
                                    <span class="glyphicon glyphicon-edit"></span>
                                    <a role="button" data-toggle="collapse" data-parent="#locationDetails" href="#locationSection" aria-expanded="true" aria-controls="locationSection">
                                        Thông tin vị trí
                                    </a>
                                    <div class="checkbox pull-right">
                                        <label>
                                            <input id="chkOptimizePath" type="checkbox" />
                                            Tối ưu hóa chỉ dẫn
                                        </label>
                                    </div>
                                </h4>
                            </div>
                            <div id="locationSection" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="locationDetailsHeading">
                                <div class="panel-body">
                                    <div id="locations"></div>

                                    <div class="form-group">
                                        <button id="btnAddLocation" type="button" class="col-xs-6 btn btn-success">
                                            <span class="glyphicon glyphicon-plus-sign"></span> Thêm vị trí
                                        </button>
                                        <button id="btnClearDirections" type="button" class="col-xs-5 btn btn-danger">
                                            <span class="glyphicon glyphicon-remove-sign"></span> Đặt lại
                                        </button>
                                        <button id="btnCalculateFare" type="button" class="col-xs-6 btn btn-primary">
                                            <span class="glyphicon glyphicon-ok-sign"></span> Giá tiền
                                        </button>
                                        <button id="btnGetJson" type="button" class="col-xs-5 btn btn-primary">
                                            <span class="glyphicon glyphicon-ok-sign"></span> Xem thông tin
                                        </button>
                                        <button id="btnBooking" type="button" class="col-xs-6 btn btn-success">
                                            <span class="glyphicon glyphicon-plus-sign"></span> Đặt ngay 
                                        </button>
                                        <a href="services.jsp">
                                            <button id="btnAddLocation" type="button" class="col-xs-5 btn btn-success">
                                                <span class="glyphicon glyphicon-plus-sign"></span>Quay lại trang
                                            </button>
                                        </a>
                                        
                                        
                                        <label for="card">
                                            <i class="fa fa-credit-card" aria-hidden="true"></i>
                                            <a href="Payment.jsp"><button class="favorite styled" type="button">Qua thẻ</button></a>
                                        </label>
                                        <input type="radio" name="payment" id="cash">
                                        <label for="cash">
                                            <i class="fa fa-money" aria-hidden="true"></i>		
                                            <span>Tiền mặt</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel-group fare-details-group" id="fareDetails" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="fareDetailsHeading">
                                <h4 class="panel-title">
                                    <span class="glyphicon glyphicon-th-list"></span>
                                    <a role="button" data-toggle="collapse" data-parent="#fareDetails" href="#fareBreakDown" aria-expanded="true" aria-controls="fareBreakDown">
                                        Giá: <strong><span id="fare"></span></strong>
                                    </a>
                                </h4>
                            </div>
                            <div id="fareBreakDown" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="fareDetailsHeading">
                                <div class="panel-body">
                                    <table class="table">
                                        <tr>
                                            <td>
                                                <span class="glyphicon glyphicon-ok"></span>
                                                <label>Số điện thoại:</label>
                                            </td>
                                            <td>
                                                <span id="phone-number">${sessionScope.acc.getSoDienThoai()}</span>                                           
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="glyphicon glyphicon-ok"></span>
                                                <label>Khoảng cách:</label>
                                            </td>
                                            <td>
                                                <span id="distance"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="glyphicon glyphicon-ok"></span>
                                                <label>Thời gian:</label>
                                            </td>
                                            <td>
                                                <span id="duration"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="glyphicon glyphicon-ok"></span>
                                                <label>Giá khởi đầu:</label>
                                            </td>
                                            <td>
                                                <span id="startingPrice"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="glyphicon glyphicon-ok"></span>
                                                <label>Giá chuyến đi:</label>
                                            </td>
                                            <td>
                                                <span id="travelPrice"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="glyphicon glyphicon-ok"></span>
                                                <label>Tổng cộng:</label>
                                            </td>
                                            <td>
                                                <strong><span id="totalFare"></span></strong>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="glyphicon glyphicon-ok"></span>
                                                <label>Loại xe:</label>
                                            </td>
                                            <td>
                                                <strong><span id="type"></span></strong>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-8 google-map-wrap">
                <div id="googleMap" class="map"></div>
            </div>
        </div>
    </div>
</body>

</html>
