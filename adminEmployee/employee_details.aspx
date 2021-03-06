﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_details.aspx.cs" Inherits="adminEmployee_employee_details" %>

<!DOCTYPE html>
<html>
<head>
<title>Employee Details </title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Employee Application Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="../Nikita/css/employeestyle.css" rel="stylesheet" type="text/css" media="all" />
    
<link rel="stylesheet" href="../Nikita/css/jquery-ui.css" />
<script src="../Nikita/js/jquery-1.12.0.min.js"></script>
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">

<!-- Custom Theme files -->
<link href="../Nikita/css/empboot.css" type="text/css" rel="stylesheet" media="all">
   <link href="../Nikita/css/emppanel1.css" type="text/css" rel="stylesheet" media="all">
<link href="../Nikita/css/font-awesome.css" rel="stylesheet">   <!-- font-awesome icons --> 
 <link rel="stylesheet" href="../Nikita/css/jquery.gallery.css">
<!-- //Custom Theme files -->
<!-- js -->
<script src="../Nikita/js/jquery-2.2.3.min.js"></script> 
<!-- //js -->
<!-- web-fonts --> 
<link href="//fonts.googleapis.com/css?family=Cormorant+Upright:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<!-- //web-fonts --> 
	<style>
	 .group,
.group-2 {
    margin: 0 auto;
    width: 80%;
}

.group {
    margin-bottom: 2em;
}

.group:after {
    content: '';
    display: block;
    clear: both;
}

.col-1,
.col-2 {
    float: left;
}

.col-1 {
    width: 39%;
}

.col-1 label {
    height: 40px;
    line-height: 40px;
    font-size: 18px;
    text-shadow: 0.5px 0.5px 0 #fff;
   font-family:'Times New Roman';
    text-transform: capitalize;
}

.col-2 {
    width: 59%;
}

.col-2 input {
    border-style: none;
        border-color: inherit;
        border-width: medium;
width: 94%;
        height: 40px;
        font-family:'Times New Roman';
        outline: none;
        border-radius: 20px;
        box-sizing: border-box;
        box-shadow: 
        inset 0 0 3px 0 rgba(0,0,0,0.3),
        0.5px 0.5px 0 0 #fff;
        padding: 1em;
        margin-left: 8px;
    }

	</style>
</head>
<body>
    <div class="w3ls-banner">
    <div class="w3lsbanner-info">
			<div class="header">
				<div class="container">
					<div class="header-left">
						<!--<div class="w3layouts-logo">
							<h1>
								<a href="index.html">Employee Panel</a>
							</h1>
						</div>-->
					</div>
					<div class="header-right">
						<div class="agileinfo-social-grids">
							<ul>
								<li id="name" runat="server"></li>
								
							</ul>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="header-bottom">
				<div class="container">
					<div class="top-nav">
						<nav class="navbar navbar-default">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li><a class="active list-border" href="admin_employee.aspx">Home</a></li>
									<li><a href="employee_details.aspx">Employee Details</a></li> 
									<li><a href="employee_status.aspx" >Status</a></li> 
									<li><a href="employee_performance.aspx" >Performance</a></li>
									<li><a href="employee_payroll.aspx" >Payroll Details </a></li>
									<li><a href="employee_leave.aspx" >Leave</a></li>
									<li><a href="employee_resignation.aspx" >Resignation</a></li>
								</ul>	
								<div class="clearfix"> </div>
							</div>	
						</nav>		
					</div>
				</div>
                </div>
    
	<div class="main">

		<div class="agile-heading">
			<h1><span class="image"></span><label>E</label>mp<label>l</label>oyee Details</h1>
		</div>
		<div class="w3_agile_main_grids">
			<div class="agileits_w3layouts_main_grid">
				<form id="upload"  runat="server" >
					<div >
						<center>
						<div>
							<h3>View Employee Details</h3>
							
							<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" >
								<asp:ListItem Value="1" ><p style="color:black">Search By Employee ID</p></asp:ListItem>
								 <asp:ListItem Value="2" ><p style="color:black">Search By Employee Name</p></asp:ListItem>
							</asp:RadioButtonList>
							<div class="group"  id="g1" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p style="color:black">Employee Id</p></b></label>
						 </div>
						 <div class="col-2">
						  <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="emp_id" DataValueField="emp_id" Height="49px" Width="168px"></asp:DropDownList>       
						     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [emp_id], [emp_name] FROM [employee_table]"></asp:SqlDataSource>
						 </div>
						</div>

							<div class="group" id="g2" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p style="color:black">Employee Name</b></label>
						 </div>
						 <div class="col-2">
						  <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="emp_name" DataValueField="emp_id" Height="38px" Width="160px"></asp:DropDownList>       
						 </div>
						</div>
							
							
							<div class="clearfix"></div> 
							<asp:Button ID="Button1" runat="server" Text="Retrive" OnClick="Button1_Click"></asp:Button>
                           <!--<input type="submit" value="Retrive "> -->
							<hr /><br /><div class="clearfix"></div> 
							<div class="group" id="g3" runat="server">
        <div class="col-1">
            <label for="image"><b><p style="color:black">Profile Picture</p></b></label>
        </div>
        <div class="col-2">
            
            <img id="output" width="170" height="170" runat="server" src="" />
			
           
        </div>
    </div>
                         <div class="group" id="g4" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p style="color:black">Employee Id</b></label>
						 </div>
						 <div class="col-2">
						   <asp:TextBox ID="employeeId" runat="server"  ReadOnly="true"  style="background-color:#ccc;text-align:center;font-size:larger"></asp:TextBox>         
						 </div>
						</div>
        
						
					<div class="group" id="g5" runat="server">
					 <div class="col-1">
					<label for="employee_nm"><b><p style="color:black">Employee Name</b></label>
					 </div>
					<div class="col-2">
					 <asp:TextBox ID="employee_name"  ReadOnly="true" Text="Isaac"  style="background-color:#ccc;text-align:center;font-size:larger" runat="server"></asp:TextBox>							
					</div>
					</div>
							<div class="group" id="g6" runat="server">
					 <div class="col-1">
					<label for="employee_nm"><b><p style="color:black">Designation</b></label>
					 </div>
					<div class="col-2">
					 <asp:TextBox ID="designation"  ReadOnly="true" Text="Isaac"  style="background-color:#ccc;text-align:center;font-size:larger" runat="server"></asp:TextBox>							
					</div>
					</div>
							<div class="group" id="g7" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p style="color:black">Dob</b></label>
						 </div>
						 <div class="col-2">
						   <asp:TextBox ID="dob" runat="server"  ReadOnly="true"  style="background-color:#ccc;text-align:center;font-size:larger"></asp:TextBox>         
						 </div>
						</div>
						
						 <!-- gennder -->
					<div class="group" id="g8" runat="server">
					 <div class="col-1">
					<label for="employee_nm"><b><p style="color:black">Gender</b></label>
					 </div>
					<div class="col-2">
					 <asp:TextBox ID="gender"  ReadOnly="true" Text="Isaac"  style="background-color:#ccc;text-align:center;font-size:larger" runat="server"></asp:TextBox>							
					</div>
					</div>
							<div class="group" id="g9" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p style="color:black">Address</b></label>
						 </div>
						 <div class="col-2">
						   <asp:TextBox ID="address" runat="server"  ReadOnly="true"  style="background-color:#ccc;text-align:center;font-size:larger"></asp:TextBox>         
						 </div>
						</div>
        
						 <!-- mobile -->
					<div class="group" id="g10" runat="server">
					 <div class="col-1">
					<label for="employee_nm"><b><p style="color:black">Mobile No</b></label>
					 </div>
					<div class="col-2">
					 <asp:TextBox ID="mobil"  ReadOnly="true" Text="Isaac"  style="background-color:#ccc;text-align:center;font-size:larger" runat="server"></asp:TextBox>							
					</div>
					</div>
							<div class="group" id="g11" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p style="color:black">Email ID</b></label>
						 </div>
						 <div class="col-2">
						   <asp:TextBox ID="email" runat="server"  ReadOnly="true"  style="background-color:#ccc;text-align:center;font-size:larger"></asp:TextBox>         
						 </div>
						</div>
        
						 <!-- Candidate Name -->
					
							<div class="group" id="g12" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p style="color:black">Hired Date</b></label>
						 </div>
						 <div class="col-2">
						   <asp:TextBox ID="hiring" runat="server"  ReadOnly="true"  style="background-color:#ccc;text-align:center;font-size:larger"></asp:TextBox>         
						 </div>
						</div>
        
						 <!-- Candidate Name -->
					<div class="group" id="g13" runat="server">
					 <div class="col-1">
					<label for="employee_nm"><b><p style="color:black">Joined Date</b></label>
					 </div>
					<div class="col-2">
					 <asp:TextBox ID="joined"  ReadOnly="true" Text="Isaac"  style="background-color:#ccc;text-align:center;font-size:larger" runat="server"></asp:TextBox>							
					</div>
					</div>
							
						
                        

                       
                     </center>
				
					</div>
					
					<div class="clear"> </div>
                  
					
                    
					
                    </form>
                        </div>
				
			</div>
        </div>
        </div>
		
		<div class="agileits_copyright">
			<p>© 2020 Employee Details Form. All rights reserved | Design & Developed by HRMTeam</p>
		</div>
	</div>
       
	<script src="../Nikita/js/filedrag.js"></script>
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}
		function validatePassword(){
			var pass2=document.getElementById("password2").value;
			var pass1=document.getElementById("password1").value;
			if(pass1!=pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');	 
				//empty string means no validation error
		}
	</script>
	<!-- start-date-piker-->
		<script src="../Nikita/js/jquery-ui.js"></script>
		<script>
			$(function() {
			$( "#datepicker" ).datepicker();
			});
		</script>
	<!-- //End-date-piker -->
    <!-- jarallax -->  
	<script src="../Nikita/js/SmoothScroll.min.js"></script> 
	<script src="../Nikita/js/jarallax.js"></script> 
	<script type="text/javascript">
	    /* init Jarallax */
	    $('.jarallax').jarallax({
	        speed: 0.5,
	        imgWidth: 1366,
	        imgHeight: 768
	    })
	</script>  
	<!-- //jarallax -->  
	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="../Nikita/js/move-top.js"></script>
	<script type="text/javascript" src="../Nikita/js/easing.js"></script>	
	<script type="text/javascript">
	    jQuery(document).ready(function ($) {
	        $(".scroll").click(function (event) {
	            event.preventDefault();

	            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
	        });
	    });
	</script>
	<!-- //end-smooth-scrolling -->	
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
    </script>
	<!-- //smooth-scrolling-of-move-up -->  
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../Nikita/js/bootstrap.js"></script>
</body>
</html>