<%@page import="controller.LoginForward"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
        <%@page import="BEAN.Exam"%>
<%@page import="DAO.ExamDAO"%>
<%@page import="DAO.ScoreDAO"%>
<!DOCTYPE html>
<html>

<head>
	<title>Soft a Human Resource Management Category Bootstrap Responsive Web Template | Contact :: w3layouts</title>
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
		function showEditinfor()
		{
			document.getElementById("formEdit1").style.display="block";
		}
		function hideEditinfor()
		{
			document.getElementById("formEdit1").style.display="none";
		}
		function showQLBT()
		{
			document.getElementById("QLBT").style.display="block";
			document.getElementById("in4mation").style.display="none";
		}
		function hideQLBT()
		{
			document.getElementById("QLBT").style.display="none";
			document.getElementById("in4mation").style.display="block";
		}
		var flag=0;
		function showQuestionDelete()
		{
			document.getElementById("question_delete").style.display="block";
			document.getElementById("request").innerHTML="Bạn có chắc muốn xóa đề thi này ?"
			flag=0;

		}
		function showQuestionLogout()
		{
			document.getElementById("question_delete").style.display="block";
			document.getElementById("request").innerHTML="Bạn có chắc muốn đăng xuất ?"
			flag=1;
		}
		function hideQuestionDelete()
		{
			document.getElementById("question_delete").style.display="none";
		}
		function hideQuestionDeleteAndChangePage()
		{
			document.getElementById("question_delete").style.display="none";
			if(flag==0)
			{
				//nếu rảnh thì làm cái xóa luôn không thì thôi
				document.getElementById("exam3").style.display="none";
			}
			else
			{
				location.href='index.jsp';
			}
			
		}
	</script>
	<!-- <script type="text/javascript">
		function preventBack(){
			window.history.forward();
		}
		setTimeout("preventBack()",0);
		window.onunload=function(){null}; -->
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
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
						<button class="dropbtn"><div>${UserLogin }</div></button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="announce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="LogOutForward"><span class="fa fa-sign-out"></span> Đăng xuất</a>
							<a href="index.jsp"><span class="fa fa-wpforms"></span> Trở về trang chủ</a>
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
	<!--//banner -->
	<!-- form edit -->
	<div id="formEdit1" style="display: none;">
		<div class="editbox" style="height: 500px;">
		<img src="images/login2.png" class="avatar">
			<h1 style="color: white">Chỉnh sửa tài khoản</h1>
			<form action="EditImforForward" method="get" name ="vform">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Tên: </div>
					 <% String nameLabel1=(String)request.getAttribute("nameLabel"); %>
					<div class="col-md-8 textEditIn4" ><input style="color: black;" class="" type="text" name="Ten" id="nameIn4" value="<%=LoginForward.UserName%>" required="required"></div>
				</div>
				
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Số Đt</div>
						<% String phoneLabel1=(String)request.getAttribute("phoneLabel"); %>
					<div class="col-md-8 textEditIn4"><input style="color: black;" value="<%=LoginForward.PhoneNumber %>" class="" required="required" type="text" name="SDT" id="phone"></div>
				</div>
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">CMND</div>
					<% String cerLabel1=(String)request.getAttribute("cerLabel"); %>
					<div class="col-md-8 textEditIn4"><input style="color: black;" value=<%=LoginForward.Certi %>  class="" required="required" type="text" name="CMND" id="cer"></div>
				</div>
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Nơi công tác</div>
					<% String addrLabel1=(String)request.getAttribute("addrLabel"); %>
					<div class="col-md-8 textEditIn4"><input  style="color: black;" value="<%=LoginForward.Address %>" class="" type="text" name="NCT" id="addr" required="required"></div>
				</div>
				<div class="index">
   						<div class="row">
   							<div class="col-md-10">
   								<button type="button" class="buttonIndex" onclick="hideEditinfor()" style="margin-top: -200px;">Hủy</button>
   							</div>
   							<div class="col-md-2">
   								<button type="submit"class="buttonIndex" value="2" name="editStudentValue" style="margin-top: -200px;" >Lưu</button>
   							</div>
   						</div>
   						
   					</div>
			</form>
       </div>
	</div>	
	<!-- /inner_content -->
	<div class="container" style="margin-bottom: 60px; margin-top: 60px;">
		<div class="content_student">
			<div class="col-md-3 menu_info_left">
				<div id="menu">
				 	<ul>
				 			<li><a href="#in4mation" onclick="hideQLBT()">THÔNG TIN</a></li>
				 			<li><a href="#in4mation" onclick="showEditinfor()">CHỈNH SỬA</a></li>
				 			<li><a href="#in4mation" onclick="showQLBT()">QUẢN LÝ BÀI THI</a></li>
				 			<li><a href="announce.jsp">THÔNG BÁO</a></li>
				 	</ul>
				</div>
			</div>
			<div class="col-md-9 mana_info_right">
				
				<div class="show_inf_student">
					<div id="in4mation" style="display: block;">
					<div class="container-fluid bg-1 text-center ">
					    <h3 style="margin-top: 16px;">Who Am I?</h3>
					   <img  src="images/Cat.jpg" class="img-circle" alt="Cat" style="width: 100px;height: 100px;margin-top:10px;margin-bottom: 10px; ">
					   <% String nameLabel=(String)request.getAttribute("nameLabel"); %>
					    <div class="editIn4" id="iam">I'm <%=LoginForward.UserName%></div>
  					</div>
  					<div style="margin-top: 20px;">
  						<nav class="navbar navbar-inverse">
  							<h2 style="margin-top: 10px; color: white ;font-size: 25px;">Thông tin cá nhân</h2>
  						</nav>
  					</div>
  					<form action="InforTeacherFoward" method="get" name="InforTeacher">
	  					<div class="information"  style="margin-left: 15%;">
	  						<div class="row " style="color: white;">
	  							<div class="col-md-3"><h3 style="font-size: 20px;"> Tên:</h3></div>
	  							<div class="col-md-8 in4users" >
	  								<div class="editIn4" id="nameLabel">
	  									<%=LoginForward.UserName%>
	  								</div>
	  							</div>
	  						</div>
	  						<div class="row in4users1" style="color: white;">
	  							<div class="col-md-3 "><h3 style="font-size: 20px;">Số ĐT:</h3></div>
	  							<div class="col-md-8 in4users" >
	  								<div class="editIn4" id="phoneLabel">
	  								<% String phoneLabel=(String)request.getAttribute("phoneLabel"); %>
	  									<%=LoginForward.PhoneNumber%>
	  								</div>
	  							</div>
	  						</div>
	  						<div class="row in4users1" style="color: white;">
	  							<div class="col-md-3"><h3 style="font-size: 20px;">CMND:</h3></div>
	  							<div class="col-md-8 in4users" >
	  								<div class="editIn4" id="cerLabel">
	  								<% String cerLabel=(String)request.getAttribute("cerLabel"); %>
	  									<%=LoginForward.Certi%>
	  								</div>
	
	  							</div>
	  						</div>
	  						<div class="row in4users1" style="color: white;">
	  							<div class="col-md-3">
	  								<h3 style="font-size: 20px;">Nơi công tác</h3>
	  							</div>
	  							<div class="col-md-8 in4users">
	  								<div class="editIn4" id="addrLabel">
	  								<% String addrLabel=(String)request.getAttribute("addrLabel"); %>
	  								<%=LoginForward.Address%>
	  								</div>
	  							</div>
	  						</div>
	   					</div>
   					</form>
   					<div class="index">
   						<div class="row">
   						</div>
   						
   					</div>
   				</div>
					<!--QUẢN LÝ ĐỀ THI-->
					<div style="display:none;" role="tabpanel" class="tab-pane fade in active" id="QLBT" aria-labelledby="home-tab">
				<% for(Exam c:ExamDAO.DisplayExamStudent(LoginForward.name))
						{ int ngay=ExamDAO.getDateExam(c.getTimeStart()); int thangg=ExamDAO.getMonthExam(c.getTimeStart());%>
									<!--Form hỏi có chắc xóa hay không ?-->
									<div class="row">
										<div class="col-md-3"></div>
										<div class="col-md-3"><div id="question_delete">
										<div class="delete">
											<div id="request" style="font-size: 20px; color: #1E1D1D;"></div>
										    <div class="btn_yesno">
										        <a href="DeleteExamStudentForward?idExam=<%=c.getExamID()%>"  style="color:#1E1D1D; margin-right: 30px;">ĐỒNG Ý</a>
										        <a href="#" onclick="hideQuestionDelete()">THOÁT</a>
												
											</div>
										</div>
									</div></div>
										<div class="col-md-3"></div>
									</div>
									<div class="tab_grid">
										<div class="col-sm-3 loc_1">
											<a href="#"><img src="images/thitracnghiem.jpg" alt="" style="margin-top:22px;" width="180px" height="180px;"></a>
										</div>
										<div class="col-sm-9" style="margin-top: 20px;">
											<div class="jobs_right">
												<div class="date"><%=ngay %><span><div></div><%=thangg %></span></div>
												<div class="date_desc">
													<h6 class="title"><%=c.getExamName()%><a href="#"></a></h6>
													<span class="meta">Thời gian làm bài: <%=c.getTimeDoExam()%></span>
												</div>
												<p class="description">
													Hạn nộp bài: <%=c.getTimeEnd().substring(0,16)%><br>
													Số câu hỏi: <%=c.getCountQuestion()%><br>
													Giáo viên: <%=c.getUserLogin()%><br>
												</p>
												
												<div class="read">
													<%
													if(ScoreDAO.checkStudentExam(c.getExamID())){%>
														<a href="QuestionNextForward?ExamID=<%=c.getExamID()%>" class="read-more">Làm Bài</a>
													<%}%>	
												</div>
												
												<ul style="margin-top:-20px;" class="top-btns">
													<li><a href="ViewScoreListStudent.jsp?idexam4=<%=c.getExamID() %>" title="Xem điểm bài thi" class="fa fa-building-o"></a></li>
													<li><a href="#" title="Xóa bài thi" class="fa fa-trash-o" onclick="showQuestionDelete()"></a></li>
													<li><a href="ConserStudenrForward?ExamIDConser=<%=c.getExamID()%>" title="Thảo luận đề thi" class="fa fa-group"></a></li>
												</ul>
												<div class="clearfix"> </div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
								<%}%>
					</div>
					<!--DIỄN ĐÀN THẢO LUẬN CỦA MỖI ĐỀ THI-->
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
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>