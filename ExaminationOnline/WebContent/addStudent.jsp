<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

 <title>Trac nghiem online</title>
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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

  <link href="css/font-awesome.css" rel="stylesheet">
</head>
<body>
<div class="content">
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
        <div style="position:absolute;left: 97%;" >
          <button type="button" style="margin-top: 80%;"> OK</button>
        </div>
      </div>
     
       <form action=”#” method="post" name="myForm" onsubmit="return validateForm()">
         <div class="row" id="row1" style="margin-top: 70px;">
           <div class="col-md-4">
            <div class="row">
              <div class="col-md-6">
                <button type="button" style="width: 200px;">Thêm</button>
              </div>
              <div class="col-md-6">
                <button type="button" style="width: 100px;">Xóa</button>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <button type="button" style="width: 200px;">Sửa</button>
              </div>
              <div class="col-md-6">
                <button type="button" style="width: 100px;">Load</button>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <button type="button" style="width: 332px;">Ok</button>
              </div>
            </div>
             
             
           </div><br>
          <div class="col-md-8">

            Tên thí sinh:   <input type="text" name="Name" required><br>
            Nơi công tác: <input type="text" name="addr" required><br>
            CMND:         <input type="text" name="CMND" required>
          </div>
       </form>
        
      </div>
 
        <div class="clearfix"></div>
     
  
  

<!--  //Dữ liệu của bảng điểm thí sinh -->
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
  // },{
  //       "aTargets": [ 1 ]
  //     , "bSortable": false
  //     , "mRender": function ( url, type, full )  {
  //         return  '<a href="'+url+'">' + url + '</a>';
  //     }
  // },{
  //       "aTargets":[ 3 ]
  //     , "sType": "date"
  //     , "mRender": function(date, type, full) {
  //         return (full[2] == "Blog")
  //                   ? new Date(date).toDateString()
  //                   : "N/A" ;
  //     }
  }]
});
  })
  </script> <!-- dữ liệu của bảng điểm thí sinh -->

 <script type="text/javascript">
   function validateForm() {
//Họ phải được điền
var Name = document.forms["myForm"]["Name"].value;
if (Name == "") {
    alert("Tên không được để trống");
    return false;
    }
    var addr = document.forms["myForm"]["addr"].value;
if (addr == "") {
    alert("Địa chỉ không được để trống");
    return false;
}
var CMND = document.forms["myForm"]["CMND"].value;
    if (col-md-6 == "") {
    alert("CMND không được để trống");
return false;
}
}

 </script>

  <a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</body>
</html>