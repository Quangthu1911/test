<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Trắc nghiệm online</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		function showQuestionDelete()
		{
			document.getElementById("question_delete").style.display="block";
		}
		function hideQuestionDelete()
		{
			document.getElementById("question_delete").style.display="none";
			
		}
		function showEditIn4()
		{
			document.getElementById("formEdit").style.display="block";
		}
		function hideEditIn4()
		{
			document.getElementById("formEdit").style.display="none";
		}
		function saveEditIn4()
		{
			var s1=document.getElementById("nameIn4").value;
			document.getElementById("nameLabel").innerHTML=s1;
			var s2=document.getElementById("phone").value;
			document.getElementById("phoneLabel").innerHTML=s2;
			var s3=document.getElementById("cer").value;
			document.getElementById("cerLabel").innerHTML=s3;
			var s4=document.getElementById("addr").value;
			document.getElementById("addrLabel").innerHTML=s4;
			document.getElementById("formEdit").style.display="none";
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/StyleViewIn4css.css" rel="stylesheet" type="text/css" media="all" />
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
						<a class="navbar-brand" href="index.html">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h1>
						</a>
					</div>
					<div class="dropdown">
						<img src="images/login2.png" width="50px;" height="50px; ">
						<button class="dropbtn">Cao Nguyễn Minh</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="#"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
							<a href="#"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="#"><span class="fa fa-sign-out"></span> Đăng xuất</a>
						 </div>
					</div>
				</div>
			</nav>

		</div>
	</div>
	<!-- banner -->
	<div class="inner_page_agile">
		<h3>HỌC SINH</h3>
		<p>Chào mừng bạn đến với trang thư viện đề thi</p>
		
	</div>
    <div id="formEdit" style="display: none;">
		<div class="editbox">
		<img src="images/login2.png" class="avatar">
			<h1 style="color: white">Chỉnh sửa tài khoản</h1>
			<form method="post" action="index.php" onsubmit="return Validate()"name ="vform">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Tên: </div>
					<div class="col-md-8 textEditIn4" ><input type="text" name="text" id="nameIn4"></div>
				</div>
				
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Số Đt</div>
					<div class="col-md-8 textEditIn4"><input type="text" name="text" id="phone"></div>
				</div>
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">CMND</div>
					<div class="col-md-8 textEditIn4"><input type="text" name="text" id="cer"></div>
				</div>
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Nơi công tác</div>
					<div class="col-md-8 textEditIn4"><input type="text" name="text" id="addr"></div>
				</div>
				<div class="index">
   						<div class="row">
   							<div class="col-md-10">
   								<button type="button" class="buttonIndex" onclick="hideEditIn4()">Hủy</button>
   							</div>
   							<div class="col-md-2">
   								<button type="button" class="buttonIndex" onclick="saveEditIn4()">Lưu</button>
   							</div>
   						</div>
   						
   					</div>
			</form>
       </div>
	</div>	
	
	<!--//banner -->

	<!-- /inner_content -->
	<div class="container" style="margin-bottom: 60px; margin-top: 60px;">
		<div class="content_student">
			<div class="col-md-3 menu_info_left">
				<div id="menu">
				 	<ul>
				 			<li><a href="#">THÔNG TIN</a></li>
				 			<li><a href="#">CHỈNH SỬA</a></li>
				 			<li><a href="Student.html">QUẢN LÝ BÀI THI</a></li>
				 			<li><a href="announce.html">THÔNG BÁO</a></li>
				 	</ul>
				</div>
			</div>
			<div class="col-md-9 mana_info_right">
				<div class="show_inf_student" style="z-index: 2">

					<div class="container-fluid bg-1 text-center">
					    <h3 style="margin-top: 20px;">Who Am I?</h3>
					   <img  src="images/Cat.jpg" class="img-circle" alt="Cat" style="width: 200px;height: 200px;margin-top:20px;margin-bottom: 20px; ">
					    <div class="editIn4" id="iam">I'm Cao Nguyễn Minh</div>
  					</div>
  					<div style="margin-top: 40px;">
  						<nav class="navbar navbar-inverse">
  							<h2 style="margin-top: 17px; color: white ">Thông tin cá nhân</h2>
  						</nav>
  					</div>
  					<div class="information"  style="margin-left: 15%;">
  						<div class="row " style="color: white;">
  							<div class="col-md-3"><h3> Tên:</h3></div>
  							<div class="col-md-8 in4users" >
  								<div class="editIn4" id="nameLabel">
  									Cao Nguyễn Minh
  								</div>
  							</div>
  						</div>
  						<div class="row in4users1" style="color: white;">
  							<div class="col-md-3 "><h3>Số Đt:</h3></div>
  							<div class="col-md-8 in4users" >
  								<div class="editIn4" id="phoneLabel">
  									0976525xxx
  								</div>
  							</div>
  						</div>
  						<div class="row in4users1" style="color: white;">
  							<div class="col-md-3"><h3>CMND:</h3></div>
  							<div class="col-md-8 in4users" >
  								<div class="editIn4" id="cerLabel">
  									286524587
  								</div>

  							</div>
  						</div>
  						<div class="row in4users1" style="color: white;">
  							<div class="col-md-3">
  								<h3>Nơi công tác</h3>
  							</div>
  							<div class="col-md-8 in4users">
  								<div class="editIn4" id="addrLabel">
  									Bình Hưng Hòa - Việt Nam
  								</div>
  							</div>
  						</div>
   					</div>
   					<div class="index">
   						<div class="row">
   							<div class="col-md-10">
   								<button type="button" class="buttonIndex">Trang Chủ</button>
   							</div>
   							<div class="col-md-2">
   								<button type="button" class="buttonIndex" onclick="showEditIn4()">Chỉnh sửa</button>
   							</div>
   						</div>
   						
   					</div>

					<!--<p> </p>-->
					<!--DIỄN ĐÀN THẢO LUẬN CỦA MỖI ĐỀ THI-->
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- footer -->
	
	<div class="footer_w3ls">
		<div class="container">
			<div class="footer_bottom">
				<div class="col-md-9 footer_bottom_grid">
					<div class="footer_bottom1">
						<a href="index.html">
							<h2><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h2>
						</a>
						<p>© 2017 Soft. All rights reserved | Design by <a href="http://w3layouts.com">Group 11</a></p>
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

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
<!-- Subiz -->
<script>
  (function(s, u, b, i, z){
    u[i]=u[i]||function(){
      u[i].t=+new Date();
      (u[i].q=u[i].q||[]).push(arguments);
    };
    z=s.createElement('script');
    var zz=s.getElementsByTagName('script')[0];
    z.async=1; z.src=b; z.id='subiz-script';
    zz.parentNode.insertBefore(z,zz);
  })(document, window, 'https://widgetv4.subiz.com/static/js/app.js', 'subiz');
  subiz('setAccount', 'acqdvmvycfjcmnlaeaom');
</script>
<!-- End Subiz -->

<script type="text/javascript">
	function showEditIn4{
		document.getElementById("show_inf_student").style.display="block";
	}
	function hideEditIn4{
		document.getElementById("show_inf_student").style.display="none";
	}
</script>
</html>