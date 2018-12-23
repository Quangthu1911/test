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

	<div id="formAddStudentExam" style="display: none;">
		<div class="editboxAddStudent">
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
							<% for(listAddStudent c:ListScoreDAO.DisplayListAddStudent("11"))
											{%>
 									 <tr>
					                    <td><c:out value="<%=c.getUserName()%>" /></td>
					                    <td><c:out value="<%=c.getAddress()%>" /></td>
					                    <td><c:out value="<%=c.getCerti()%>" /></td>
								    </tr>
					        <%}%>
						</tbody>
					</table>
				</div>
				
				<div class="clearfix"></div>
		    </div>
		    <div class="collumnAddStudent" style="margin-top: 40px;;">
					<div class="row">
						<div class="col-md-3" >
							<div id="add" class="in4AddStudent">
								<a >Xóa</a>
							</div>
						</div>
						<div class="col-md-6">
							<select style="width: 450px;height: 30px;">
								<% for(listAddStudent c:ListScoreDAO.DisplayListAddStudent("11"))
								{%>
									  <option name="ValueOption1" value="<%=c.getUserLogin()%>"><%=c.getUserName() %> </option>
					            <%}%>
							</select>
							
						</div>
						
						
					</div>
					
					<div class="row">
						<div class="col-md-3" >
							<div id="add"class="in4AddStudent">
								<a href="AddNewStudentForward">Thêm</a>
							</div>
						</div>
						<div class="col-md-6">
							<select style="width: 450px;height: 30px;">
								<%-- <% for(UserLogin c:ListScoreDAO.DisplayListUser())
								{%>
									  <option name="ValueOption2 "value="<%=c.getUserLogin()%>"><%=c.getUserName() %> </option>
					            <%}%> --%>
							</select>
							
						</div>
						
					</div>
					<div class="row">
						<div class="col-md-3" >
							<a href="#" id="add" class="in4AddStudent" style="width: 170px;color:white;background-color:transparent;" onclick="hideAddStudent()" >
								Thoát
							</a>
						</div>
						
					</div>
			</div>
		</div>
 	</div>
	


	<!-- close form add student -->
<!-- form tạo cấu trúc đề thi -->

	<div id="formStructExam" style="display: none">
		<div class="editbox">
		<img src="images/login2.png" class="avatar">
			<h1 id="addExam">Thêm đề thi</h1>
			<div class="local">
			 
				<div class="addExam-title">
					Khởi tạo đề thi
				</div>
				<form action="AddExamForward" method="get">
							<div style="margin-top: 20px; margin-bottom: 10px;">
								<div>
									<input type="text" name="nameExam" class="structExam" placeholder="Tên đề thi" required="required" >
								</div>
								<div>
									<input type="date" name="timeStartExam" class="structExam" placeholder="Thời gian bắt đầu"  required="required">
								</div>
								<div>
									<input type="date" name="timeEndExam" class="structExam" placeholder="Thời gian kết thúc"  required="required">
								</div>
								<div>
									<input type="text" name="timeDoExam" class="structExam" placeholder="Thời gian làm bài"  required="required">
								</div>
								<div>
									<input type="text" name="scoreExam" class="structExam" placeholder="Điểm mỗi câu"  required="required">
								</div>
								<div>
								
									<input type="text" name="countExam" class="structExam" placeholder="Sõ câu" required="required">
									</script>
								</div>
								
								<div class="row" style="margin-top: 10px;">
									<div class="col-md-6">
										<button type="submit"id="btnNext">Tiếp theo</button>
									</div>
									
									<div class="col-md-6">
										<a id="btnCancel" onclick="hideformStructExam()">Hủy</a>
									</div>
								</div>
								
							<div>
							
						</div>
								
						</div>
				</form>
			</div>
	</div>
</div>
	<!-- Đóng form tạo cấu trúc đề thi -->

	<!-- form tạo câu hỏi đề thi -->
	<div id="formQuestionExam" style="display: none;">
		<div class="editbox1">
		<img src="images/login2.png" class="avatar">
			<h1 id="addExam">Thêm đề thi</h1>
			<div class="local">
				<div class="addExam-title">
					Khởi tạo đề thi
				</div>
				<form action="AddQuestionExamForward" method="get">
					<div style="margin-left: 30px;margin-top: 20px;">
					  <%-- <%String t=(String)request.getAttribute("countExam1"); %> --%>
						Câu 1 : <textarea id="question" name="questtionExam" rows="2" cols="80" style="background-color: black;margin-top: 20px;"></textarea>
					</div>
					<div class="row">
						<div class="col-md-7" style="margin-left: 10px;"> 
						<!--  <a href="javascript:getData()">getdata</a> -->
							A: <textarea name="AnswerA" rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea><br>
							B: <textarea  name="AnswerB" rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea><br>
							C: <textarea  name="AnswerC"  rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea><br>
							D: <textarea  name="AnswerD"  rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea><br>
							E: <textarea  name="AnswerE"  rows="1" cols="40" style="background-color: black;margin-top: 20px;"></textarea>
						</div>
						<div class="col-md-4" style="margin-top: 20px;">
							<div style="border-radius: 20px;border-style: solid;border-color: white;height: 190px;">
								<div class="row" style="color: white ;margin-top: 15px;">
									<div class="col-md-7">
										Đáp án đúng
										<textarea name="answerTrue" rows="1" cols="24" name="TrueAnswer" style="background: black;"></textarea>
									 <form action="">
									 Loại câu hỏi
											<div style="margin-top: 15px;">
	
												<input type="radio" name="Cate" value="1" id="1">1 đáp án<br>
												<input type="radio" name="Cate" value="2" id="2">nhiều đáp án<br>
												<input type="radio" name="Cate" value="3" id="3">Đúng sai<br>
	
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
						<a href="AddQuestionExamForward">sdsds</a>
							<button type="submit" id="btnCancel" onclick="hideformQuestionExam()">Hoàn thành</button>
						</div>

						<div class="col-md-6">
							<button id="btnNext" onclick="AddQuestion">Tiếp theo</button>
						</div>
					</div>
				<div>
				
							
				</div>
				
				</div>
			</form>
			
			</div>
	</div>
		
</div>
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
	<div id="formCreateExam" style="display: none;">
		<div class="editbox">
		<img src="images/login2.png" class="avatar">
			<h1 id="addExam">Thêm đề thi</h1>
			<div class="local">
				<div class="addExam-title">
					Thêm từ hệ thống
				</div>
				<div>
					<div class="row">
						<div class="col-md-3 image" >
						</div>
						<div class="col-sm-9 content-exam">
							<div>
								<span>Id đề thi: 0x2012</span>
								<input type="file" name="" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" style="margin-top: 10px;" />
								<button class="btnExam buttonExam" onclick="showExam()">Lưu</button>
							</div>
						
						</div>
					</div>
				<div>
						
			</div>
					
			</div>
			</div>
			<div class="local" style="margin-top: 10px;">
				<div class="addExam-title">
					Tạo câu hỏi trực tiếp
				</div>
				<div>
					<div class="row">
						<div class="col-md-3 image" >
						</div>
						<div class="col-sm-9 content-exam">
							<div>
								<span>Để tạo câu hỏi mời nhấn khởi tạo</span>
								
								<button class="btnExam buttonExam" onclick="showformStructExam1()">Khởi tạo</button>
							</div>
						
						</div>
					</div>
				<div>
					
			</div>
					
			</div>
			</div>
			<div style="margin-top: 15px;margin-left: 4px;font-size: 20px">
				<button style="border-radius: 10px;" id="btnCancel1" onclick="hideformAddExam1()">Hủy</button>
			</div>	
		</div>
	</div>
	<!-- Đóng form tạo để thi -->
	<!-- form edit 1 -->
	 <div id="formEdit1" style="display: none;">
		<div class="editbox">
		<img src="images/login2.png" class="avatar">
			<h1 style="color: white">Chỉnh sửa tài khoản</h1>
			<form action="EditImforForward" method="get" name ="vform">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Tên: </div>
					<div class="col-md-8 textEditIn4" ><input class="require" type="text" name="Ten" id="nameIn4" required pattern=""></div>
				</div>
				
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Số Đt</div>
					<div class="col-md-8 textEditIn4"><input class="require" required type="text" name="SDT" id="phone"></div>
				</div>
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">CMND</div>
					<div class="col-md-8 textEditIn4"><input required pattern="" class="require" type="text" name="CMND" id="cer"></div>
				</div>
				<div class="row in4users1">
					<div class="col-md-2"></div>
					<div class="col-md-2" style="color: white">Nơi công tác</div>
					<div class="col-md-8 textEditIn4"><input class="require" type="text" name="NCT" id="addr" required pattern=""></div>
				</div>
				<div class="index">
   						<div class="row">
   							<div class="col-md-10">
   								<button type="button" class="buttonIndex" onclick="hideEditIn4()">Hủy</button>
   							</div>
   							<div class="col-md-2">
   								<button type="submit" class="buttonIndex" onclick="saveEditIn4()">Lưu</button>
   							</div>
   						</div>
   						
   					</div>
			</form>
       </div>
	</div>	
	<!-- CLose form edit -->
	<!--//banner -->

	<!-- /inner_content -->
	<div class="container" style="margin-bottom: 60px; margin-top: 60px;margin-left:240px;">
		<div class="content_student">
			<!-- <div class="col-md-3 menu_info_left">
				<div id="menu">
				 	<ul>
				 			<li onclick="showformIn4()"><a>THÔNG TIN</a></li>
				 			<li onclick="showformEdit()"><a>CHỈNH SỬA</a></li>
				 			<li onclick="showHome()"><a>QUẢN LÝ BÀI THI</a></li>
				 			<li><a href="NewsTeacher.jsp">THÔNG BÁO</a></li>
				 	</ul>
				</div>
			</div> -->

			<div class="col-md-9 mana_info_right">
				<div class="show_inf_student1">
					<!--<p> </p>-->

					<!--QUẢN LÝ ĐỀ THI-->
					<div role="tabpanel" class="tab-pane fade in active" id="home1" id="home" aria-labelledby="home-tab"  style="display: none;">
									<%-- <% 	for(Exam c:AddExamDAO.DisplayExamTeacher())
										{%>
									<!--Form hỏi có chắc xóa hay không ?-->
									<div id="question_delete" style="margin-left: -450px;">
										<div class="delete" style="margin-left: 700px;">
											<p>BẠN CÓ CHẮC CHẮN XÓA ĐỀ THI NÀY KHÔNG Á????</p>
										    <div class="btn_yesno">
										    <!-- <Form action="DeleteExamTeacherForward" method="get"> -->
												<!-- <input type="Submit" name="" value="ĐỒNG Ý" onclick="">
 -->											<!-- </Form> -->
 												<a href="DeleteExamTeacherForward?idExam=<%=c.getExamID()%>">Đồng ý</a>
 												<a onclick="hideQuestionDelete()" >Thoát ý</a>
										    	<!-- <input type="Submit" name="" value="THOÁT" onclick="hideQuestionDelete()"> -->	
											</div>
										</div>
									</div>
									<div class="tab_grid">
										<div class="col-sm-3 loc_1">
											<a href="#"><img src="images/loc6.jpg" alt=""></a>
										</div>
										<div class="col-sm-9">
											<div class="jobs_right">
												<div class="date">^ ^<span><div></div></span></div>
												<div class="date_desc">
													<h6 class="title"><%=c.getExamName()%><a href="#"></a></h6>
													<span class="meta">Thời gian làm bài: <%=c.getTimeDoExam()%></span>
												</div>
												<p class="description">
													Hạn nộp bài: <%=c.getTimeEnd()%><br>
													Số câu hỏi: <%=c.getCountQuestion()%><br>
													Điểm <%=c.getScoreQuestion()%><br>
												</p>
												<div class="read"><a onclick="showformDetail()" class="read-more">Chi tiết đề thi</a></div>
												<div class="read">
													<%if(ScoreDAO.checkStudentExam(c.getExamID())){%>
														<a href="QuestionNextForward?ExamID=<%=c.getExamID()%>" class="read-more">Làm Bài</a>
													<%}%>	
												</div>
												
												<ul class="top-btns">
												<li>
												<a href="ViewScoreListStudent.jsp" class="fa fa-columns"></a>
														<a href="ScoreStudentForward?examID2=<%=c.getExamID()%>" onclick="showScoreStudent()" class="fa fa-columns"></a>
													</li>
													<li>
														<a href="AddStudentExam.jsp?examID2=<%=c.getExamID()%>" class="fa fa-plus-square"></a>
													</li>
													<li><a href="#" onclick="showformEditExam()" class="fa fa-building-o"></a></li>
													<li><a href="#" class="fa fa-trash-o" onclick="showQuestionDelete()"></a></li>
													<li><a href="ConserStudenrForward?ExamIDConser=<%=c.getExamID()%>" class="fa fa-group">jckhkdjhf</a></li>
												</ul>
												<div class="clearfix"> </div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
								<%}%> --%>
									
									<div class="btnAdd" onclick="showformStructExam()" style="text-align: center;">+</div>
					</div>
					<!-- form xem diem thi sinh -->
					<div id="formViewScrore" style="display: block;">
						<div class="container">
						<div class="tittle_head_w3ls">
								<h3 class="tittle2">Điểm thí sinh </h3>
						</div>
							<div class="inner_sec_grids_info_w3ls" style="position: relative;">
								
								<table id="example1">
								        <thead>
								            <tr>
								                <th>Tên Thí Sinh</th>
								                <th>ID Bài Thi</th>
								                <th>Tên Bài Thi</th>
								                <th>Điểm</th>
								            </tr>
								        </thead>
								        <tbody>
								        <% String idexam=(String) request.getParameter("examID2");%>
								        <% String t=(String) request.getParameter("idexam4");%>
							    <% for(ListScore c:ListScoreDAO.DisplayListScoreStudent(t))
											{%>
 									 <tr>
					                    <td><c:out value="<%=c.getNameStudent()%>" /></td>
					                    <td><c:out value="<%=c.getExamID()%>" /></td>
					                    <td><c:out value="<%=c.getExamName()%>" /></td>
					                    <td><c:out value="<%=c.getDiem()%>" /></td>
								    </tr>
					                     <%}%>
								        </tbody>
								    </table>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				<!-- dong form xem diem thi sinh -->
					<!--DIỄN ĐÀN THẢO LUẬN CỦA MỖI ĐỀ THI-->
					<div id="in4mation" style="display: none;">
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

					<!-- close form information of student -->
					<!-- Form information of student -->
	<%-- <div id="formDetailExam"   style="display: none;">
			<h1 id="addExam" style="margin-top: 10px;">Chi tiết đề thi</h1>
			<% 	for(DetailExam c:DetailExamDAO.DisplayListDetail())
				{%>
			<div class="row">
				<div class="col-md-2 detai1 ">Mã đề thi</div>
				<div class="col-md-4 detai1 detai2"><%=c.getExamID()%></div>
				<div class="col-sm-2 detai1">Số lượng câu</div>
				<div class="col-sm-3 detai1 detai2"><%=c.getCountExam()%></div>
			</div>
			<div class="row">
				<div class="col-md-2 detai1">Tên đề thi</div>
				<div class="col-md-9 detai1 detai2"><%=c.getExamName()%></div>
			</div>
		<%}%>
			
	<% 	for(DetailExam c:DetailExamDAO.DisplayListDetail())
		{%>
			<div class="row">
				<div class="col-md-2 detai1 ">Mã đề thi</div>
				<div class="col-md-4 detai1 detai2"><%=c.getExamID()%></div>
				<div class="col-sm-2 detai1">Số lượng câu</div>
				<div class="col-sm-3 detai1 detai2"><%=c.getCountExam()%></div>
			</div>
			
			<div class="local" style="margin-top: 20px;">
				
				<div style="margin-left: 30px;margin-top: 20px;">
					Nội dung: <textarea rows="2" cols="80" style="background-color: black;margin-top: 20px;"><%=c.getContentQuestion()%></textarea>
				</div>
				<div class="row">
					<div class="col-md-7" style="margin-left: 10px;"> 
						A: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;"><%=c.getAnswerA()%></textarea><br>
						B: <textarea  rows="1" cols="40" style="background-color: black;margin-top: 20px;"><%=c.getAnswerB()%></textarea><br>
						C: <textarea  required pattern rows="1" cols="40" style="background-color: black;margin-top: 20px;"><%=c.getAnswerC()%></textarea><br>
						D: <textarea   rows="1" cols="40" style="background-color: black;margin-top: 20px;"><%=c.getAnswerD()%></textarea><br>
						E: <textarea   rows="1" cols="40" style="background-color: black;margin-top: 20px;"><%=c.getAnswerE()%></textarea>
					</div>
				</div>
				<%}%>
				<div style="margin-left: 30px;margin-top: 20px;">
					
					<div class="row" style="margin-top: 10px;">
						<div class="col-md-6">
							<button id="btnCancel" onclick="showHome()">Trở về</button>
						</div>

					</div>
				<div>
						
			</div>
					
			</div>
			</div>
	</div> --%>
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
<!-- <script>
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
  </script> -->
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
 $(function(){
    $("#example1").dataTable({ // Search va  Show entry được dataTable trong jquery ho tro
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