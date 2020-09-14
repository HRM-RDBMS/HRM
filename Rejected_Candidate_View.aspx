<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rejected_Candidate_View.aspx.cs" Inherits="formpages_Rejected_Candidate_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Human Resource Management</title>
    <link href="../css/RecruitedCandidateView.css" rel="stylesheet" />
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
                        
                                <li><a href="Rejected_Candidate_View.aspx"><b>View Profile</b></a></li>  
                                <li><a href="Rejected_Candidate_Delete.aspx"><b>Delete Profile</b></a></li> 
                           <li><a href="Rejected_Candidate_Edit.aspx"><b>Edit Profile</b></a></li>          
                        <li><a href="Rejected_Candidate_Add.aspx"><b>Add Profile</b></a></li>  
                          <li><a href="mainindex.html"><b>Home</b></a></li>    
                      
                        </ul>
                </div>  
            </div>  
        </div>  
            <div class="container">
                <div class="inner2">
             <h3>View Rejected Candidate Profile !!!</h3>
            <fieldset style="width:420px">
            <legend><b>Candidate Details</b></legend>
            <table>
            <tr>
            <td class="auto-style3"><b>Rejected Id to View:</b></td><td class="auto-style3">
            <asp:TextBox ID="TextBox3" runat="server" Width="161px" Height="20px" 
                    TextMode="Search"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" Width="93px" />
                </td>
            </tr>  
            <tr>
                   <td class="auto-style1"><b>Profile Picture</b></td><td class="auto-style1"><asp:Image id="Image2" runat="server" Width="100px"/></td>
                </tr>
                <%--<tr>
                    <td class="auto-style2"></td><td class="auto-style2"><asp:FileUpload ID="FileUpload2" runat="server" Enabled="true" /></td>
                </tr> --%>        
                <tr>
                     <td class="auto-style3"><b>Rejected Id:</b></td><td class="auto-style3">
                     <asp:textbox id="Textbox4" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
                </tr>       
                
                <tr>
                    <td class="auto-style2"><b>Candidate Name:</b></td><td class="auto-style2"><asp:textbox id="txt2" runat="server" Width="260px"></asp:textbox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Date Of Birth:</b> </td><td class="auto-style2"><asp:textBox id="dob" runat="server" TextMode="Date" Width="260px"></asp:textBox> </td>      
                </tr> 
                <tr>                    
                    <td class="auto-style2"><b>Gender:</b></td><td class="auto-style2"><asp:DropDownList ID="DropDownList1" runat="server" datavaluefield="gender" Width="260px">
                        <asp:ListItem Text="Male" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Others" Value="2"></asp:ListItem>
                                             </asp:DropDownList></td>
                </tr>              
                <tr>
                    <td class="auto-style2"><b>Address:</b></td><td class="auto-style2"> <asp:TextBox id="address" runat="server" 
                        Width="260px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Contact Number</b></td><td class="auto-style2"><asp:TextBox ID="mobile" runat="server" TextMode ="Phone" Width="260px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Qualifications:</b> </td><td class="auto-style2"><asp:DropDownList ID="ddlQualifications" runat="server" datavaluefield="Qualifications" Width="260px">
                        <asp:ListItem text="Select Qualifications" Value="-1"></asp:ListItem>
                        <asp:ListItem Text ="10th Pass" Value ="0"></asp:ListItem>
                        <asp:ListItem Text ="12th Pass" Value ="1"></asp:ListItem>
                        <asp:ListItem Text ="Undergraduate" Value="2"></asp:ListItem>
                        <asp:ListItem Text ="Postgraduate" Value="3"></asp:ListItem>
                        <asp:ListItem Text ="Phd" Value="4"></asp:ListItem>
                                         </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Applying Date:</b> </td><td class="auto-style2"><asp:textBox id="TextBox1" runat="server" TextMode="Date" Width="260px"></asp:textBox> </td>      
                </tr>
                <tr>
                    <td class="auto-style2"><b>Rejected Date:</b> </td><td class="auto-style2"><asp:textBox id="TextBox5" runat="server" TextMode="Date" Width="260px"></asp:textBox> </td>      
                </tr>
                 <tr>
                    <td class="auto-style2"><b>Year Experience:</b> </td><td class="auto-style2"><asp:DropDownList ID="DropDownList2" runat="server" datavaluefield="Year Experience" Width="260px">
                        <asp:ListItem text="Select Year of Experience" Value="-1"></asp:ListItem>
                        <asp:ListItem Text ="No Experience" Value ="0"></asp:ListItem>
                        <asp:ListItem Text ="Below 6months" Value ="1"></asp:ListItem>
                        <asp:ListItem Text ="Between 6months - 1year" Value="2"></asp:ListItem>
                        <asp:ListItem Text ="Between 1year - 3year" Value="3"></asp:ListItem>
                        <asp:ListItem Text ="Between 3year - 5year" Value="4"></asp:ListItem>
                        <asp:ListItem Text ="Above 5year" Value="5"></asp:ListItem>
                                         </asp:DropDownList></td>
                 </tr>
                 <tr>
                    <td class="auto-style2"><b>Post Applied:</b> </td><td class="auto-style2"><asp:DropDownList ID="DropDownList3" runat="server" datavaluefield="Post applied" Width="260px">
                        <asp:ListItem text="Select post applied" Value="-1"></asp:ListItem>
                        <asp:ListItem Text ="Programmer" Value ="0"></asp:ListItem>
                        <asp:ListItem Text ="Debugging & testing" Value ="1"></asp:ListItem>
                        <asp:ListItem Text ="Accountant" Value="2"></asp:ListItem>
                                         </asp:DropDownList></td>
                 </tr>
                 <tr>
                    <td class="auto-style2"><b>References:</b></td><td class="auto-style2"> 
                     <asp:TextBox id="TextBox2" runat="server" Width="260px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><b>Email:</b></td><td class="auto-style2"><asp:TextBox ID="email" runat="server" TextMode="Email" Width="260px"></asp:TextBox></td>                    
                </tr>
                <tr>
                    <td class="auto-style2"><b>Password:</b></td><td class="auto-style2"><asp:textbox ID="pwd" runat="server" TextMode="Password" Width="260px"></asp:textbox></td>                   
                </tr>
                <tr>
                    <td class="auto-style2"><b>Confirm Password:</b></td><td class="auto-style2"><asp:textbox ID="Textboxconfirm" runat="server" TextMode="Password" Width="260px"></asp:textbox></td>
                </tr> 
               <%--<tr>
                    <td class="auto-style6"><b>Documents:</b> </td><td class="auto-style6"><asp:Image id="doc" runat="server" Width="100px" /></td>
                </tr>--%>
                <%--<tr>
                    <td class="auto-style2"></td><td class="auto-style2"><asp:FileUpload ID="FileUpload1" runat="server" Enabled="true" /></td>
                </tr>--%>
                </table>
          </fieldset>        
            
          
                </div>
            </div>
        </section>
    </form>
</body>
</html>
