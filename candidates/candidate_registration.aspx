﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="candidate_registration.aspx.cs" Inherits="candidates_candidate_registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Candidate Registration</title>
    
    <link href="../css/Candidate_Registration.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server" >
   <div class="login-wrap">
	<div class="login-html">
		<!--<%--<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>--%>-->

		<input id="tab-2" type="radio" name="tab" class="sign-up" checked="checked"/><label for="tab-2" class="tab">Register Here</label>


	<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<!--<%--<label for="user" class="label"></label>
					<input id="user" type="text" class="input">--%>-->
				</div>
				<div class="group">
					<!--<%--<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password">--%>-->
				</div>
				<div class="group">
					<!--<%--<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>--%>-->
				</div>
				<div class="group">
					<!--<%--<input type="submit" class="button" value="Sign In">--%>-->
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<!--<%--<a href="#forgot">Forgot Password?</a>--%>-->
				</div>
			</div>
           <!--<%-- <form action="Candidate_Login.aspx"></form>--%>-->
<!--           <label for="tab-1"><a href="Candidate_Login.html">Already Member?</a></label>-->
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<!--<input id="username" type="text" class="input">-->
                    <asp:TextBox ID="username"  runat="server" CssClass="input"></asp:TextBox>

				</div>
                <div class="group">
					<label for="pass" class="label">Email Address</label>
					<!--<input id="Text2" type="text" class="input">-->
                    <asp:TextBox ID="email1" runat="server" TextMode="Email" CssClass="input"></asp:TextBox>
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					
                    <asp:TextBox ID="pwd1" TextMode="Password" CssClass="input" runat="server"></asp:TextBox>

				</div>
				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<!--<input id="pwd2" type="password" class="input" data-type="password"/>-->
                     <asp:TextBox ID="pwd2" TextMode="Password" CssClass="input" runat="server"></asp:TextBox>
				</div>
                <div class="group">
					<input id="check" type="checkbox" class="check" checked="checked"/>
					<label for="check"><span class="icon"></span> Register me</label>
				</div>
				<div class="group">
                    <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" CssClass="button" OnClientClick="checkForm(this)" />
                    <!--<input id="Submit1" type="submit" class="button" value="Sign up" onclick="checkForm(this)" />-->
				
				</div>
				<!--<div class="hr"></div>-->
				<div class="foot-lnk">
					<label for="tab-1"><a href="Candidate_Login.html">Already Member?</a></label>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button1_Click" />

				</div>
			</div>
		</div>
	</div>
</div>
    </form>
    <script type="text/javascript">
        function checkForm(form) {
            if (document.getElementById("username").value == "") {
                alert("Error: Username cannot be blank!");
                //    form.username.focus();
                return false;
            }
                else if (document.getElementById("email1").value == "") {
                    alert("Error: Email cannot be blank!");
                return false;
                }
            
            //// regular expression to match required string format
            //re = /^\w+$/;
            //if (!re.test(form.username.value)) {
            //    alert("Error: Username must contain only letters, numbers and underscores!");
            //    form.username.focus();
            //    return false;
            //}
            //compare both password field value 

            if (document.getElementById("pwd1").value != "" && document.getElementById("pwd1").value == document.getElementById("pwd2").value) {
                if (form1.pwd1.value.length < 6) {
                    alert("Error: Password must contain at least six characters!");
                    
                    return false;
                }
                //compare username and password if both are same generate error 
                //if (form.pwd1.value == form.username.value) {
                //    alert("Error: Password must be different from Username!");
                //    form.pwd1.focus();
                //    return false;
                //}
                // regular expression to match required at least one numeric value in passord field
                re = /[0-9]/;
                if (!re.test(document.getElementById("pwd1").value)) {
                    alert("Error: password must contain at least one number (0-9)!");
                    
                    return false;
                }
                // regular expression to match required at least one lowercase letter in passord field
                re = /[a-z]/;
                if (!re.test(document.getElementById("pwd1").value)) {
                    alert("Error: password must contain at least one lowercase letter (a-z)!");
                    
                    return false;
                }
                // regular expression to match required at least one uppercase letter in passord field
                re = /[A-Z]/;
                if (!re.test(document.getElementById("pwd1").value)) {
                    alert("Error: password must contain at least one uppercase letter (A-Z)!");
                    
                    return false;
                }
            } else {
                alert("Error: Please check that you've entered and confirmed your password!");
                
                return false;
            }
            
            return true;
        }

    </script>
</body>
</html>

