<%@ Page Language="C#" AutoEventWireup="true" CodeFile="departmentAdd.aspx.cs" Inherits="departmentAdd" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/departmentstyle.css" rel="stylesheet" />
    <style>
        .image {
            content:url('images/cool-background.jpg');
        }
        .auto-style1 {
            width: 683px;
        }
        .auto-style2 {
            width: 1295px;
            height: 574px;
        }
        .colors{
            color:black;
        }
    </style>
</head>
<body bgcolor="#00FCB0" >
    <div >
    <form id="form1" runat="server">
        <div class="hom">
        <a class="link" href="departmentDelete.aspx"><b>Delete Department</b></a>
        <a class="link" href="departmentEdit.aspx"><b>Edit Department</b></a>
        <a class="link" href="departmentAdd.aspx"><b>Add Department</b></a>
        <a class="link" href="departmentView.aspx"><b>View Department</b></a>
        <a href="main.html"><b>Home</b></a></div>
            <h3 align="center" ><b class="colors">New Department Details </b></h3>
            <table align="center" style="background-color: none; " class="auto-style2" >
             <tr>
                 <td align="center" ><b class="colors"> Department Id</b></td>
                 <td class="auto-style1">
                     &nbsp;&nbsp;
                     
                </td>
                 </tr>
                 <tr>
                 <td align="center" ><b class="colors">Department Name</b></td>
                 <td class="auto-style1">
                     &nbsp;&nbsp;
                     <asp:TextBox ID="TextBox3" runat="server" Width="310px"></asp:TextBox>
                </td>
             </tr>
             <tr>
                 <td align="center" ><b class="colors">Department Type</b></td>
                 <td class="auto-style1">
                     &nbsp;&nbsp;
                     <asp:TextBox ID="TextBox1" runat="server" Width="310px"></asp:TextBox>
                </td>
                 </tr>
                
                
        <td align="left" colspan="2" >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="44px" Text="Add Department" Width="310px" 
                Font-Bold="True" Font-Italic="False" Font-Size="Large" 
                style="margin-top: 26px" OnClick="Button2_Click" />
        </td>
        </tr>
         </table>
    </form>
        </div>
</body>
</html>