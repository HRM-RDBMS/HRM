﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="candidate_view.aspx.cs" Inherits="candidates_candidate_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Details</title>
<style>
    html, body, h2 {
    margin: 0;
    padding: 0.5em;
    /*font-family:'Pacifico', cursive;*/
}

body {
    background-image:url("../assets/img/intro-carousel/img11.jpg");
    font-family:'Pacifico', cursive;
}
    input[type=text] {
  width: 210px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: transparent;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
  width: 100%;
}

.show {
    display: none;
}
#Img1
    {
        width: 237px;
        height: 155px;
    }
.title,
.form {
    margin: 0 auto;
    border-radius: 2px;
}

.title {
    margin-bottom: 0.5em;
    display: block;
    background: orange;
    font-family:'Times New Roman';
    font-size: 22px;
    padding: 1em;
    text-transform: uppercase;
    box-sizing: border-box;
    text-align: center;
    cursor: pointer;
}

.flag {
    position: absolute;
    top: 7px;
    border-radius: 2px;
    border: 35px solid;
    border-top-color: orange;
    border-bottom-color: orange;
}

.show ~ .title {
    z-index: 2;
    width: 300px;
    position: relative;
    top: 250px;
    left: 0;
    transition:
        width 200ms ease-out,
        top 200ms ease-out;
}

.show ~ .title .flag {
    opacity: 0; 
}

.show ~ .title .left {
    left: 0;
    border-right-color: orange;
    border-left-color: transparent;
}

.show ~ .title .right {
    right: 0;
    border-right-color: transparent;
    border-left-color: orange;
}

.show ~ .form {
    opacity: 0;
    transition:
        opacity 200ms linear;
}

.show:checked ~ .title {
    position: relative;
    top: 0;
    width: 500px;
}

.show:checked ~ .title .left {
    opacity: 0.7;
    left: -55px;
    transition: 
        opacity 50ms linear 200ms,
        left 50ms linear 200ms;
}

.show:checked ~ .title .right {
    opacity: 0.7;
    right: -55px;
    transition: 
        opacity 50ms linear 200ms,
        right 50ms linear 200ms;
}

.show:checked ~ .form {
    opacity: 1;
}

.form {
    width: 500px;
    background: #ddd;
    padding: 2em 0 2em 0;
}

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

.col-1 label {
    height: 40px;
    line-height: 40px;
    font-size: 18px;
    text-shadow: 0.5px 0.5px 0 #fff;
   font-family:'Times New Roman';
    text-transform: capitalize;
}
.submit1 {
    border: none;
    outline: none;
    position: relative;
    height: 40px;
    color: #fff;
    font-family:'Times New Roman';
    text-transform: uppercase;
    border-radius: 2px;
    background: rgba(0,0,0,0.6);
    box-shadow: 0 0 1px 0 #000;
    letter-spacing: 1.5px;
    font-size: 18px;
    transition: background 70ms linear;
}

.submit1:hover {
    color: orange;
    background: rgba(0,0,0,1);
}
.col-2 {
    width: 60%;
}

.col-2 input {
    width: 100%;
    height: 40px;
    font-family:'Times New Roman';
    outline: none;
    border: none;
    border-radius: 20px;
    box-sizing: border-box;
    box-shadow: 
        inset 0 0 3px 0 rgba(0,0,0,0.3),
        0.5px 0.5px 0 0 #fff;
    padding: 1em;
    background: rgba(80,80,80,0.1);
}

input[type="submit"] {
    display: block;
    margin: 0 auto;
    width: 30%;
}

.group-2 {
    margin-bottom: 1em;
}

.group-2:after {
    content: '';
    display: block;
    clear: both;
}

.group-2 *:not(a) {
    float: left;
}

.group-2 .checkbox {
    display: none;
}

.group-2 label {
    font-family:'Times New Roman';
    font-size: 12px;
    height: 100%;
    cursor: pointer;
    line-height: 22px;
}

.group-2 label a {
    position: relative;
    text-decoration: none;
    color: blue;
}

.group-2 label a:after {
    position: absolute;
    top: 15px;
    left: 50%;
    right: 50%;
    content: '';
    height: 1px;
    background: blue;
    transition:
        left 70ms linear,
        right 70ms linear;
}

.group-2 label a:hover:after {
    left: 0;
    right: 0;
}



.toogle {
    position: relative;
    width: 41px;
    height: 21px;
    border-radius: 10px;
    margin-right: 1em;
    background: #ccc;
    box-shadow:
        inset 0 0 2px 0 rgba(0,0,0,0.5),
        0.5px 0.5px 0 0 #fff;
    
}

.toogle:before {
    content: '';
    width: 15px;
    height: 15px;
    border-radius: 50%;
    background: #fff;
    box-shadow: 1px 1px 2px rgba(0,0,0,0.3);
}

.checkbox ~ label .toogle:before {
    position: absolute;
    top: 3px;
    left: 3px;
    transition: left 150ms linear;
}

.checkbox ~ label .toogle {
    background: rgba(200,0,0,0.5);
}

.checkbox ~ label {
    color: rgba(0,0,0,0.4);
    transition: color 100ms linear;
}

.checkbox:checked ~ label .toogle:before {
    position: absolute;
    top: 3px;
    left: 22px;
}

.checkbox:checked ~ label .toogle {
    background: rgba(0,200,0,0.5);
}

.checkbox:checked ~ label {
    color: rgba(0,0,0,1);
}

.submit {
    border: none;
    outline: none;
    position: relative;
    height: 40px;
    color: #fff;
    font-family:'Times New Roman';
    text-transform: uppercase;
    border-radius: 2px;
    background: rgba(0,0,0,0.6);
    box-shadow: 0 0 1px 0 #000;
    letter-spacing: 1.5px;
    font-size: 18px;
    transition: background 70ms linear;
}

.submit:hover {
    color: orange;
    background: rgba(0,0,0,1);
}
    #cars
    {
        width: 235px;
        height: 40px;
    }
    #gender
    {
        width: 235px;
        height: 40px;
    }

    #qualifications
    {
        width: 235px;
        height:40px;
    }
     #experience
    {
        width: 235px;
        height:40px;
    }
    #post
    {
        width: 235px;
        height: 40px;
    }

    #output
    {
        height: 146px;
        width: 227px;
    }
     #address
    {
        width: 233px;
        height: 57px;
    }
#references
{
        width: 233px;
        height: 57px;
    }
</style>
</head>
<body>
<input type="checkbox" id="show" class="show" />
    <label for="show" class="title"><b>View Profile</b><i class="flag left"></i><i class="flag right"></i></label>
    <h2 align="center"><a href="../candidate_menu.aspx"><b>Home</b></a></h2>
<!-- Form -->
<form id="form1"  runat="server" class="form">
    
<div class="group">
        <div class="col-1">
            <label for="image"><b>Profile Picture</b></label>
        </div>
        <div class="col-2">
            
            <img id="output" runat="server" src="" />
           
        </div>
    </div>
    <!-- Candidate Id -->
    <div class="group">
        <div class="col-1">
            <label for="candidateid"><b>Candidate Id</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="candidate_id" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
        </div>
    </div>
   <!-- Candidate Name -->
    <div class="group">
        <div class="col-1">
            <label for="candidatename"><b>Candidate Name</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="candidate_name" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
            
        </div>
    </div>
     <!-- Date Of Birth -->
    <div class="group">
        <div class="col-1">
            <label for="dob"><b>Date of Birth</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="candidate_dob" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
            
        </div>
    </div>
     <!-- Gender -->
    <div class="group">
        <div class="col-1">
            <label for="gender"><b>Gender</b></label>
        </div>
        <div class="col-2">
             <asp:Label ID="candidate_gender" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
        </div>
    </div>
     <!-- Candidate Address -->
    <div class="group">
        <div class="col-1">
            <label for="address"><b>Address</b></label>
        </div>
        <div class="col-2">
             <textarea  id="address" readonly="readonly" runat="server" style="background-color:#ccc;"></textarea>
        </div>
    </div>
     <!-- Contact -->
    <div class="group">
        <div class="col-1">
            <label for="contact"><b>Mobile Number</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="candidate_num" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
        </div>
    </div>
     <!-- Qualifications -->
    <div class="group">
        <div class="col-1">
            <label for="qualifications"><b>Qualifications</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="candidate_qual" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
        </div>
    </div>
     <!-- Applying Date -->
    <div class="group">
        <div class="col-1">
            <label for="apply"><b>Applying Date</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="candidate_apply" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
        </div>
    </div>
     <!-- experience -->
    <div class="group">
        <div class="col-1">
            <label for="experience"><b>Experience</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="candidate_exp" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
        </div>
    </div>
     <!-- post applied -->
    <div class="group">
        <div class="col-1">
            <label for="post"><b>Post Applied</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="candidate_post" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
        </div>
    </div>
     <!-- Refernce -->
    <div class="group">
        <div class="col-1">
            <label for="reference"><b>References</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="candidate_ref" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
        </div>
    </div>
    <!--CV-->
    <div class="group">
        <div class="col-1">
            <label for="cv"><b>CV</b></label>
        </div>
        <div class="col-2">
            
            <img id="Img1"  runat="server" src=""/>
            
        </div>
    </div>
    <!-- Email -->
    <div class="group">
        <div class="col-1">
            <label for="email"><b>Email Id</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="candidate_email" runat="server" style="background-color:#ccc;" Text="Label"></asp:Label>
        </div>
    </div>

    
    
   
    
</form>

</body>
</html>