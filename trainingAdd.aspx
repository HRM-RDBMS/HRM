<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trainingAdd.aspx.cs" Inherits="trainingAdd" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/trainingDetails.css" rel="stylesheet" />
    <style type="text/css">
        
        .auto-style1
        {
            width: 428px;
        }
        .auto-style2
        {
            width: 859px;
        }
        .auto-style3
        {
            width: 859px;
            height: 27px;
        }
        .auto-style4
        {
            width: 428px;
            height: 27px;
        }
        .auto-style7
        {
            width: 859px;
            height: 70px;
        }
        .auto-style8
        {
            width: 428px;
            height: 70px;
        }
        .auto-style9
        {
            width: 859px;
            height: 33px;
        }
        .auto-style10
        {
            width: 428px;
            height: 33px;
        }
        .auto-style11
        {
            width: 859px;
            height: 38px;
        }
        .auto-style12
        {
            width: 428px;
            height: 38px;
        }
        .auto-style13
        {
            width: 859px;
            height: 37px;
        }
        .auto-style14
        {
            width: 428px;
            height: 37px;
        }

        .colours {
            color: black;
            font-size:larger;
            font-style:italic;
        }
        .textboxColor {
            background-color: bisque;
        }
        </style>
</head>
<body>
<form id="form1" runat="server"> 
    <center>
<div class="hom">
    <a class="link" href="trainingDelete.aspx"><b>Delete Training</b></a>
        <a class="link" href="trainingEdit.aspx"><b>Edit Training</b></a>
        <a class="link" href="trainingAdd.aspx"><b>Add Training</b></a>
        <a class="link" href="comingsoon_02/soon/comingSoon.html"><b>Add Employee</b></a>
        <a class="link" href="trainingView.aspx"><b>View Trainings</b></a>
        <a href="main.html"><b>Home</b></a></div>
    <br />
        </center>
    <h3 align="center"style="color:brown"><b>Add Training Details</b></h3>

    <table align="right" style="background-color: none; width: 1295px;height:641px">
             
                 <tr>
                 <td align="right" class="auto-style2"><b>Training Name</b></td>
                 <td class="auto-style1">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox4" class="textboxColor" runat="server" Width="310px"></asp:TextBox>
&nbsp;&nbsp;</td>
             </tr>
             <tr>
                 <td align="right" class="auto-style3"><b>Category Name</b></td>
                 <td class="auto-style4">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:DropDownList class="textboxColor" ID="DropDownList1" runat="server" Width="140px" Height="35px" DataSourceID="SqlDataSource1" DataTextField="tcategory_name" DataValueField="tcategory_code"> </asp:DropDownList>
                     <br />
                 </td>
                 </tr>
                 <tr>
                 <td align="right" class="auto-style7"><b> Category Code</b></td>
                 <td class="auto-style8">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label1" CssClass="textboxColor" runat="server" Text="" class="colours"></asp:Label>

                     </td>
             </tr>
             <tr>
                 <td align="right" class="auto-style2"><b> Description</b></td>
                 <td class="auto-style1">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox6" CssClass="textboxColor" runat="server" style="margin-left: 0px" 
                         TextMode="MultiLine" Width="310px"></asp:TextBox>
                     &nbsp;</td>
                 </tr>
                 <tr>
                 <td align="right" class="auto-style9"><b> Start Date</b></td>
                 <td class="auto-style10">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox7" CssClass="textboxColor" runat="server" Width="310px" TextMode="Date"></asp:TextBox>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td align="right" class="auto-style11"><b> End Date</b></td>
                 <td class="auto-style10">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox1" class="textboxColor" runat="server" Width="310px" TextMode="Date"></asp:TextBox>
                     &nbsp;</td>
                 </tr>
                 <tr>
                 <td align="right" class="auto-style13"><b> Company Name</b></td>
                 <td class="auto-style10">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox2" runat="server" CssClass="textboxColor" Width="310px" ></asp:TextBox>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td align="right" class="auto-style2"><b> Place</b></td>
                 <td class="auto-style1">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" class="textboxColor" Width="310px"></asp:TextBox>
                     <br />
                 </td>
                 </tr>
                 <tr>
                 <td align="right" class="auto-style2"><b>Time</b></td>
                 <td class="auto-style10">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox5" runat="server" Width="310px" class="textboxColor" TextMode="Time"></asp:TextBox>
                     &nbsp;</td>
             </tr>
             
                
            
                
             <tr>
        <td align="center" colspan="2" class="auto-style67">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button2" runat="server" Height="44px" Text="Add Training" Width="201px" 
                Font-Bold="True" Font-Italic="False" Font-Size="Large" 
                style="margin-top: 26px" OnClick="Button2_Click" />
        </td>
        </tr>
         </table>







           

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [tcategory_name], [tcategory_code] FROM [training_category]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>

    </form>
    </body>
</html>
