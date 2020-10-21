<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminLogins</title>
	<link rel="stylesheet" href="../css/adminstyle.css"/>
	<link href="../css/Candidate_Login.css" rel="stylesheet" />
	<link href="//fonts.googleapis.com/css?family=Muli:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>

		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Capture login form  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />	
	

       

</head>

    <body  style="background:url('../images/3.jpg') no-repeat 0px 0px;
	background-size: cover;
	font-family: 'Open Sans', sans-serif;
	background-attachment: fixed;
    background-position: center;">
		
      <div class="content">
        <header><p style="color:red">*Admin Login Required*</p></header>
        <form id="form1" runat="server">
          <div class="field">
            <span class="fa fa-user"></span>
              <asp:TextBox ID="username" class="name" placeholder="Username" required="" runat="server"></asp:TextBox>
            
          </div>
<div class="field space">
            <span class="fa fa-lock"></span>
         <asp:TextBox ID="password" runat="server" TextMode="Password" class="password" placeholder="Password" required=""></asp:TextBox>
            
          </div>

<div class="field">
     <asp:Button ID="Button1" runat="server" Text="Login"  OnClick="Button1_Click"/>
            
          </div>
</form>

          
          <div class="footer-w3l">
		<asp:HyperLink ID="HyperLink2" NavigateUrl="../main.aspx" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="DarkGreen">Go Main Website</asp:HyperLink>
	</div>
</div>
</body>
</html>
