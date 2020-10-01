<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Project_Status_View.aspx.cs" Inherits="formpages_Project_Status_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Human Resource Management</title>
    <link href="../css/ProjectStatus.css" rel="stylesheet" />
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
                                 <li><a href="Project_Status_View.aspx"><b>View Project Status</b></a></li>
                                <%--<li><a href="Project_Details_Delete.aspx"><b>Delete Project</b></a></li> 
                           <li><a href="Project_Details_Edit.aspx"><b>Edit Project</b></a></li>          
                        <li><a href="Project_Details_Add.aspx"><b>Add Project</b></a></li> --%>
                          <li><a href="mainindex.html"><b>Home</b></a></li>    
                      
                        </ul>
                </div>  
            </div>  
        </div>  
            <div class="container">
                <div class="inner2">
             <h3>View Project Status !!!</h3>
            <fieldset style="width:420px">
            <legend><b>Status</b></legend>
            <table>
            <tr>
            <td class="auto-style3"><b>Project Id to View:</b></td><td class="auto-style3">
            <asp:TextBox ID="TextBox3" runat="server" Width="161px" Height="20px" 
                    TextMode="Search"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" Width="93px" />
                </td>
            
                <tr>
                    <td class="auto-style2"><b>Final date:</b> </td><td class="auto-style2"><asp:textBox id="TextBox6" runat="server" TextMode="Date" Width="260px"></asp:textBox> </td>      
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
