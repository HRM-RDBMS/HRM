<%@ Page Language="C#" AutoEventWireup="true" CodeFile="candidate_login.aspx.cs" Inherits="candidates_candidate_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title>Candidate Login Form</title>
    <link href="../css/Candidate_Login.css" rel="stylesheet" />
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <div class="bg-img">
      <div class="content">
        <header>Candidate Login </header>
        <form id="form1" runat="server">
          <div class="field">
            <span class="fa fa-user"></span>
              <asp:TextBox ID="candidateId" runat="server" placeholder="Application Id"></asp:TextBox>
            
          </div>
<div class="field space">
            <span class="fa fa-lock"></span>
        <asp:TextBox ID="pswd" runat="server" placeholder="Password" TextMode="Password" CssClass="pass-key" ></asp:TextBox>
            
          </div>

<div class="field">
    <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="Login" />
            
          </div>
</form>
<div class="signup">
Don't have account?
          <a href="candidate_registration.aspx">Signup Now</a>
        </div>
          <div>
              <asp:HyperLink ID="HyperLink1" NavigateUrl="~/main.aspx" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#CC9900">Main Website</asp:HyperLink>
          </div>
</div>
</div>
</body>
</html>
