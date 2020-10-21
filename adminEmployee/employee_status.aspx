<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_status.aspx.cs" Inherits="adminEmployee_employee_status" %>


<!DOCTYPE html>
<html>
<head>
<title>Employee Status</title>
<!-- metatags-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Referral Program form a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<link href="../Nikita/css/ststyle.css" rel="stylesheet" type="text/css" media="all"/><!--style_sheet-->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,600,700,800,900" rel="stylesheet"><!--online_fonts-->
<link href="//fonts.googleapis.com/css?family=Lato" rel="stylesheet"><!--online_fonts-->

 <link rel="stylesheet" href="../Nikita/css/jquery.gallery.css">
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
									<li><a href="employee_resignation.aspx" >Resignation</a></li>
								</ul>	
								<div class="clearfix"> </div>
							</div>	
						</nav>		
					</div>
				</div>
                </div>
    
    <br /><br /><br />
<h1 style="color:white;" >Employee Status</h1>
<div class="w3ls-main">
<div class="w3ls-form">
	<form id="upload"  runat="server" >
					<div >
						<center>
						
							
							
							<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" >
								<asp:ListItem Value="1" ><p style="color:white"> Search By Employee ID</p></asp:ListItem>
								 <asp:ListItem Value="2" ><p  style="color:white"> Search By Employee Name</p></asp:ListItem>
							</asp:RadioButtonList>
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
							
							
							<div class="clearfix"></div> 
							<asp:Button ID="Button1" runat="server" Text="Retrive" OnClick="Button1_Click"></asp:Button>
                           <!--<input type="submit" value="Retrive "> -->
							<hr /><br />
							
							<div class="group" id="Div1" runat="server">
							
						  <div class="col-1">
							
							 <asp:Label ID="Label10" runat="server" Text="Employee Name" style="text-align:center;font-size:larger;font-size:20px;color:white;"></asp:Label>
						 </div>
						 <div class="col-2">
							 
						   <asp:Label ID="Label11" runat="server" Text="" style="text-align:center;font-size:larger;font-size:20px;color:white;"></asp:Label> 
						 </div>
						</div>
							<hr /><br />

							<div class="group" id="g3" runat="server" >
								<div class="col-1">
									<asp:Label ID="Label9" style="color:white;font-size:20px;text-decoration:underline;" runat="server" Text="Supervior"></asp:Label>
								</div>
								
							</div>
						<div class="group" id="g4" runat="server">
							
						  <div class="col-1">
							
							 <asp:Label ID="Label1" runat="server" Text="" style="text-align:center;font-size:larger;font-size:20px;color:white;"></asp:Label>
						 </div>
						 <div class="col-2">
							 
						   <asp:Label ID="Label2" runat="server" Text="" style="text-align:center;font-size:larger;font-size:20px;color:white;"></asp:Label> 
						 </div>
						</div>
							<br /><hr />
							<div class="group" id="g5" runat="server">
								<div class="col-1">
									<asp:Label ID="Label3" style="color:white;font-size:20px;text-decoration:underline" runat="server" Text="Projects"></asp:Label>
								</div>
								
							</div>
							<div class="group" id="g6" runat="server">
								<div class="col-1">
									<asp:Label ID="L" runat="server" style="color:red;font-size:18px" Text="Pending"></asp:Label>
								</div>
								<div class="col-2">
									<asp:Label ID="pendingLabel" style="color:white;font-size:18px" runat="server" Text="No records"></asp:Label>
									<asp:GridView ID="pending" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
								</div>
							</div>
							<div class="group" id="g7" runat="server">
								<div class="col-1">
									<asp:Label ID="Label4" runat="server" style="color:green;font-size:18px" Text="Completed"></asp:Label>
								</div>
								<div class="col-2">
									<asp:Label ID="completedlabel" style="color:white;font-size:18px" runat="server" Text="No records"></asp:Label>
									<asp:GridView ID="completed" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
								</div>
							</div>
							<div class="group" id="g8" runat="server">
								<div class="col-1">
									<asp:Label ID="Label5" runat="server" style="color:chocolate;font-size:18px" Text="Stopped"></asp:Label>
								</div>
								<div class="col-2">
									<asp:Label ID="stoppedlabel" style="color:white;font-size:18px" runat="server" Text="No records"></asp:Label>
									<asp:GridView ID="stopped" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
								</div>
							</div>
                        
							<br /><hr />
                       <div class="group" id="g9" runat="server">
								<div class="col-1">
									<asp:Label ID="Label6" style="color:white;font-size:20px;text-decoration:underline" runat="server" Text="Trainings"></asp:Label>
								</div>
								
							</div>
							<div class="group" id="g10" runat="server">
								<div class="col-1">
									<asp:Label ID="Label7" runat="server" style="color:red;font-size:18px" Text="Pending"></asp:Label>
								</div>
								<div class="col-2">
									<asp:GridView ID="GridView4" runat="server"></asp:GridView>
								</div>
							</div>
							<div class="group" id="g11" runat="server">
								<div class="col-1">
									<asp:Label ID="Label8" runat="server" style="color:green;font-size:18px" Text="Completed"></asp:Label>
								</div>
								<div class="col-2">
									<asp:GridView ID="GridView5" runat="server"></asp:GridView>
								</div>
							</div>
							
                     </center>
				
					</div>

			
					<div class="clear"> </div>
                  
					
                    
					
                    </form>
</div>
</div>
        
<footer>&copy; © 2020 Employee Status. All rights reserved | Design & Developed by HRMTeam</footer>
</body>
</html>