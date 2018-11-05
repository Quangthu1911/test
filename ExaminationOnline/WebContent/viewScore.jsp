<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Trắc nghiệm trực tuyến</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"> 
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
</head>

<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
				</button>
				<a class="navbar-brand" href="#">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination online</label></h1>
						</a>

					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">
								
								<li >
									<a href="#" class="effect-3" >Trang chủ</a>
								</li>
								<li><a href="#" class="effect-3">Đăng nhập</a></li>

								<li><a href="#" class="effect-3">Đăng kí</a></li>
								<li><a href="#" class="effect-3">Liên hệ</a></li>
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
	<div class="inner_page_agile">
		<h3>Trắc nghiệm online</h3>
		<p>Hire. Train. Retain.</p>

	</div>
	<!--//banner -->
	<!--/w3_short-->
	<div class="services-breadcrumb_w3layouts">
	</div>
	<!--//w3_short-->
	<!-- /inner_content -->
	<div class="inner_content_info_agileits">
		<div class="container">
			<div class="tittle_head_w3ls">
				<h3 class="tittle">Điểm thí sinh </h3>
			</div>
			<div class="inner_sec_grids_info_w3ls" style="position: relative;">
				  <table id="example">
					  <thead>
					    <tr><th class="site_name">Name</th><th>ID bài thi </th><th>Tên bài thi</th><th>Điểm</th></tr>
					  </thead>
					  <tbody>
					  </tbody>
				</table>
				<div style="position:absolute;left: 97%;"	>
					<a href="#"class="navbar-btn navbar-right btn_ok">OK</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	

<!-- 	//Dữ liệu của bảng điểm thí sinh -->
 <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
  <script>
  $(function(){
    $("#example").dataTable({ // Search va  Show entry được dataTable trong jquery ho tro
  "aaData":[
    ["Phan Hữu Hiếu","161101","Android","70"],
    ["Sói con lạc lối","161101","Android","70"],
    ["Play from far home","161101","Android","70"],
    ["Phan Thị Thư","161102","IOS","20"],
    ["Nguyen Thị Thuận","161103","PHP","50"],
    ["Tran Thị Nhung","161104",".Net","60"],
    ["Hoang Minh","161105","C#","25"],
    ["Phan Hữu Hiếu","161101","Android","70"],
    ["Phan Hữu Hiếu","161101","Android","70"],
    ["Phan Hữu Hiếu","161101","Android","70"],
    ["Phan Hữu Hiếu","161101","Android","70"],
    ["Phan Hữu Hiếu","161101","Android","70"]


  ],
  "aoColumnDefs":[{
        "sTitle":"Tên thí sinh"
      , "aTargets": [ "site_name" ]
  }]
});
  })
  </script> <!-- dữ liệu của bảng điểm thí sinh -->

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>




	<!-- //inner_content -->
	<!-- footer -->
	<div class="footer_w3ls">
		<div class="container">
			<div class="footer_bottom">
				<div class="col-md-9 footer_bottom_grid">
					<div class="footer_bottom1">
						<a href="index.html">
							<h2><span class="fa fa-signal" aria-hidden="true"></span> THT <label></label></h2>
						</a>
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
</body>

</html>