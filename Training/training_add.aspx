<%@ Page Language="C#" AutoEventWireup="true" CodeFile="training_add.aspx.cs" Inherits="Training_training_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add training Details</title>
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
    width: 39%;
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
    border-style: none;
        border-color: inherit;
        border-width: medium;
width: 94%;
        height: 40px;
        font-family:'Times New Roman';
        outline: none;
        border-radius: 20px;
        box-sizing: border-box;
        box-shadow: 
        inset 0 0 3px 0 rgba(0,0,0,0.3),
        0.5px 0.5px 0 0 #fff;
        padding: 1em;
        margin-left: 8px;
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
        width: 225px;
        height: 40px;
        margin-left: 10px;
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
    #Img1
    {
        width: 237px;
        height: 155px;
    }
</style>
</head>
<body>
<center><h1>Add Training Details</h1></center>
    <form id="form1" runat="server" class="form">   
     <!-- training Id -->
      
    <div class="group">
        <div class="col-1">
            <label for="trainingid"><b>Training Id<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="trainingid" runat="server" placeholder="training id" style="background-color:#ccc;"></asp:TextBox>
            
        </div>
    </div>
  <!-- training name -->
      
    <div class="group">
        <div class="col-1">
            <label for="trainingname"><b>Training name<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="trainingname" runat="server" placeholder="training name" style="background-color:#ccc;"></asp:TextBox>
            
        </div>
    </div>
  <!-- training category code -->
      
    <div class="group">
        <div class="col-1">
            <label for="tcategorycode"><b>T_Category code<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="tccode" runat="server" placeholder="training category code" style="background-color:#ccc;" 
                ></asp:TextBox>
            
        </div>
    </div>
  <!-- training category name -->
      
    <div class="group">
        <div class="col-1">
            <label for="categoryname"><b>T_Category name<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <select id="categoryname" name="categoryname" required="required" 
                style="background-color:#ccc; height: 45px; width: 228px;">
                <option value="name2"><b>Select Training category name</b></option>
                <option value="c1">Re-training</option>
                <option value="c2">first training</option>
                <option value="c3">xyz</option>
            </select>&nbsp;&nbsp;
        </div>
    </div>
  <!-- training description -->
      
    <div class="group">
        <div class="col-1">
            <label for="description"><b>Description<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="description" runat="server" TextMode="MultiLine" placeholder="training description"
                style="background-color:#ccc;" Width="222px"></asp:TextBox>
            
        </div>
    </div>
  <!-- training start date -->
      
    <div class="group">
        <div class="col-1">
            <label for="sdate"><b>T_Start date<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="sdate" runat="server" style="background-color:#ccc;" 
                TextMode="Date" ></asp:TextBox>
            
        </div>
    </div>
  <!-- training ending date -->
      
    <div class="group">
        <div class="col-1">
            <label for="edate"><b>T_End date<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="edate" runat="server" style="background-color:#ccc;" 
                TextMode="Date" ></asp:TextBox>
            
        </div>
    </div>
   <!-- training company -->
      
    <div class="group">
        <div class="col-1">
            <label for="company"><b>Trainingcompany<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="company" runat="server" placeholder="training company" style="background-color:#ccc;" 
                ></asp:TextBox>
            
        </div>
    </div>
  <!-- training place -->
      
    <div class="group">
        <div class="col-1">
            <label for="place"><b>Training place<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="place" runat="server" placeholder="training place" style="background-color:#ccc;" 
                ></asp:TextBox>
            
        </div>
    </div>
  <!-- training time-->
      
    <div class="group">
        <div class="col-1">
            <label for="time"><b>T_Category code<span  style="color:red"> *</span></b></label>
        </div>
        <div class="col-2">
            <asp:TextBox ID="TextBox3" runat="server" placeholder="training category code" textmode="Time" style="background-color:#ccc;" 
                ValidateRequestMode="Enabled" ></asp:TextBox>
            
        </div>
    </div>
  
   <!-- Terms & Conditions -->
    <div class="group-2">
        <asp:CheckBox ID="terms" runat="server" />
       <!-- <input type="checkbox" class="checkbox" id="terms" />-->
        <label for="terms">I declare to have read and accepted the <a href="#">terms of service</a></label>
    </div>
    <!-- Notifications -->

    
   <!-- Submit button -->
        <div class ="submit">
            
               <%--<center> <input id="Reset1" type="reset" value="reset" class="submit1"   /></center>--%>
               <asp:Button ID="reset1" runat="server" Text="reset" CssClass="submit1" />
            </div>
            </br>
            <div class="submit">
                <asp:Button ID="submit" runat="server" Text="Submit" CssClass="submit" />
                
            </div>
        
       
        
   <!-- <input type="submit" class="submit" value="Submit" class="submit1 /><br />
     <input type="submit" class="submit1" value="Cancel" />-->
</form>
</body>
</html>
