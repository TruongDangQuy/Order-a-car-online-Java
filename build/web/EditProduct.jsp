<%-- 
    Document   : EditProduct
    Created on : Aug 31, 2022, 3:43:30 PM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="EditProduct" method="post" enctype="multipart/form-data">
                            <div class="modal-header">						
                                <h4 class="modal-title">S???a ?????i th??ng tin s???n ph???m</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>M?? s???n ph???m</label>
                                    <input value="${up.getMaTP()}" name="MaTP" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>T??n s???n ph???m</label>
                                    <input value="${up.getTenTP()}" name="TenTP" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>H??nh ???nh</label>
                                    <img src="${up.getHinhAnh()}" style="height: 50px;width: 50px">
                                </div>
                                <div class="form-group">
                                    <label>Thay ?????i ???nh</label>
                                    <input value="" type="file" name="HinhAnh" required>
                                </div>
                                <div class="form-group">
                                    <label>Gi?? s???n ph???m</label>
                                    <input value="${up.getGiaTP()}" name="GiaTP" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                <label>????n v??? t??nh</label>                               
                                <select name="DVT" class="form-select" aria-label="Default select example">
                                    <option value="?????ng" ${up.getDVT() == "?????ng"?"selected":""}>?????ng</option>
                                    <option value="$" ${up.getDVT() == "$"?"selected":""}>$</option>
                                    <option value="B???ng anh" ${up.getDVT() == "B???ng anh"?"selected":""}>B???ng anh</option>
                                    <option value="Euro" ${up.getDVT() == "Euro"?"selected":""}>Euro</option>
                                </select>
                            </div>
                                <div class="form-group">
                                    <label>S??? l?????ng</label>
                                    <input value="${up.getSLCon()}" name="SLCon" type="text" class="form-control" required>
                                </div>
                                
                                
                                <div class="form-group">
                                <label>M???t h??ng</label>
                                <select name="MaLoai" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listType}" var="ust">
                                        <option value="${ust.getMaLoai()}">${ust.getTenLoai()}</option>
                                        
                                    </c:forEach>
                                </select>
                            </div>

                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="S???a ?????i">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
