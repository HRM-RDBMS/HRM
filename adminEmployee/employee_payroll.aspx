<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_payroll.aspx.cs" Inherits="adminEmployee_employee_payroll" %>

<!DOCTYPE HTML>
<html>

<head>
	<title>Employee PayRoll</title>
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Business Consultancy Form a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
    </script>
	<!-- //Meta-Tags -->
	<!--<!-- Stylesheets -->
	<link href="../Nikita/css/pstyle.css" rel='stylesheet' type='text/css' />
	<!--// Stylesheets -->
	<!--fonts-->
	<link href="//fonts.googleapis.com/css?family=Abhaya+Libre:400,500,600,700,800" rel="stylesheet">
	<!--//fonts-->
    <!-- //Custom Theme files -->
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
    width: 40%;
}
	</style>
</head>
	
<body style="background-image:url(../Nikita/images/payroll.jpg)">


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
        <br /><br />
        <br />

		<h1 style="color:white;">Employee PayRoll </h1><br />
	<div class="w3ls-contact">
		<!-- form starts here -->
		<form id="form1" runat="server">
			<div class="group">
				<center>
				<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" >
								<asp:ListItem Value="1" ><p style="color:white"> Search By Employee ID</p></asp:ListItem>
								 <asp:ListItem Value="2" ><p  style="color:white"> Search By Employee Name</p></asp:ListItem>
							</asp:RadioButtonList>
					</center>
			</div>
							
							<div class="group" id="g1" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p  style="color:white">Employee Id</p></b></label>
						 </div>
						 <div class="col-2">
						  <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="emp_id" DataValueField="emp_id" Height="49px" Width="168px"></asp:DropDownList>       
						     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [emp_id], [emp_name] FROM [employee_table]"></asp:SqlDataSource>
						 </div>
						</div>

							<div class="group" id="g2" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p  style="color:white">Employee Name</p></b></label>
						 </div>
						 <div class="col-2">
						  <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="emp_name" DataValueField="emp_id" Height="38px" Width="160px"></asp:DropDownList>       
						 </div>
						</div>
							<div class="group">
								<div class="col-1">
							<asp:Button ID="Button1" runat="server" Text="Retrive" OnClick="Button1_Click" Width="126px"></asp:Button>
						 </div>
								 <div class="col-2">
						  <asp:Button ID="Button2" runat="server" Text="Get previous Pay slips" OnClick="Button2_Click" Width="169px"></asp:Button>

								 </div>
								
							</div>

							<div class="group" runat="server"  id="payslips">
								<center>
                                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Dotted" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
                                <asp:Label ID="Label1" runat="server" Text="No Records"></asp:Label>
									</center>
								</div>
							
                           <!--<input type="submit" value="Retrive "> -->
							<hr /><br />
							<div class="group" id="g3" runat="server">
					 <div class="col-1">
					<label for="employee_nm"><b><p style="color:white">Salary of Month</b></label>
					 </div>
					<div class="col-2">
					 <asp:TextBox ID="month"   TextMode="Date" style="background-color:#ccc;text-align:center;font-size:larger" runat="server"></asp:TextBox>							
					</div>
					</div>

							<div class="group" id="g4" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p style="color:white">Basic </b></label>
						 </div>
						 <div class="col-2">
							 <input id="basic" runat="server" readonly="readonly" type="text" style="background-color:#ccc;text-align:center;font-size:larger" />
						   <!--<asp:TextBox ID="basdsic" runat="server" ReadOnly="true"   style="background-color:#ccc;text-align:center;font-size:larger"></asp:TextBox>         -->
						 </div>
						</div>
        
						
					<div class="group" id="g5" runat="server">
					 <div class="col-1">
					<label for="employee_nm"><b><p style="color:white">Allowances</b></label>
					 </div>
					<div class="col-2">

					 <asp:TextBox ID="allowances"  TextMode="Number" onblur="change()"  style="background-color:#ccc;text-align:center;font-size:larger" runat="server"></asp:TextBox>							
					</div>
					</div>
							<div class="group" id="g6" runat="server">
					 <div class="col-1">
					<label for="deductions"><b><p style="color:white">Deductions (5%)</b></label>
					 </div>
					<div class="col-2">
						<input id="deductions" type="text" readonly="readonly"  runat="server" style="background-color:#ccc;text-align:center;font-size:larger" />
					<!-- <asp:TextBox ID="deductdsdions" TextMode="Number"   ReadOnly="true" style="background-color:#ccc;text-align:center;font-size:larger" runat="server"></asp:TextBox>	-->						
					</div>
					</div>
							<div class="group" id="g7" runat="server">
						  <div class="col-1">
							 <label for="employeeId"><b><p style="color:white">Total</b></label>
						 </div>
						 <div class="col-2">
                             <input id="total"  type="text" readonly="readonly"  runat="server" style="background-color:#ccc;text-align:center;font-size:larger" />
						   <!--<asp:TextBox ID="totald" runat="server"  TextMode="Number" ReadOnly="true"  style="background-color:#ccc;text-align:center;font-size:larger"></asp:TextBox>         -->
						 </div>
						</div>

			<div class="group" id="g8" runat="server">
						  
							 <asp:Button ID="pay" runat="server" OnClientClick="return confirm('Click Okay to proced with the Transaction');" OnClick="pay_Click" Text="Pay Employee" Width="238px"  />
						 </div>
						 
						



		</form>
		<!-- //form ends here -->
	</div>
        </div>
       </div>
	<!--copyright-->
	<div class="copy-wthree">
		<p>© 2020 Employee Performance Details. All rights reserved | Design & Developed by HRMTeam
		</p>
	</div>
	<!--//copyright-->

	
    <script type="text/javascript">
        function change() {
            var basic = parseInt(document.getElementById("basic").value);
            var allow = parseInt(document.getElementById("allowances").value);
			var dec = (basic * 5) / 100.0;
			document.getElementById("<%=deductions.ClientID%>").value = dec;
			var total = basic + allow - dec;
			//alert("Total Cost:  " + total);
			document.getElementById("<%=total.ClientID%>").value = total;


        }


    </script>
</body>

</html>