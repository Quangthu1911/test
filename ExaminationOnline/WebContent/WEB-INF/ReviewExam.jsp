<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
        <%@page import="BEAN.Question"%>
<%@page import="DAO.QuestionDAO"%>

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
		function cmtStudent()
		{
			document.getElementById("textarea").value="";
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
						<button class="dropbtn">Cao Nguyễn Minh</button>
						<span class="fa fa-sort-desc" style="color: #fff;"></span>
						<div class="dropdown-content">
							<a href="ThongTinCN.jsp"><span class="fa fa-sun-o"></span> Chỉnh sửa thông tin</a>
							<a href="announce.jsp"><span class="fa fa-comment-o"></span> Xem thông báo</a>
							<a href="#"><span class="fa fa-sign-out"></span> Đăng xuất</a>
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
	<h2 style="text-align: center; margin-top: 10px; font-weight: bold;">MẠNG MÁY TÍNH</h2>
	<div class="reviewExam">
		<% int i=0; for(Question c:QuestionDAO.DisplayQuestion("5"))
						{ i++;%>
		<div class="everyQuestion" style="margin-bottom: 10px;">
			<p><a href="#">Câu <%=i%>:</a> <%=c.getContentQuestion()%></p>
			<form action="">
					<p><input type="radio" name="A" > A: <%=c.getAnswerA()%></p>
					<p><input type="radio" name="A" > B: <%=c.getAnswerB()%></p>
					<p style="float: right;">sai rồi nhé</p>
					<p><input type="radio" name="A" > C: <%=c.getAnswerC()%></p>
					<p><input type="radio" name="A" > D: <%=c.getAnswerD()%></p>
					<p><input type="radio" name="A" > E: <%=c.getAnswerE()%></p>
					<p><input type="radio" name="A" > F: <%=c.getAnswerF()%></p>
			</form>

		</div>
		<%}%>
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