<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Project_Details_Add.aspx.cs" Inherits="formpages_Project_Details_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Human Resource Management</title>
    <link href="../css/Project.css" rel="stylesheet" />
    <style>
        @import url('https://fonts.googleapis.com/css?family=Bitter|Crete+Round|Pacifico');
        .auto-style1
        {
            height: 78px;
        }
        .auto-style2
        {
            height: 40px;
        }
        .auto-style3
        {
            height: 39px;
        }
        .auto-style5
        {
            height: 75px;
        }
        .auto-style6
        {
            height: 77px;
        }
    </style>
</head>
<body>
    <form id="form1" method="post" runat="server">
        <section>
        <div id="main">  
            <div id="menubox">  
                <div id="menu">  
                    <ul> 
                    <li><a href="Feedback.aspx"><b>Feedback</b></a></li>
                   
                        <li><a href="About Us.aspx"><b>About Us</b></a></li>  
                        
                                <li><a href="Project_Details_View.aspx"><b>View Project</b></a></li>  
                                <li><a href="Project_Details_Delete.aspx"><b>Delete Project</b></a></li> 
                           <li><a href="Project_Details_Edit.aspx"><b>Edit Project</b></a></li>          
                        <li><a href="Project_Details_Add.aspx"><b>Add Project</b></a></li> 
                          <li><a href="mainindex.html"><b>Home</b></a></li>    
                      
                        </ul>
                </div>  
            </div>  
        </div>  
            <div class="container">
                <div class="inner2">
             <h3>Project Details Entry !!!</h3>
            <fieldset style="width:420px">
            <legend><b>Project Details</b></legend>
            <table>  
            <%--<tr>
                   <td class="auto-style1"><b>Profile Picture</b></td><td class="auto-style1"><asp:Image id="Image1" ImageUrl="../images/img1.jpg" runat="server" Width="100px"/></td>
                </tr>
                <tr>
                    <td class="auto-style2"></td><td class="auto-style2"><asp:FileUpload ID="FileUpload2" runat="server" Enabled="true" /></td>
                </tr>--%> 
                <tr>
                     <td class="auto-style3"><b>Project Id:</b></td><td class="auto-style3">
                     <asp:textbox id="Textbox3" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
                </tr>        
                <tr>
                     <td class="auto-style3"><b>Project Manager Id:</b></td><td class="auto-style3">
                     <asp:textbox id="txt1" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
                </tr>
                <tr>
                     <td class="auto-style3"><b>Employee Id:</b></td><td class="auto-style3">
                     <asp:textbox id="Textbox4" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
                </tr>
                <tr>
                    <td class="auto-style2"><b>Project Name:</b></td><td class="auto-style2"><asp:textbox id="txt2" runat="server" Width="260px"></asp:textbox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Project Start date:</b> </td><td class="auto-style2"><asp:textBox id="dob" runat="server" TextMode="Date" Width="260px"></asp:textBox> </td>      
                </tr> 
                <tr>
                    <td class="auto-style2"><b>Expected End date:</b> </td><td class="auto-style2"><asp:textBox id="TextBox5" runat="server" TextMode="Date" Width="260px"></asp:textBox> </td>      
                </tr>
                <tr>
                    <td class="auto-style2"><b>Final date:</b> </td><td class="auto-style2"><asp:textBox id="TextBox6" runat="server" TextMode="Date" Width="260px"></asp:textBox> </td>      
                </tr>
                <tr>
                     <td class="auto-style3"><b>Project Budget:</b></td><td class="auto-style3">
                     <asp:textbox id="Textbox7" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
                </tr>
                <tr>
                     <td class="auto-style3"><b>Total hours:</b></td><td class="auto-style3">
                     <asp:textbox id="Textbox8" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
                </tr>
                <tr>
                     <td class="auto-style3"><b>Labour Cost:</b></td><td class="auto-style3">
                     <asp:textbox id="Textbox9" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
                </tr>
                <tr>
                     <td class="auto-style3"><b>Material Cost:</b></td><td class="auto-style3">
                     <asp:textbox id="Textbox10" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
                </tr>
                <tr>
                     <td class="auto-style3"><b>Total Cost:</b></td><td class="auto-style3">
                     <asp:textbox id="Textbox11" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
                </tr>
                <tr>
                     <td class="auto-style3"><b>Project Status:</b></td><td class="auto-style3">
                     <asp:textbox id="Textbox12" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
                </tr>
                
                </table>
          </fieldset> 
          <div>
          <td class="auto-style5">
                        <br />
                        <asp:Button ID="btn1" runat="server" Text="Save" 
                            Width="163px" ForeColor="Black" 
                            Height="42px" Font-Bold="True" Font-Size="Large"></asp:Button></td>     
                            
          </div>
                          
            
          
                </div>
            </div>
        </section>
    </form>
</body>
</html>
