<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_resignation.aspx.cs" Inherits="adminEmployee_employee_resignation" %>



<!DOCTYPE html>
<html>
<head>
<title>Employee Resignations </title>
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
<body >
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
			<h1><span class="image">Resignations</h1>
		</div>
		<div class="w3_agile_main_grids">
			<div class="agileits_w3layouts_main_grid">
				
					<form runat="server" >
                       
						<!-- Candidate Id -->
						<div class="group">
							<div class="col2">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
							</div>
						</div>
						<div class="group" id="b1" runat="server">
							<div class="col2">
                                
                                <asp:Button ID="Button4" runat="server" Text="Approved List" OnClick="Button4_Click" />
						       
						</div></div>
						<div class="group">
							<div class="col2">
                                <asp:Button ID="Button5" runat="server" Text="Denied List" OnClick="Button5_Click" />
							</div>
						</div>
						<div class="group" id="refresh" runat="server">
							<div class="col2">
                                <asp:Button ID="Button6" runat="server" Text="Refresh" OnClick="Button6_Click" />
							</div>
						</div>
						<div class="group" id="grids" runat="server">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource3" ForeColor="Black" Width="603px">
                            <Columns>
                                <asp:BoundField DataField="emp_id" HeaderText="Employee ID" SortExpression="emp_id" />
                                <asp:BoundField DataField="emp_name" HeaderText="Employee Name" SortExpression="emp_name" />
                                <asp:BoundField DataField="reason" HeaderText="Reason" SortExpression="reason" />
                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="Gray" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT resignation.reason, resignation.date, resignation.status, employee_table.emp_name, resignation.emp_id FROM resignation INNER JOIN employee_table ON resignation.emp_id = employee_table.emp_id WHERE (resignation.status = 'Approved')"></asp:SqlDataSource>

                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="emp_id" DataSourceID="SqlDataSource4" ForeColor="Black" Width="604px">
                            <Columns>
                                <asp:BoundField DataField="emp_id" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="emp_id" />
                                <asp:BoundField DataField="emp_name" HeaderText="Employee Name" SortExpression="emp_name" />
                                <asp:BoundField DataField="reason" HeaderText="Reason" SortExpression="reason" />
                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
							<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT employee_table.emp_name, employee_table.emp_id, resignation.reason, resignation.status, resignation.date FROM employee_table INNER JOIN resignation ON employee_table.emp_id = resignation.emp_id WHERE (resignation.status = 'Denied')"></asp:SqlDataSource>
							</div>
						<div class="group" id="g1" runat="server" >
						<div class="col-1">
						<label for="candidateid" style="color:black"><b>Candidate Id</b></label>
						</div>
						<div class="col-2">
                            <asp:DropDownList ID="DropDownList1" runat="server"  DataSourceID="SqlDataSource2" DataTextField="emp_id" DataValueField="emp_id"></asp:DropDownList>
						    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT resignation.emp_id, employee_table.emp_id AS Expr1 FROM employee_table INNER JOIN resignation ON employee_table.emp_id = resignation.emp_id WHERE (resignation.status = 'Pending')"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [emp_id] FROM [employee_table]"></asp:SqlDataSource>
						</div>
						</div>
						<div class="group" id="bt" runat="server">
                            <asp:Button ID="Button3" runat="server" Text="Fetch Details" OnClick="DropDownList1_SelectedIndexChanged" Width="602px" />
						</div>
						<div class="group"  id="g2" runat="server">
						<div class="col-1">
						<label for="candidateid" style="color:black"><b>Candidate Name</b></label>
						</div>
						<div class="col-2">
						<asp:Label ID="employeename" runat="server" style="background-color:#ccc;" Text="dd"></asp:Label>
						</div>
						</div>

						<div class="group" id="g4" runat="server">
						<div class="col-1">
						<label for="candidateid" style="color:black"><b>Reason</b></label>
						</div>
						<div class="col-2">
						<asp:Label ID="reason"  runat="server" style="background-color:#ccc;" Text=""></asp:Label>
						</div>
						</div>
						<div class="group" id="g5" runat="server" >
						<div class="col-1">
						<label for="candidateid" style="color:black"><b>Date</b></label>
						</div>
						<div class="col-2">
						<asp:Label ID="date" runat="server" style="background-color:#ccc;" Text=""></asp:Label>
						</div>
						</div>

						<div class="group" id="g6" runat="server">
							<div class="col-1">
                                <asp:Button ID="Button1" OnClientClick="return confirm('Are you sure to Accept the Resignation');" runat="server" Text="Accept Resignation" OnClick="Button1_Click" Width="198px" />
							</div>
							<div class="col-2">
                                <asp:Button ID="Button2" OnClientClick="return confirm('Are you sure to Decline the Resignation');" runat="server" Text="Decline Resignation" OnClick="Button2_Click" Width="222px" />
							</div>
						</div>

						
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