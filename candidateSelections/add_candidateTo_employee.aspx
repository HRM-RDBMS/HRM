<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_candidateTo_employee.aspx.cs" Inherits="candidateSelections_add_candidateTo_employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Employee Selection</title>

	<!-- Meta tags -->
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="ie=edge"/>

	<!-- Style -->
	<link rel="stylesheet" href="../Nikita/css/ctoe.css" type="text/css" media="all" />
    <style type="text/css">
        .auto-style1 {
            -webkit-appearance: none;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            cursor: pointer;
        }
    </style>
</head>

<body>
	<!----form -->
	<section class="w3l-signup-form">
		<div id="form-section">
			<div class="wrapper">


				<div class="logo">
					<a class="brand-logo" href="select_candidates.aspx">Candidate Details</a>
				</div>
				<!-- //logo -->
				<center><a href="../main.aspx" style="height:50px"><b style="color:yellow">Home</b></a></center>
				<!-- form -->
				<div class="login-form">
					<form id="form1" runat="server">
						<div class="form-fields d-grid">
							<!--<select class="w3layouts_select" runat="server" onchange="change_country(this.value)" required="">
                                <option>Designation</option> 
								<option>Assistant Manager</option> 
                                <option>Senior Manager</option>   
                                <option>Employee</option>  
                                <option>Team LeaderAssistant Manager</option> 
                                </select> 
							<input type="text" name="super"  placeholder="Supervision"  />
                            
							<input type="text" name="dept"  placeholder="Department" required="required" />-->
                            <asp:Label ID="Label5" runat="server" Text="Candidate Id"></asp:Label>
							<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="Label1" runat="server" Text="Offer Post"></asp:Label>
								<asp:DropDownList id="post2"  runat="server" style="height:50px" >
							 <asp:ListItem value="">Select The Designation</asp:ListItem>
								 <asp:ListItem value="Developer">Developer</asp:ListItem>
								 <asp:ListItem value="Testter/ Debugger">Testing & Coding</asp:ListItem>
								 <asp:ListItem value="Account">Accountant</asp:ListItem>
								 <asp:ListItem value="Sales">Salesman</asp:ListItem>
								 <asp:ListItem value="Senior Manager">Senior Manager</asp:ListItem>
								 <asp:ListItem value="Assitant Manager ">Assistant Manager</asp:ListItem>
								 <asp:ListItem value="Manager">Training manager</asp:ListItem>
							 </asp:DropDownList>
							
							
                                <asp:Label ID="Label2" runat="server" Text="In Department"></asp:Label>
								<asp:DropDownList ID="DropDownList1" runat="server" style="height:50px" DataSourceID="SqlDataSource1" DataTextField="Department_name" DataValueField="Department_id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [Department_name], [Department_id] FROM [department_details]"></asp:SqlDataSource>
                            
							 <asp:Label ID="Label3" runat="server" Text="Under Supervisor"></asp:Label>
                            <asp:DropDownList ID="DropDownList2" runat="server" style="height:50px" DataSourceID="SqlDataSource2" DataTextField="emp_name" DataValueField="manager_id"></asp:DropDownList>
							<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT managers.manager_id, employee_table.emp_name FROM managers INNER JOIN employee_table ON managers.emp_id = employee_table.emp_id"></asp:SqlDataSource>

                            <asp:Label ID="Label4" runat="server" Text="Joining Date"></asp:Label>
							<asp:TextBox ID="dt" style="height:50px" TextMode="Date" runat="server"></asp:TextBox>
							<asp:Label ID="Label7" runat="server" Text="Basic Salary"></asp:Label>
							<asp:TextBox ID="TextBox1" style="height:50px" TextMode="Number" runat="server"></asp:TextBox>
							</div>
                            
						 <asp:Button ID="add_candidate" OnClick="add_candidate_Click"  CssClass="auto-style1" runat="server" Text="Add Candidate To the Organisation" Height="47px" Width="604px" />
                       
						<!--<button type="submit">Add Candidate to Employee</button>-->
					</form>
				</div>
				
				<!-- //form -->

			</div>
		</div>
	</section>
	<!-- /form -->
    <!-- start-date-piker-->
		<script src="../Nikita/js/jquery-ui.js"></script>
		<script>
		    $(function () {
		        $("#datepicker").datepicker();
		    });
        </script>
	<!-- //End-date-piker -->
</body>

</html>