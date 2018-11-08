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
		var count=1;
		function showQuestionPre()
		{
			count--;
			if (count<=1)
			{
				document.getElementById("Question2").style.display="none";
				document.getElementById("Question1").style.display="block"
				count=1;
			}
			
			else if(count==2)
			{
				document.getElementById("Question3").style.display="none";
				document.getElementById("Question2").style.display="block";
			}
			else if(count==3)
			{
				document.getElementById("Question4").style.display="none";
				document.getElementById("Question3").style.display="block";
			}
			else if(count==4)
			{
			    document.getElementById("Question3").style.display="none";
				document.getElementById("Question4").style.display="block";	
				
			}
			else if(count==5)
			{
				document.getElementById("form_finish").style.display="block";
				document.getElementById("do_exam").style.display="none";
				document.getElementById("time_exam").style.display="none";
				document.getElementById("btn").style.display="none";
				tinhDiem();
				count=6;
			}
		}
		function showQuestionNext()
		{
			count++;
			if(count==2)
			{
				document.getElementById("Question2").style.display="block";
				document.getElementById("Question1").style.display="none";
			}
			else if(count==3)
			{
				document.getElementById("Question3").style.display="block";
				document.getElementById("Question2").style.display="none";
			}
			else if(count==4)
			{
				document.getElementById("Question4").style.display="block";
				document.getElementById("Question3").style.display="none";
			}
			else if(count==5)
			{
				document.getElementById("form_finish").style.display="block";
				document.getElementById("do_exam").style.display="none";
				document.getElementById("time_exam").style.display="none";
				document.getElementById("btn").style.display="none";
				tinhDiem();
				count=4;
			}
			
		}
		function showFinish()
		{

			document.getElementById("form_finish").style.display="block";
			document.getElementById("do_exam").style.display="none";
			document.getElementById("time_exam").style.display="none";
			document.getElementById("time_exam_minutes").style.display="none";
			document.getElementById("btn").style.display="none";
			tinhDiem();
			count=5;
		}
		function showReExamOnline()
		{
			document.getElementById("re_exam_student").style.display="block";
			$("#1a").is(":checked")=true;
			$("#2c").is(":checked")=true;
			$("#3d").is(":checked")=true;
			$("#4a").is(":checked")=true;
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
						<a class="navbar-brand" href="index.html">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examinatuon online</label></h1>
						</a>
					</div>
					<!--/.navbar-header-->

					<div class="dropdown">
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn">Cao Nguyễn Minh</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="ThongTinCN.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
							<a href="anounce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="#"><span class="fa fa-sign-out"></span> Đăng xuất</a>
							<a href="index.jsp"><span class="fa fa-wpforms"></span> Trở về trang chủ</a>
						 </div>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
	<div class="inner_page_agile">
		<h3>MẠNG MÁY TÍNH</h3>
		<p>Thời gian làm bài: 10 phút</p>

	</div>
	<!--//banner -->

	<!--HIỂN THỊ TIMER TẠI ĐÂY-->
	<!--<div id="time_exam_minutes"></div>:
	<div id="time_exam">
	</div>-->
	<div class="time_do_exam">
		<span id="time_exam_minutes"></span><span>:</span>
		<span id="time_exam"></span>
	</div>
	<script type="text/javascript">
		var couter=60; //đây là số thời gian lấy trong CSDL nè
		var minutes=5;
		/*hàm đếm thời gian làm bài thi*/
		function demNguoc()
		{
			couter--;
			if(couter!=-1)
			{
				document.getElementById("time_exam").innerHTML=couter;
				if(couter<10)
				{
					document.getElementById("time_exam").innerHTML="0"+couter;
				}
				document.getElementById("time_exam_minutes").innerHTML=minutes;
				setTimeout("demNguoc()",1000);
				if(couter==0)
				{
					couter=60;
					minutes--;
					document.getElementById("time_exam_minutes").innerHTML=minutes;
					document.getElementById("time_exam").innerHTML=couter;
				}
				if(minutes==0)
				{
					showFinish();
				}
			}
		}
		demNguoc();
		
	</script>

	<!--form nộp bài khi kết thúc-->
	<div id="form_finish">
		<div class="finish">
			<p>BÀI THI CỦA BẠN ĐÃ HOÀN THÀNH</p>
			<p>ĐIỂM SỐ CỦA BẠN LÀ: </p>
			<div id="point" style="color: #fff; font-size: 30px; text-align: center;" ></div>
			<input type="Submit" name="" value="XEM BÀI" onclick="showReExamOnline()" style="margin-bottom: 10px;">
			<input type="Submit" name="" value="THOÁT" onclick="location.href='Student.jsp'">
		</div>
	</div>

	<!--LÀM BÀI THI TẠI ĐÂY-->
	<div class="container" id="do_exam">
		<div class="inner_sec_grids_info">
			<div class="col-md-4 job_info_left">
				<div class="table_result">
					<p>BẢNG ĐÁP ÁN</p>
					<table border="1" width="200" height="150" bordercolor="white">
						<tr>
							<th>STT</th>
							<th> A </th>
							<th> B </th>
							<th> C </th>
							<th> D </th>
						</tr>

						<tr>
							<td> 1 </td>
							<td> <input type="radio" name="da_cau1" id="1a"> </td>
							<td> <input type="radio" name="da_cau1" id="1b"> </td>
							<td> <input type="radio" name="da_cau1" id="1c"> </td>
							<td> <input type="radio" name="da_cau1" id="1d"> </td>
						</tr>

						<tr>
							<td> 2 </td>
							<td> <input type="radio" name="da_cau2" id="2a"> </td>
							<td> <input type="radio" name="da_cau2" id="2b"> </td>
							<td> <input type="radio" name="da_cau2" id="2c"> </td>
							<td> <input type="radio" name="da_cau2" id="2d"> </td>
						</tr>

						<tr>
							<td> 3 </td>
							<td> <input type="checkbox" name="da_cau3" id="3a"> </td>
							<td> <input type="checkbox" name="da_cau3" id="3b"> </td>
							<td> <input type="checkbox" name="da_cau3" id="3c"> </td>
							<td> <input type="checkbox" name="da_cau3" id="3d"> </td>
						</tr>

						<tr>
							<td> 4 </td>
							<td> <input type="radio" name="da_cau4" id="4a"> </td>
							<td> <input type="radio" name="da_cau4" id="4b"> </td>
							<td> <input type="radio" name="da_cau4" id="4c"> </td>
							<td> <input type="radio" name="da_cau4" id="4d"> </td>
						</tr>							
					</table>
				</div>
			</div>
			<script language="javascript">
				var diem=0;
				var flag=0;
            	document.getElementById("1c").onclick = function(e){
	                if (this.checked){
	                    diem+=2.5;
	                }
                };
                document.getElementById("2b").onclick = function(e){
	                if (this.checked){
	                    diem+=2.5;
	                }
                };
                document.getElementById("4d").onclick = function(e){
	                if (this.checked){
	                    diem+=2.5;
	                }
                };
                document.getElementById("3b").onclick = function(e){
	                if (this.checked){
	                    flag++;
	                }
                };
                document.getElementById("3c").onclick = function(e){
	                if (this.checked){
	                    flag++;
	                }
                };
                document.getElementById("3d").onclick = function(e){
	                if (this.checked){
	                    flag++;
	                }
	                if(flag==3)
                    {
                		diem+=2.5;
                    }
                };
                function tinhDiem()
                {
                	document.getElementById("point").innerHTML=diem;
                }
            </script>
			<div class="col-md-8 job_info_right">
				<div class="inf_exam">
					<div id="Question1">
						<p>  Câu 1: The IP address 131.107.0.0 is a class B address.<br>
						   What is the range of binary values for the first octet in this  address class? </p>
						 <div class="result">
						 	<span>A. 10000000 - 11111111 </span><br>
							<span>B. 00000000 - 10111111</span><br>
							<span>C. 10000000 - 10111111 </span><br>
							<span>D. 10000000 - 11011111 </span><br>
						 </div>
						
				    </div>
				    <div id="Question2">
						<p>  Câu 2: What is the network address for a host with<br>
						   the IP address 123.200.8.68/28? </p>
						<div class="result">
							<span>A. 123.200.8.0 </span><br>
							<span>B. 123.200.8.32 </span><br>
							<span>C. 123.200.8.64 </span><br>
							<span>D. 123.200.8.65 </span><br>	
						</div>
						
				    </div>
				    <div id="Question3">
						<p>  Câu 3: Which of the following addresses can be assigned to a host<br>
						    when using a subnet mask of 255.255.254.0? (Select three)</p>
						<div class="result">
							<span>A. 113.10.4.0</span><br>
							<span>B. 186.54.3.0</span><br>
							<span>C. 152.135.7.0</span><br>
							<span>D. 26.35.2.255</span><br>
						</div>
						
					</div>
					<div id="Question4">
						<p>  Câu 4: If a host on a network has the address 172.16.45.14/30,<br>
						   what is the address of the subnetwork to which this host belongs? </p>
						<div class="result">
							<span>A. 172.16.45.0</span><br>
							<span>B. 172.16.45.4</span><br>
							<span>C. 172.16.45.8</span><br>
							<span>D. 172.16.45.12</span><br>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--cho nó hiển thị các button để bấm-->
	<div class="container" id="btn" style="margin-top: 40px; margin-bottom: 40px;">
		<div class="inner_sec_grids_info_w3ls">
			<div class="col-md-4 job_info_left">
				<p> </p>
			</div>
			<div class="col-md-8 job_info_right">
				<div class="btn_exam">
					<input type="submit" name="btn_pre" onclick="showQuestionPre()" value="Trở về" />
					<input type="submit" name="btn_next" onclick="showQuestionNext()" value="Tiếp theo" />
					<input type="submit" name="btn_finish" onclick="showFinish()" value="Nộp bài" />
				</div>
			</div>
		</div>
	</div>
	<!--form xem bài thi đã làm-->
	<div class="re_exam" id="re_exam_student">
		
		<div class="row">
			<div class="col-md-8">
				<div id="cau1">
						<p>  Câu 1: The IP address 131.107.0.0 is a class B address.<br>
						   What is the range of binary values for the first octet in this  address class? </p>
						 <div class="result">
						 	<input type="radio" name="da_cau1" id="1a"><span>A. 10000000 - 11111111 </span><br>
							 <input type="radio" name="da_cau1" id="1b"><span>B. 00000000 - 10111111</span><br>
							 <input type="radio" name="da_cau1" id="1c"><span>C. 10000000 - 10111111 </span><br>
							 <input type="radio" name="da_cau1" id="1d"><span>D. 10000000 - 11011111 </span><br>
						 </div>
						
				    </div>
			</div>
			<div class="col-md-4">
				<div class="show_log">Bạn làm sai</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8">
				<div id="cau1">
						<p>  Câu 2: What is the network address for a host with<br>
						   the IP address 123.200.8.68/28? </p>
						<div class="result">
							<input type="radio" name="da_cau1" id="2a"><span>A. 123.200.8.0 </span><br>
							<input type="radio" name="da_cau1" id="2b"><span>B. 123.200.8.32 </span><br>
							<input type="radio" name="da_cau1" id="2c"><span>C. 123.200.8.64 </span><br>
							<input type="radio" name="da_cau1" id="2d"><span>D. 123.200.8.65 </span><br>	
						</div>
						
				    </div>
			</div>
			<div class="col-md-4">
				<div class="show_log">Bạn làm đúng</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8">
				<div id="cau1">
						<p>  Câu 3: Which of the following addresses can be assigned to a host<br>
						    when using a subnet mask of 255.255.254.0? (Select three)</p>
						<div class="result">
							<input type="checkbox" name="da_cau3" id="3a"><span>A. 113.10.4.0</span><br>
							<input type="checkbox" name="da_cau3" id="3b"><span>B. 186.54.3.0</span><br>
							<input type="checkbox" name="da_cau3" id="3c"><span>C. 152.135.7.0</span><br>
							<input type="checkbox" name="da_cau3" id="3d"><span>D. 26.35.2.255</span><br>
						</div>
						
					</div>
			</div>
			<div class="col-md-4">
				<div class="show_log">Bạn làm sai</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8">
				<div id="cau1">
						<p>  Câu 4: If a host on a network has the address 172.16.45.14/30,<br>
						   what is the address of the subnetwork to which this host belongs? </p>
						<div class="result">
							<input type="radio" name="da_cau1" id="4a"><span>A. 172.16.45.0</span><br>
							<input type="radio" name="da_cau1" id="4b"><span>B. 172.16.45.4</span><br>
							<input type="radio" name="da_cau1" id="4c"><span>C. 172.16.45.8</span><br>
							<input type="radio" name="da_cau1" id="4d"><span>D. 172.16.45.12</span><br>
						</div>
						
					</div>
			</div>
			<div class="col-md-4">
				<div class="show_log">Bạn làm đúng</div>
			</div>
		</div>
		
	</div>

	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer_bottom">
				<div class="col-md-9 footer_bottom_grid">
					<div class="footer_bottom1">
						<a href="index.html">
							<h2><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination online</label></h2>
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

	<!--<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

	<script type="text/javascript" src="js/bootstrap.js"></script>
	
</body>

</html>