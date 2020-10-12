<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_login.aspx.cs" Inherits="employees_employee_admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title>Employee Login Form</title>
    <link href="../css/Candidate_Login.css" rel="stylesheet" />
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <div class="bg-img">
      <div class="content">
        <header>Login Form</header>
        <form id="form1" runat="server">
          <div class="field">
            <span class="fa fa-user"></span>
              <asp:TextBox ID="empId" runat="server" placeholder="Employee Id"></asp:TextBox>
            
          </div>
<div class="field space">
            <span class="fa fa-lock"></span>
        <asp:TextBox ID="pswd" runat="server" placeholder="Password" TextMode="Password" CssClass="pass-key" ></asp:TextBox>
            
          </div>

<div class="field">
    <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="Login" />
            
          </div>
</form>

          <div>
              <asp:HyperLink ID="HyperLink1" NavigateUrl="~/main.aspx" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#CC9900">Main Website</asp:HyperLink>
          </div>
</div>
</div>
</body>
</html>
