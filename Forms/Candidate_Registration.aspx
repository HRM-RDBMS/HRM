﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Candidate_Registration.aspx.cs" Inherits="Forms_Candidate_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link href="../CSS/Candidate_Registration.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" action="Candidate_Login.aspx">
   <div class="login-wrap">
	<div class="login-html">
		<%--<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>--%>
		<input id="tab-2" type="radio" name="tab" class="sign-up" checked><label for="tab-2" class="tab">Register Here</label>
	<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<%--<label for="user" class="label"></label>
					<input id="user" type="text" class="input">--%>
				</div>
				<div class="group">
					<%--<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password">--%>
				</div>
				<div class="group">
					<%--<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>--%>
				</div>
				<div class="group">
					<%--<input type="submit" class="button" value="Sign In">--%>
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<%--<a href="#forgot">Forgot Password?</a>--%>
				</div>
			</div>
           <%-- <form action="Candidate_Login.aspx"></form>--%>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="Text1" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="Password1" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input id="Password2" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Email Address</label>
					<input id="Text2" type="text" class="input">
				</div>
                <div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Register me</label>
				</div>
				<div class="group">
				<input type="submit" class="button" value="Sign Up">
				</div>
				<%--<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</label>
				</div>
			</div>--%>
		</div>
	</div>
</div>
    </form>
</body>
</html>