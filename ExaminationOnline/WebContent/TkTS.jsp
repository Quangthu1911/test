<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="BEAN.User"%>
<%@page import="DAO.ListAccountDAO"%>
<!DOCTYPE html>
<html>

<head>
    <title>DANH SACH TÀI KHOẢN THÍ SINH</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="admin.css">
    <link href="css/font-awesome.css" rel="stylesheet">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>

</head>

<body>
    <script type="application/x-javascript">
            
            function delete_table()
            {
                document.getElementById("TableTS").deleteRow(1);
            }
        </script>
    <script>
        $(document).ready(function () {
            $("#timkiem").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#TableTS tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
    <!-- header -->
    <div class="header" id="home">
        <div class="content white agile-info">
            <nav class="navbar navbar-default" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.html">
                            <h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h1>
                        </a>
                    </div>
                    <div class="dropdown">
                        <img src="images/ab.png" width="50px;" height="50px;">
                        <button class="dropbtn">ADMIN</button>
                        <span class="fa fa-sort-desc" style="color: #fff;"></span>
                        <div class="dropdown-content">
                            <a href="TkAdmin.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
                            <a href="QLThongBao.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
                            <a href="#"><span class="fa fa-sign-out"></span> Đăng xuất</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- banner -->
    <div class="inner_page_agile">
        <h3>ADMIN</h3>
        <p>Chào mừng bạn đến với trang thư viện đề thi</p>
    </div>
    <!-- /inner_content -->
    <div class="container" style="margin-bottom: 60px; margin-top: 60px;">
        <div class="content_student">
           
            <div class="col-md-12 job_info_right" id="KhungChinhSua">
                <div>
                    <div>
                        <input class="form-control" id="timkiem" type="text" placeholder="Search.." style="width:50%">
                       <!--  <a href="CapQuyen.jsp"> <button style="float:right" type="button" class="btn btn-primary">
                                Cấp quyền</button></a> --><br> <br>
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="text-align:center">DANH SÁCH TÀI KHOẢN THÍ SINH</div>
                            <div class="panel-body">
                                <table class="table" style="text-align:center" id="TableTS">
                                    <thead>
                                        <tr>
                                             <th style="text-align:center" >Tên Đăng Nhập</th>
                                            <th style="text-align:center">Email</th>                                         
                                            <th style="text-align:center">Số CMND</th>
                                            <th style="text-align:center">Họ Tên</th>
                                            <th style="text-align:center">Địa Chỉ</th>
                                            <th style="text-align:center">Mã Code</th>
                                            <th style="text-align:center">Quyền</th>
                                            <th style="text-align:center">Số ĐT</th>  
                                            <th style="text-align:center">Xóa</th>   
                                        </tr>
                                    </thead>
                                     <% for(User c:ListAccountDAO.DisplayAccountTS())
                                    	{%>
                                        <tr>
                                            <td><%=c.getUserLogin() %></td>
                                            <td><%=c.getEmail() %></td>
                                            <td><%=c.getCerti() %></td>
                                            <td><%=c.getUserName() %></td>
                                            <td><%=c.getAddress() %> </td>
                                            <td><%=c.getVitualCode() %> </td>
                                             <td><%=c.getPermission() %></td> 
                                             <td><%=c.getPhoneNumber() %></td>
                                         <td> <a href="DeleteAccountTS?userlogin=<%= c.getUserLogin() %>"><span class="glyphicon glyphicon-trash"></span></a></td>                                         
                                        </tr>
                                       <%} %>
                                    


                                </table>
                            </div>
                            <div class="panel-fohoter"></div>
                            

                        </div>
                        <a href="Quanlytaikhoan.jsp"> <button style="float:right" type="button" class="btn btn-primary">
                                BACK </button></a> <br> <br> 
                    </div>
                </div>

            </div>

        </div>
    </div>

    <!-- footer -->

    <div class="footer">
        <div class="container">
            <div class="footer_bottom">
                <div class="col-md-9 footer_bottom_grid">
                    <div class="footer_bottom1">
                        <a href="index.jsp">
                            <h2><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h2>
                        </a>
                        <p>© 2017 Soft. All rights reserved | Design by <a href="#">Group 11</a></p>
                    </div>
                </div>
                <div class="col-md-3 footer_bottom_grid">
                    <h6>Follow Us</h6>
                    <div class="social">
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>

        </div>
    </div>
    <!-- //footer -->

    <a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;">
        </span></a>

</body>

</html>