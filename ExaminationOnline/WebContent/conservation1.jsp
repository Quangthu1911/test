<%@page import="controller.CenterGetIDExamCommentTeacherForward"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="BEAN.Conservation"%>
<%@page import="DAO.ConversationTeacherDAO"%>
<%@page import="controller.CenterGetIDExamCommentTeacherForward"%>
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
		function showcmtgvTextare()
		{
			document.getElementById("cmt_tea_textare").style.display="block";
			document.getElementById("delete_and_answer").style.display="none";
		}
		function hidecmtgvTextare()
		{
			document.getElementById("cmt_tea_textare").style.display="none";
			document.getElementById("delete_and_answer").style.display="block";
		}
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
						<a class="navbar-brand" href="index.jsp">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> THT <label>Examination Online</label></h1>
						</a>
					</div>
					<div class="dropdown">
						<img src="images/ab.png" width="50px;" height="50px;">
						<button class="dropbtn">${UserLogin}</button>
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
	<!--Form hỏi có chắc xóa hay không ?-->
	<div id="question_delete">
		<div class="delete">
			<p>BẠN CÓ CHẮC CHẮN XÓA ĐỀ THI NÀY KHÔNG Á????</p>
		    <div class="btn_yesno">
				<input type="Submit" name="" value="ĐỒNG Ý" onclick="">
		    	<input type="Submit" name="" value="THOÁT" onclick="hideQuestionDelete()">	
			</div>
		</div>
	</div>

	
	<!--//banner -->

	<!-- /inner_content -->
	<div class="container" style="margin-bottom: 60px; margin-top: 60px;">
		<div class="inner_sec_grids_info_w3ls">
			<div class="col-md-3 job_info_left">
				<div id="menu">
				 	<ul>
				 		<li><a href="ThongTinCN.jsp">THÔNG TIN</a></li>
				 		<li><a href="#">CHỈNH SỬA</a></li>
				 		<li><a href="#">QUẢN LÝ BÀI THI</a></li>
				 		<li><a href="announce.jsp">THÔNG BÁO</a></li>
				 	</ul>
				</div>
			</div>
			<div class="col-md-9 job_info_right">
			
				<div class="show_inf_student">
					<div class="title_conser">
					
						<p style=""></p>
					</div>
					<%String t=CenterGetIDExamCommentTeacherForward.examID; 
					/* System.out.print(t); */
					%>
					<% 	for(Conservation c:ConversationTeacherDAO.DisplayConservationTeacher(t))
					{%>
					<div class="cmt_student">
						<img src="images/login2.png">
						<div class="cmt1">
							<p><%=c.getContentStudent() %></p>	
						</div>
						<div id="delete_and_answer">
	  						<ul>
					 			<li><a href="#" onclick="showcmtgvTextare()">Trả lời</a></li>
								<li><a href="#">Xóa</a></li>
					 		</ul>
	  					</div>
						<div class="date_time">
							<p style="margin-left: 20px;"><%=c.getDateTime().substring(0,16) %></p>
						</div>
						<%String id=c.getConserID(); %>
						<div id="cmt_tea_textare" style="display: block;">
						<form action="CommentTeacherForward" method="get">
							<div id="cmt1_textare">
							<input type="text" name="conserID"value=<%=id %> style="display: none;">
								<textarea name="CommentTeacher" rows="4" cols="25" id="textarea"></textarea>
								<div class="btn_cmt">
									<button type="submit" onclick="hidecmtgvTextare()">Bình luận</button>
								</div>
							</div>
						</form>
						</div>
						<%-- <% String x=c.getContentTeacher(); if(x.equals("lala")==true){ %> --%>
							<div id="cmt_tea2">
							<% if(c.getContentTeacher()!=null){%>
								<%=c.getContentTeacher()%><br>
								<%} %>
							</div>
						<%-- <%} %> --%>
					</div>
					<%}%>
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
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>