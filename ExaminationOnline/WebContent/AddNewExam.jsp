<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Examination Online</title>
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
		function showAddExam(){
			document.getElementById("formEdit").style.display="block";
		}
		function showExam(){
			document.getElementById("addExamLocal").style.display="block";
			document.getElementById("formEdit").style.display="none";
		}
		function hideformStructExam(){
			document.getElementById("formStructExam").style.display="none";
			 document.getElementById("formEdit").style.display="block";
		}
		function showformStructExam(){
			document.getElementById("formStructExam").style.display="block";
			 document.getElementById("formEdit").style.display="none";
		}
		function hideformEdit()
		{
			document.getElementById("formEdit").style.display="none";
		}
		function hideformQuestionExam()
		{
			document.getElementById("formQuestionExam").style.display="none";
		}
		function showformQuestionExam()
		{
			document.getElementById("formQuestionExam").style.display="block";
			document.getElementById("formStructExam").style.display="none";
		}
		function showformEditExam()
		{
			document.getElementById("formEditExam").style.display="block";
		}
		function hideformEditExam()
		{
			document.getElementById("formEditExam").style.display="none";
		}
		function showformAddStudent()
		{
			document.getElementById("formAddStudentExam").style.display="block";
		}
		function showListStudent()
		{
			document.getElementById("listStudent").style.display="block";
		}
		function showListStudent(){
			document.getElementById("formAddStudentExam").style.display="none";
		}
		function hideAddStudent(){
			document.getElementById("formAddStudentExam").style.display="none";
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"> 

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
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn">${UserLogin }</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="anounce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="index.jsp"><span class="fa  fa-arrow-left"></span>Trở về trang chủ</a>
							<a href="LogOutForward"><span class="fa fa-sign-out"></span> Đăng xuất</a>
						 </div>
					</div>
				</div>
			</nav>

		</div>
	</div>



	<!-- banner -->
	<div class="inner_page_agile">
		<h3>GIÁO VIÊN</h3>
		<p>Chào mừng bạn đến với trang thư viện đề thi</p>
		
	</div>

	<!-- form add student -->

	
	<!-- close form add student -->
<!-- form tạo cấu trúc đề thi -->
	<!-- form tạo câu hỏi đề thi -->
	<div id="formQuestionExam" style="display: block;">
		<div class="editbox1">
		<img src="images/login2.png" class="avatar">
		<form action="AddQuestionExamForward" method="post">
			<h1 id="addExam">Thêm đề thi</h1>
			<div class="local">
				<div class="addExam-title">
					Khởi tạo đề thi
				</div>
				<div style="margin-left: 30px;margin-top: 20px;">
				<%
					/* String numberCount=(String)request.getAttribute("countQuestion") ;
					if(numberCount==null)
					{
						numberCount="1";
					}
					else
					{
						numberCount=(String)request.getAttribute("countQuestion") ;
					} */
					int i=1,numberCount=0;
					if(i==1)
					{
						 numberCount=1;
						 i++;
					}
					else
					{
						numberCount=i;
						i++;
					}
					
				%>
					Câu hỏi: <textarea required="required" name="contentQuestion" rows="2" cols="80" style="background-color: black;margin-top: 20px;"></textarea>
				</div>
				<div class="row">
					<div class="col-md-7" style="margin-left: 10px;"> 
						A: <textarea name="answerA" rows="1" cols="40" style="background-color: black;margin-top: 20px;" required="required"></textarea><br>
						B: <textarea name="answerB"  rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea><br>
						C: <textarea name="answerC" rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea><br>
						D: <textarea name="answerD" rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea></br>
						E: <textarea name="answerE" rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea>
					</div>
					<div class="col-md-4" style="margin-top: 20px;">
							<div style="border-radius: 20px;border-style: solid;border-color: white;height: 190px;">
								<div class="row" style="color: white ;margin-top: 15px;">
									<div class="col-md-7">
										Đáp án đúng
										<textarea name="answerTrue" rows="1" cols="24" name="TrueAnswer" style="background: black;"required="required"></textarea>
									 <form action="">
									 Loại câu hỏi
											<div style="margin-top: 15px;" >
	
												<input required="required" type="radio" name="Cate" value="1" id="1">1 đáp án<br>
												<input required="required" type="radio" name="Cate" value="2" id="2">nhiều đáp án<br>
												<input required="required" type="radio" name="Cate" value="3" id="3">Đúng sai<br>
	
											</div>
										</form>
										
									</div>
									
								</div>
							</div>
						</div>
				</div>
				
				<div style="margin-top: 20px; margin-bottom: 10px;">
					
					<div class="row" style="margin-top: 10px;">
						<div class="col-md-6">
							<button id="btnCancel" onclick="hideformQuestionExam()">Hoàn thành</button>
						</div>

						<div class="col-md-6">
							<button type="submit" id="btnNext">Tiếp theo</button>
						</div>
					</div>
				<div>
						
			</div>
			</div>
			</div>
			</form>
	</div>

</div>
	<!-- Đóng form tạo câu hỏi đề thi -->
	

	<!--//banner -->

	<!-- /inner_content -->
	<div class="container" style="margin-bottom: 60px; margin-top: 60px;">
		<div class="content_student">
			<div class="col-md-3 menu_info_left">
				<div id="menu">
				 	<ul>
				 			<li><a href="Teacher.jsp">THÔNG TIN</a></li>
				 			<li><a href="#">CHỈNH SỬA</a></li>
				 			<li><a href="Student.jsp">QUẢN LÝ BÀI THI</a></li>
				 			<li><a href="NewsTeacher.jsp">THÔNG BÁO</a></li>
				 	</ul>
				</div>
			</div>

			<div class="col-md-9 mana_info_right">
				<div class="show_inf_student">
					<!--<p> </p>-->

					<!--QUẢN LÝ ĐỀ THI-->
					<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
									<div class="tab_grid">
										<div class="col-sm-3 loc_1">
											<a href="location_single.html"><img src="images/loc6.jpg" alt=""></a>
										</div>
										<div class="col-sm-9">
											<div class="jobs_right">
												<div class="date">09 <span>Nov</span></div>
												<div class="date_desc">
													<h6 class="title"><a href="#">MẠNG MÁY TÍNH</a></h6>
													<span class="meta">Thời gian làm bài: 10 phút</span>
												</div>

												<p class="description">
													Hạn nộp bài: 12/10<br>
													Số câu hỏi: 10 câu<br>
													Nội dung: cũng cố kiến thức chương 2
												</p>
												<div class="read"><a href="do_exam.jsp" class="read-more">Làm Bài</a></div>

												<ul class="top-btns">
													<li>
														<a href="#" onclick="showformAddStudent()" class="fa fa-plus-square"></a>
													</li>
													<li><a href="#" onclick="showformEditExam()" class="fa fa-building-o"></a></li>
													<li><a href="#" onclick="showQuestionDelete()" class="fa fa-trash-o"></a></li>
													<li><a href="conservation.jsp" class="fa fa-group"></a></li>
												</ul>
												<div class="clearfix"> </div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="tab_grid">
										<div class="col-sm-3 loc_1">
											<a href="#"><img src="images/loc5.jpg" alt=""></a>
										</div>
										<div class="col-sm-9">
											<div class="jobs_right">
												<div class="date">23 <span>Nov</span></div>
												<div class="date_desc">
													<h6 class="title"><a href="#">HỆ ĐIỀU HÀNH</a></h6>
													<span class="meta">Thời gian làm bài: 10 phút</span>
												</div>

												<p class="description">
													Hạn nộp bài: 25/10<br>
													Số câu hỏi: 10 câu<br>
													Nội dung: kiểm tra giữa kì
												</p>
												<div class="read"><a href="do_exam.jsp" class="read-more">Làm Bài</a></div>

												<ul class="top-btns">
													<li>
														<a href="#" onclick="showformAddStudent()" class="fa fa-plus-square"></a>
													</li>
													<li><a href="#" onclick="showformEditExam()" class="fa fa-building-o"></a></li>
													<li><a href="#" onclick="showQuestionDelete()" class="fa fa-trash-o"></a></li>
													<li><a href="#" class="fa fa-group"></a></li>
												</ul>
												<div class="clearfix"> </div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="tab_grid" id="addExamLocal"style="display: none">
										<div class="col-sm-3 loc_1">
											<a href="#"><img src="images/loc6.jpg" alt=""></a>
										</div>
										<div class="col-sm-9" >
											<div class="jobs_right">
												<div class="date">1 <span>Dem</span></div>
												<div class="date_desc" >
													<h6 class="title"><a href="#">HỆ QUẢN TRỊ CSDL</a></h6>
													<span class="meta">Thời gian làm bài: 15 phút</span>
												</div>

												<p class="description">
													Hạn nộp bài: 3/12<br>
													Số câu hỏi: 15 câu<br>
													Nội dung: kiểm tra giữa kì
												</p>
												<div class="read"><a href="do_exam.jsp" class="read-more">Làm Bài</a></div>

												<ul class="top-btns">
													<li>
														<a href="#" onclick="showformAddStudent()" class="fa fa-plus-square"></a>
													</li>
													<li><a href="#" onclick="showQuestionDelete()" class="fa fa-building-o"></a></li>
													<li><a href="#" onclick="showQuestionDelete()" class="fa fa-trash-o"></a></li>
													<li><a href="#" class="fa fa-group"></a></li>
												</ul>
												<div class="clearfix"> </div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
					</div>
					<!--DIỄN ĐÀN THẢO LUẬN CỦA MỖI ĐỀ THI-->
					<div> 
​						<button class=" btnAdd" onclick="showAddExam()">+</button>

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
						<a href="index.html">
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

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<!-- <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> -->

</body>
 <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script>
  $(function(){
    $("#example").dataTable({ // Search va  Show entry được dataTable trong jquery ho tro
  "aaData":[
    ["Phan Hữu Hiếu","Bình Phước","221566"],
    ["Sói con lạc lối","Cà Mau","556565"],
    ["Play from far home","Bà Rịa","565656"],
    ["Phan Thị Thư","Long An","56655"],
    ["Nguyen Thị Thuận","Phú Xuyên","565656"],
    ["Tran Thị Nhung","Cần Thơ","54654654"],
    ["Hoang Minh","Quận 2","54654564"],
    ["Phan Hữu Hiếu","Quận 3","56656"],
    ["Phan Hữu Hiếu","Quận 4","68865456"],

  ],
  "aoColumnDefs":[{
        "sTitle":"Tên thí sinh"
      , "aTargets": [ "site_name" ]
  }]
});
  })
  </script>
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


</html>