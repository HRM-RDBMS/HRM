<%@ Page Language="C#" AutoEventWireup="true" CodeFile="project_add.aspx.cs" Inherits="projects_project_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Add Project Details</title>
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
    <script type="text/javascript">
        function change() {
            var mat = parseInt(document.getElementById("material").value);
            var lab = parseInt(document.getElementById("labour").value);
            var total = mat + lab;
            //alert("Total Cost:  " + total);
            document.getElementById("<%=total.ClientID%>").value = total;

            
        }
        

    </script>
</head>
<body>
<input type="checkbox" id="show" class="show" />
    <label for="show" class="title"><b>Add Project </b><i class="flag left"></i><i class="flag right"></i></label>
    <h2 align="center"><a href="../project_menu.aspx"><b>Home</b></a></h2>
<!-- Form -->
<form  class="form" id ="form1" runat="server">
     <!-- project Name -->
    <div class="group">
        <div class="col-1">
            <label for="projectname"><b>Project Name<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="projectname"  placeholder="Project Name"  required="required" runat="server"></asp:TextBox>
           <!-- <input type="text" id="projectname" placeholder="Project Name" 
                required="required" />-->
        </div>
    </div>
     <!-- project manager Id -->
    <div class="group">
        <div class="col-1">
            <label for="managerid"><b>Manager Id<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:DropDownList ID="DropDownList1" style="background-color:#ccc;"  runat="server" DataSourceID="SqlDataSource1" DataTextField="emp_name" DataValueField="manager_id"  ></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="select employee_table.emp_name, managers.manager_id from employee_table, managers 
where managers.emp_id = employee_table.emp_id"></asp:SqlDataSource>&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
           <!-- <input type="text" id="managerid" placeholder="Project manager Id" 
                required="required" />-->
        </div>
    </div>
    
   
     <!-- project start date -->
    <div class="group">
        <div class="col-1">
            <label for="start" ><b>Start Date<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="start" TextMode="Date"   required="required" placeholder="Project Start Date" runat="server"></asp:TextBox>
          <!--  <input type="date" id="start" placeholder="Project Start Date" 
                required="required" />-->
        </div>
    </div>
     <!-- project expected date -->
    <div class="group">
        <div class="col-1">
            <label for="expected"><b>Expected Date<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="expected"  TextMode="Date"  required="required" placeholder="Project Expected End Date" runat="server"></asp:TextBox>
           <!-- <input type="date" id="expected" placeholder="Project Expected End Date" 
                required="required" />-->
        </div>
    </div>
     
    <!-- project budget -->
    <div class="group">
        <div class="col-1">
            <label for="budget"><b>Project Budget<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="budget" required=""  TextMode="Number"  placeholder="Project Budget" runat="server"></asp:TextBox>
         <!--   <input type="text" id="budget" placeholder="Project Budget" 
                required="required" />-->
        </div>
    </div>
     <!-- project labor cost -->
    <div class="group">
        <div class="col-1">
            <label for="labor"><b>Labor Cost<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            
            <asp:TextBox ID="labour" required=""  TextMode="Number"  placeholder="Labour Cost" runat="server"></asp:TextBox>
           <!-- <input type="text" id="labor" placeholder="Project Labor cost" 
                required="required" />-->
        </div>
    </div>
     <!-- project material cost -->
    <div class="group">
        <div class="col-1">
            <label for="material"><b>Material Cost<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="material" required="" onblur="change()"    placeholder="Material Cost" runat="server"></asp:TextBox>
           <!-- <input type="text" id="material" placeholder="Project material cost" 
                required="required" />-->
        </div>
    </div>
    <!-- project total cost -->
    <div class="group">
        <div class="col-1">
            <label for="totals"><b>Total Cost<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="total" ReadOnly="true" runat="server"></asp:TextBox>
           <!-- <input type="text" id="totals" placeholder="Project total cost" 
                required="required" />-->
        </div>
    </div>
    
    
    
    <!-- Submit button -->
   <center> <input type="reset" class="submit1" value="Reset" /></center>
    <asp:Button ID="Button1" CssClass="submit" runat="server" Text="Submit" OnClick="Button1_Click" />
    
     
</form>
</body>
</html>