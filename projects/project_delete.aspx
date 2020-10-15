﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="project_delete.aspx.cs" Inherits="projects_project_delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Delete Project Details</title>
<style>
    html, body, h2 {
    margin: 0;
    padding: 0.5em;
    /*font-family:'Pacifico', cursive;*/
}

body {
    background-image:url("../assets/img/intro-carousel/1.jpg");
    font-family:'Pacifico', cursive;
}

.show {
    display: none;
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

</style>
    <script>
        function ConfirmApproval(objMsg) {
            if (confirm(objMsg)) {
                alert("Yes");
                return true;
            }
            else
                return false;
        }
    </script>
</head>
<body>

    <label for="show" class="title"><b>Delete Project </b><i class="flag left"></i><i class="flag right"></i></label>
    <h2 align="center"><a href="../project_menu.aspx"><b>Home</b></a></h2>
<!-- Form -->


<form  class="form" id="form1" runat="server" >
<div class="group">
        <div class="col-1">
            <label for="search"><b>Search Id<span  style="color:red"> *</span></b></label>
        </div>
        
    <asp:DropDownList ID="DropDownList1" style="background-color:#ccc;" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="project_id"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [project_id], [name] FROM [projects]"></asp:SqlDataSource>

  <br />
        <asp:Button ID="Button1"  CssClass="submit1"  runat="server" Text="Search" OnClick="search_Click" /> 
   

    </div>
    
     <!-- Project Id -->
    <div class="group">
        <div class="col-1">
            <label for="projectid"><b>Project Id</b></label>
        </div>
        <div class="col-2">
           <asp:Label ID="projectId" runat="server" Text=""></asp:Label>
        </div>
    </div>
     <!-- project manager Id -->
    <div class="group">
        <div class="col-1">
            <label for="managerid"><b>Manager Id</b></label>
        </div>
        <div class="col-2">
           <asp:Label ID="managerID" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <!-- Employee Id -->
    <div class="group">
        <div class="col-1">
            <label for="employeeid"><b>No of Employees</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        </div>
     <div class="group">
        <div class="col-1">
            <label for="final"><b>Employees Undergoing this Project<span  style="color:red"> </span></b></label>
            
        </div>
        <div class="col-2">
            <asp:DropDownList ID="DropDownList2" style="background-color:#ccc;" runat="server"></asp:DropDownList>
            </div>
        </div>
   <!-- project Name -->
    <div class="group">
        <div class="col-1">
            <label for="projectname"><b>Project Name</b></label>
        </div>
        <div class="col-2">
             <asp:Label ID="projectName" runat="server" Text=""></asp:Label>
        </div>
    </div>
     <!-- project start date -->
    <div class="group">
        <div class="col-1">
            <label for="start"><b>Start Date</b></label>
        </div>
        <div class="col-2">
             <asp:Label ID="start_date" runat="server" Text=""></asp:Label>
        </div>
    </div>
     <!-- project expected date -->
    <div class="group">
        <div class="col-1">
            <label for="expected"><b>Expected Date</b></label>
        </div>
        <div class="col-2">
             <asp:Label ID="expectedDate" runat="server" Text=""></asp:Label>
        </div>
    </div>
     <!-- project final date -->
    <div class="group">
        <div class="col-1">
            <label for="final"><b>Final Date</b></label>
        </div>
        <div class="col-2">
             <asp:Label ID="final_date" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <!-- project total hours 
    <div class="group">
        <div class="col-1">
            <label for="total"><b>Total Hours</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="expectedLabel" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <!-- project budget -->
    <div class="group">
        <div class="col-1">
            <label for="budget"><b>Project Budget</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="budget" runat="server" Text=""></asp:Label>
        </div>
    </div>
     <!-- project labor cost -->
    <div class="group">
        <div class="col-1">
            <label for="labor"><b>Labor Cost</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="labourcost" runat="server" Text=""></asp:Label>
        </div>
    </div>
     <!-- project material cost -->
    <div class="group">
        <div class="col-1">
            <label for="material"><b>Material Cost</b></label>
        </div>
        <div class="col-2">
            <asp:Label ID="materialcost" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <!-- project total cost -->
    <div class="group">
        <div class="col-1">
            <label for="totals"><b>Total Cost</b></label>
        </div>
        <div class="col-2">
           <asp:Label ID="totalcost" runat="server" Text=""></asp:Label>
        </div>
    </div>
     <!-- Project status -->
    <div class="group">
        <div class="col-1">
            <label for="status"><b>Project Status</b></label>
        </div>
        <div class="col-2">
             <asp:Label ID="status" runat="server" Text=""></asp:Label>
        </div>
    </div>
    
   
    <!-- Submit button -->
   <asp:Button ID="delete" OnClientClick="return confirm('Are you sure you want to Delete?\nNote:- The page will refresh on Successfull Deletion.');" 
            Text="Delete" runat="server"   style="height:50px; width:150px;" OnClick="delete_Click" />
     
</form>
</body>
</html>