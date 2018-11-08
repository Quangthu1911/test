<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Examination Online</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Soft Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<script type="text/javascript">
		function showQuestionLogout()
		{
			document.getElementById("question_delete").style.display="block";
			document.getElementById("xxx").innerHTML="Bạn có chắc muốn đăng xuất ?"
		}
		function hideQuestionLogout()
		{
			document.getElementById("question_delete").style.display="none";
		}
		function hideQuestionLoginAndChangePage()
		{
			
		    location.href='index.html';
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<!--<link href="//fonts.googleapis.com/css?family=Work+Sans:200,300,400,500,600,700" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>-->
</head>

<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="index.jsp">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examintion Online</label></h1>
						</a>
					</div>
					<div class="dropdown">
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn">Cao Nguyễn Minh</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="ThongTinCN.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
							<a href="announce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="#" onclick="showQuestionLogout()"><span class="fa fa-sign-out"></span> Đăng xuất</a>
						 </div>
					</div>
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
	<div class="inner_page_agile">
		<h3>THÔNG BÁO</h3>
	</div>
	<!--Form đăng xuất-->
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-3"><div id="question_delete">
		<div class="delete">
			<div id="xxx" style="font-size: 20px; color: #1E1D1D;"></div>
		    <div class="btn_yesno">
				<input type="Submit" name="" value="ĐỒNG Ý" onclick="hideQuestionLoginAndChangePage()">
		    	<input type="Submit" name="" value="THOÁT" onclick="hideQuestionLogout()">	
			</div>
		</div>
	</div></div>
		<div class="col-md-3"></div>
	</div>

	<!--//banner -->
	<!-- /inner_content -->
	<div class="content_anoun">
		<div class="container">
			<div class="inf_anoun">
				<div class="col-md-8 job_info_left">
					<div class="tab_grid_prof">
						<div class="col-sm-3 loc_1">
							<a href="#"><img src="images/pf1.jpg" alt=""></a>
						</div>
						<div class="col-sm-9">
							<div class="location_box1">
								<h6>Chương Trình Khuyến Mãi</h6>
								<span class="inf1">Chia Sẻ Nhiều - Qùa Hấp Dẫn</span>
								<div class="inf">
									<ul>

										<li><span>Nào cùng SHARE</span></li>
										<li><span>Facebook</span>: Một chiếc mũ xinh</li>
										<li><span>Zalo</span>: Áo thun cực cute</li>
										<li><span>Intergam</span>: Móc chìa khóa </li>
										<li><span>Mạng xã hội</span>: Quạt cầm tay dễ thương</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="tab_grid_prof">
						<div class="col-sm-3 loc_1">
							<a href="#"><img src="images/pf2.jpg" alt=""></a>
						</div>
						<div class="col-sm-9">
							<div class="location_box1">
								<h6>Phiên Bản Hoạt Động Mới</h6>
								<span class="inf1">Phiên bản app thi trắc nghiệm online sắp ra mắt</span>
								<div class="inf">
									<ul>

										<li><span>Hoạt Động</span>: Android, IOS</li>
										<li><span>Thời Gian Ra Mắt</span>: 12/12/2018</li>
										<li><span>Thời Gian Thử</span>: 3 Tháng</li>
										<li><span>Lưu Lượng</span>: Nhỏ</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="tab_grid_prof">
						<div class="col-sm-3 loc_1">
							<a href="#"><img src="images/pf3.jpg" alt=""></a>
						</div>
						<div class="col-sm-9">
							<div class="location_box1">
								<h6>Offline</h6>
								<span class="inf1">Tổ chức offline giữa thí sinh và giáo viên</span>
								<div class="inf">
									<ul>

										<li><span>Ngày bắt đầu</span>: 20/11/2018</li>
										<li><span>Giờ bắt đầu</span>: 7h30 am</li>
										<li><span>Giờ kết thúc</span>: 11h30 am</li>
										<li><span>Người tham gia</span>: tất cả các thí sinh và giáo viên</li>
										<li><span>Mục đích</span>: Gặp gỡ, giao lưu giữa thí sinh và giáo viên</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 job_info_right">

					<div class="widget_search">
						<h5 class="widget-title">Tìm Kiếm</h5>
						<div class="widget-content">
							<span>Nhập Từ Khóa</span>
							<input type="text" class="form-control jb_2" placeholder="Từ khóa thông báo">
							<input type="submit" value="tìm kiếm">
						</div>
					</div>
					<div class="col_3 permit">
						<h3>Các thông báo</h3>
						<ul class="list_2">
							<li><a href="#">Chia sẻ nhiều - Qùa hấp dẫn</a></li>
							<li><a href="#">Phần mềm trắc nghiệm online</a></li>
							<li><a href="#">Hệ quản trị csdl</a></li>
							<li><a href="#">Lập trình web</a></li>
							<li><a href="#">Lập trình di động</a></li>
							<li><a href="#">OOP</a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //inner_content -->
	<!-- footer -->
	
	<div class="footer">
		<div class="container">
			<div class="footer_bottom">
				<div class="col-md-9 footer_bottom_grid">
					<div class="footer_bottom1">
						<a href="index.jsp">
							<h2><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination online</label></h2>
						</a>
						<p>© 2018 Soft. All rights reserved | Design by <a href="#">Group 11</a></p>
					</div>
				</div>
				<div class="col-md-3 footer_bottom_grid">
					<h6>Liên Hệ</h6>
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

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>