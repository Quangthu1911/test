<%@page import="DAO.AddExamDAO"%>
<%@page import="BEAN.UserLogin"%>
<%@page import="com.sun.xml.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
<%@ page import="java.util.*" import="java.io.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="BEAN.ListScore"%>
<%@page import="DAO.ListScoreDAO"%>
<%@page import="BEAN.listAddStudent"%>
<%@page import="BEAN.Exam"%>
<%@page import="BEAN.DetailExam"%>
<%@page import="DAO.DetailExamDAO"%>
<%@page import="controller.LoginForward"%>
 

<!DOCTYPE html>
<html>

<head>
	<title>Trắc nghiệm online</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- script of in4 student -->
	<script type="text/javascript">
		function showformIn4()
		{
			document.getElementById("in4mation").style.display="block";
			document.getElementById("formEdit1").style.display="none";
			document.getElementById("home1").style.display="none";
			document.getElementById("formDetailExam").style.display="none";
			document.getElementById("formViewScrore").style.display="none";
			

		}
		function getData() {
	         
	        }
		function AddQuestion()
		{
			
		}
		function showformDetail(){
			document.getElementById("formDetailExam").style.display="block";
			document.getElementById("in4mation").style.display="none";
			document.getElementById("formEdit1").style.display="none";
			document.getElementById("home1").style.display="none";
		}
		function hideformAddExam1(){
			document.getElementById("formCreateExam").style.display="none";
		/* 	document.getElementById("in4mation").style.display="none";
			document.getElementById("formEdit1").style.display="none";
			document.getElementById("home1").style.display="none"; */
		}


	</script>

	<script type="text/javascript">
		function saveEditIn4(){
			var v1=document.getElementById("nameIn4").value;
			var v2=document.getElementById("phone").value;
			var v3=document.getElementById("cer").value;
			var v4=document.getElementById("addr").value;
			if(v1==""|v2==""|v3==""|v4=="")
			{
				alert("Không được bỏ trống trường nào hết");

			}
			else
					hideEditIn4();
		}

	</script>
	<script type="text/javascript">
		function showformEdit(){
			 // document.getElementById("in4mation").style.display="none";
			document.getElementById("formEdit1").style.display="block";
		}
		function hideEditIn4()
		{
			document.getElementById("formEdit1").style.display="none";
		}
		function showHome(){
			document.getElementById("formEdit1").style.display="none";
			document.getElementById("home1").style.display="block";
			document.getElementById("in4mation").style.display="none";
			document.getElementById("formViewScrore").style.display="none";
			document.getElementById("formDetailExam").style.display="none";
		}
		function showScoreStudent(){
			document.getElementById("home1").style.display="none";
			document.getElementById("formViewScrore").style.display="block";
		}
	</script>
	
<!-- close script ò in4 student -->
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
			document.getElementById("formCreateExam").style.display="block";
			document.getElementById("formStructExam").style.display="none";
			//document.getElementById("formEdit").style.display="block";
		}
		function showformStructExam1(){
			document.getElementById("formStructExam").style.display="block";
			 document.getElementById("formCreateExam").style.display="none";
		}
		function showformStructExam(){
			document.getElementById("formCreateExam").style.display="block";
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
</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"> 

</head>

<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="index.jsp">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h1>
						</a>
					</div>
					<div class="dropdown">
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn" name=""><div>${UserLogin}</div></button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="announce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="LogOutForward"><span class="fa fa-sign-out"></span> Đăng xuất</a>
							<a href="index.jsp"><span class="fa  fa-arrow-left"></span>Trở về trang chủ</a>
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

	<div id="formAddStudentExam" style="display: block;">
		<div class="editboxAddStudent" style="height:600px;border-style:solid;border-color:orange;">
			<h1 id="addExam" style="margin-top: -50px;">Thêm thí sinh</h1>
			<div class="local1">
				<div>
					<table id="example">
						<thead>
				    		<tr>
								<th>Tên Thí Sinh</th>
								<th>Nơi Công Tác</th>
								<th>CMND</th>
								</tr>
						</thead>
						<tbody>
						<%String t=(String)request.getParameter("examID2"); %>
							<% for(listAddStudent c:ListScoreDAO.DisplayListAddStudent(t))
											{%>
 									 <tr>
					                    <td><c:out value="<%=c.getUserName()%>" /></td>
					                    <td><c:out value="<%=c.getAddress()%>" /></td>
					                    <td><c:out value="<%=c.getCerti()%>" /></td>
					                    <td>
                        					<a href="DeleteStudentExamForward?idStudent=<%=c.getUserLogin()%>">Xóa</a>     <!-- ?idExam8=<%=t%>" -->                
                    					</td>
								    </tr>
					        <%}%>
						</tbody>
					</table>
				</div>
				
				<div class="clearfix"></div>
		    </div>
		    <div class="collumnAddStudent" style="margin-top: 40px;;">
					 <form action="AddNewStudentForward" method="get"> 
						<div class="row">
							<div class="col-md-3" >
								<div id="add"class="in4AddStudent">
									<button type="submit" style="background: transparent;color:white;border-style:inset;width:100px;border-radius: 5px;">Thêm</a></button>
								</div>
								 <input type="text" name="nameLogin" value=<%=request.getParameter("examID2")%> style="display: none"> 
							</div>
							<div class="col-md-2" style="margin-left: -70px;border="">
							<a href="ManagementExamTeacher.jsp?ExamID6=<%=LoginForward.UserLogin%>" id="add" class="in4AddStudent" style="width: 100px;color:white;background-color:transparent;border-style:inset;"  >
								Thoát
								</a>
								</div>
							<div class="col-md-6">
								<select style="width: 450px;height: 30px;color:black;" name="ListStudent" >
								<%String examID=request.getParameter("examID2");%>
									<% for(UserLogin c:ListScoreDAO.DisplayListUser(examID))
									{%>
										  <option name="ValueOption2"value="<%=c.getUserLogin()%>"><%=c.getUserName() %> </option>
						            <%}%>
								</select>
								
							</div>
							
						</div>
					</form>
					<div class="row">
						<div class="col-md-3" >
							
						</div>
						
					</div>
			</div>
		</div>
 	</div>
	
<!--  href="AddNewStudentForward?idexam3=<%=request.getParameter("examID2")%>?userlogin1=<%=request.getParameter("ListStudent") %> -->

	<!-- close form add student -->
<!-- form tạo cấu trúc đề thi -->

	
	<!-- Đóng form tạo cấu trúc đề thi -->

	<!-- form tạo câu hỏi đề thi -->
	
	<!-- Đóng form tạo câu hỏi đề thi -->
	<!-- form edit question exam -->
	<div id="formEditExam" style="display: none;">
		<div class="editbox1">
		<img src="images/login2.png" class="avatar">
			<h1 id="addExam">Sửa câu hỏi đề thi</h1>
			<div class="local">
				<div class="addExam-title">
					Bảng câu hỏi
				</div>
				<div style="margin-left: 30px;margin-top: 20px;">
				
					Câu 1: <textarea rows="2" cols="80" style="background-color: black;margin-top: 20px;">The IP address belong to subnetmask have address 255.255.255.224 is</textarea>
				</div>
				<div class="row">
					<div class="col-md-7" style="margin-left: 10px;"> 
						A: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;">192.168.10.0/24</textarea><br>
						B: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;">172.16.1.0/22</textarea><br>
						C: <textarea  required pattern rows="1" cols="40" style="background-color: black;margin-top: 20px;">10.8.1.2/21</textarea><br>
						D: <textarea   rows="1" cols="40" style="background-color: black;margin-top: 20px;">192.168.1.1/26</textarea>
					</div>
					<div class="col-md-4" style="margin-top: 20px;">
						<div style="border-radius: 20px;border-style: solid;border-color: white;height: 190px;">
							<div class="row" style="color: white ;margin-top: 15px;">
								<div class="col-md-7">
									Loại câu hỏi<br>
									<form action="">
										<div style="margin-top: 15px;">

											<input type="radio" name="Cate" value="1">1 đáp án<br>
											<input type="radio" name="Cate" value="2">nhiều đáp án<br>
											<input type="radio" name="Cate" value="3">Đúng sai<br>

										</div>
										
										
									</form>
									
								</div>
								<div class="col-md-4" style="border-style: solid;border-color: white;height: 150px;width: 0.1;border-radius: 10px;">
									<form action="">
										<div style="margin-top: 15px;">

											<input type="radio" name="DA" value="1">A<br>
											<input type="radio" name="DA" value="2">B<br>
											<input type="radio" name="DA" value="3">C<br>
											<input type="radio" name="DA" value="3">D<br>

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
							<button id="btnCancel" onclick="hideformEditExam()">Hoàn thành</button>
						</div>

						<div class="col-md-6">
							<button id="btnNext">Tiếp theo</button>
						</div>
					</div>
				<div>
						
			</div>
					
			</div>
			</div>
	</div>
</div>
	<!-- Đóng form edit question exam -->
<!-- form tạo đề thi -->
	
	<!-- Đóng form tạo để thi -->
	<!-- form edit 1 -->
	 
	<!-- CLose form edit -->
	<!--//banner -->

	<!-- /inner_content -->
	<div class="container" style="margin-bottom: 60px; margin-top: 60px;">
		<div class="content_student">
			<div class="col-md-3 menu_info_left">
				<div id="menu">
				 	<ul>
				 			<li onclick="showformIn4()"><a>THÔNG TIN</a></li>
				 			<li onclick="showformEdit()"><a>CHỈNH SỬA</a></li>
				 			<li onclick="showHome()"><a>QUẢN LÝ BÀI THI</a></li>
				 			<li><a href="NewsTeacher.jsp">THÔNG BÁO</a></li>
				 	</ul>
				</div>
			</div>

			<div class="col-md-9 mana_info_right">
				<div class="show_inf_student1">
					<!--<p> </p>-->

					<!--QUẢN LÝ ĐỀ THI-->
					<!-- form xem diem thi sinh -->
					
				<!-- dong form xem diem thi sinh -->
					<!--DIỄN ĐÀN THẢO LUẬN CỦA MỖI ĐỀ THI-->
					

					<!-- close form information of student -->
					<!-- Form information of student -->
	
</div>
					<!-- dong form chi tiet de thi-->
					
					
					

					<!-- form sua thong tin -->
	
					<!-- dong form sua thong tin -->

					

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

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<!-- <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> -->

</body>
 <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>

  <script type="text/javascript">
  $(document).ready(function() {
	    $('#example').DataTable();
	} );
  </script>
 <script type="text/javascript">
  $(document).ready(function() {
	    $('#example1').DataTable();
	} );
  </script>
  <script type="text/javascript">
  $(function(){
	    $("#example").dataTable();
  });
 </script>  <!-- dữ liệu của bảng điểm thí sinh -->

 <!--  <script>
 <!--  (function(s, u, b, i, z){
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
</script> -->
<!-- End Subiz -->


</html>