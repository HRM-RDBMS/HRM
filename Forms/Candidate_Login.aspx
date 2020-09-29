<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Candidate_Login.aspx.cs" Inherits="Forms_Candidate_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Login Form</title>
    <link href="../CSS/Candidate_Login.css" rel="stylesheet" />
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  </head>
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="bg-img">
      <div class="content">
        <header>Login Form</header>
        <form action="../Candidate_Profile.html">
          <div class="field">
            <span class="fa fa-user"></span>
            <input type="text" required placeholder="Email or Phone">
          </div>
<div class="field space">
            <span class="fa fa-lock"></span>
            <input type="password" class="pass-key" required placeholder="Password">
            <%--<span class="show">SHOW</span>--%>
          </div>
<div class="pass">
            <a href="../index.html">Forgot Password?</a>
           
          </div>
<div class="field">
            <input type="submit" value="LOGIN">
          </div>
</form>
<%--<div class="login">
Or login with</div>
<div class="links">
          <div class="facebook">
            <i class="fab fa-facebook-f"><span>Facebook</span></i>
          </div>
<div class="instagram">
            <i class="fab fa-instagram"><span>Instagram</span></i>
          </div>
</div>--%>
<div class="signup">
Don't have account?
          <a href="Candidate_Registration.aspx">Signup Now</a>
        </div>
</div>
</div>
<script>
      const pass_field = document.querySelector('.pass-key');
      const showBtn = document.querySelector('.show');
    showBtn.addEventListener('click', function(){
        if(pass_field.type === "password"){
            pass_field.type = "text";
            showBtn.textContent = "HIDE";
            showBtn.style.color = "#3498db";
        }else{
            pass_field.type = "password";
            showBtn.textContent = "SHOW";
            showBtn.style.color = "#222";
        }
    });
    </script>
</body>
</html>
