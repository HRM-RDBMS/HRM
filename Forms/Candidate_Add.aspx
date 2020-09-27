<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Candidate_Add.aspx.cs" Inherits="Forms_Candidate_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add details</title>
    <link href="../CSS/Candidate_Add.css" rel="stylesheet" />
    <%--<script src="../assets/js/Candidate_Add.js"></script>--%>
   <%-- <style>
        @import url('https://fonts.googleapis.com/css?family=Bitter|Crete+Round|Pacifico');
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
            height: 52px;
        }
    </style>--%>
</head>
<body>
<!-- multistep form -->
<form id="msform">
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Account Setup</li>
    <li>Social Profiles</li>
    <li>Personal Details</li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Create your account</h2>
    <h3 class="fs-subtitle">This is step 1</h3>
    <input type="text" name="email" placeholder="Email" />
    <input type="password" name="pass" placeholder="Password" />
    <input type="password" name="cpass" placeholder="Confirm Password" />
    <input type="button" name="next" class="next action-button" value="Next" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Social Profiles</h2>
    <h3 class="fs-subtitle">Your presence on the social network</h3>
    <input type="text" name="twitter" placeholder="Twitter" />
    <input type="text" name="facebook" placeholder="Facebook" />
    <input type="text" name="gplus" placeholder="Google Plus" />
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="button" name="next" class="next action-button" value="Next" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Personal Details</h2>
    <h3 class="fs-subtitle">We will never sell it</h3>
    <input type="text" name="fname" placeholder="First Name" />
    <input type="text" name="lname" placeholder="Last Name" />
    <input type="text" name="phone" placeholder="Phone" />
    <textarea name="address" placeholder="Address"></textarea>
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="submit" name="submit" class="submit action-button" value="Submit" />
  </fieldset>
</form>
   <%-- <form id="form1" runat="server">
    <section>
        <div id="main">  
            <div id="menubox">  
                <div id="menu">  
                    <nav class="nav-menu d-none d-lg-block">
            <ul>
              
              <!--<li><a href="Forms/Candidate_Add.aspx">Add Profile</a></li>
              <li><a href="Forms/Candidate_Edit.aspx">Edit Profile</a></li>
              <li><a href="Forms/Candidate_Delete.aspx">Delete Profile</a></li>-->
              <!--<li><a href="#team">Team</a></li>-->
               
                
                <%--<li class="drop-down"><a href="">Candidate Profile</a>--%>
                  <!--<li><a href="#">Drop Down 5</a></li>-->
                <%--</ul>--%>
              <%--  <li><a href="index.html">SignOut</a></li>
                <li><a href="Forms/Candidate_View.aspx">View Profile</a></li>
                 <li><a href="Forms/Candidate_Delete.aspx">Delete Profile</a></li>
                 <li><a href="Forms/Candidate_Edit.aspx">Edit Profile</a></li>
                <li><a href="Forms/Candidate_Add.aspx">Add Profile</a></li>
                <li class="active"><a href="index.html">Home</a></li>
                </div>  
            </div>  
        </div>  
            <div class="container">
                <div class="inner2">
             <h3>Welcome to the Registration !!!</h3>
            <fieldset style="width:420px">
            <legend><b>Candidate Details</b></legend>


            <table> 
            
             <tr>
                   <td class="auto-style1"><b>Profile Picture</b></td><td class="auto-style1"><asp:Image id="Image2" runat="server" Width="100px"/></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" runat="server" Text="Upload" runat="server" 
                            OnClick="UploadFile" Width="126px"/>
                    </td><td class="auto-style2"><asp:FileUpload ID="FileUpload1" runat="server" Enabled="true" /></td>
                    </tr>
              --%>     <%-- <tr>
                    <td class="auto-style1"><b>CV</b></td>
                    </tr>
                    <tr>
                    <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Upload" runat="server" 
                            OnClick="UploadFile" Width="126px"/></td>
                            <td class="auto-style2"><asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" Enabled="true" /></td>
                </tr> --%>
                <%--<tr>
                    <td class="auto-style2" colspan="2"><asp:Label ID="listofuploadedfiles" runat="server" /> 
                </tr>--%>
            <%--<tr>
                   <td class="auto-style2" colspan="2"><b>Upload Profile Image & CV</b><asp:Image id="Image1" runat="server" Width="100px"/></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Text="Upload" runat="server" 
                            OnClick="UploadFile" Width="126px"/>
                    </td><td class="auto-style5"><asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" Enabled="true" /></td>
                    </tr>
                    <tr>
                    <td class="auto-style2" colspan="2"><asp:Label ID="listofuploadedfiles" runat="server" /> 
                </tr>--%>

               <%-- <tr>
                     <td class="auto-style3"><b>Candidate Id:</b></td><td class="auto-style3">
                     <asp:textbox id="txt1" runat="server" Width="260px" Height="20px"></asp:textbox></td>       
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


                </table>
          </fieldset> 
          <div>
          <td class="auto-style5">
                        <br />
                        <asp:Button ID="btn1" runat="server" Text="Submit" 
                            Width="163px" ForeColor="Black" 
                            Height="42px" Font-Bold="True" Font-Size="Large"></asp:Button></td>     
                            
          </div>
                </div>
            </div>
        </section>
    </form>--%>
    <script>

        //jQuery time
        var current_fs, next_fs, previous_fs; //fieldsets
        var left, opacity, scale; //fieldset properties which we will animate
        var animating; //flag to prevent quick multi-click glitches

        $(".next").click(function () {
            if (animating) return false;
            animating = true;

            current_fs = $(this).parent();
            next_fs = $(this).parent().next();

            //activate next step on progressbar using the index of next_fs
            $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

            //show the next fieldset
            next_fs.show();
            //hide the current fieldset with style
            current_fs.animate({ opacity: 0 }, {
                step: function (now, mx) {
                    //as the opacity of current_fs reduces to 0 - stored in "now"
                    //1. scale current_fs down to 80%
                    scale = 1 - (1 - now) * 0.2;
                    //2. bring next_fs from the right(50%)
                    left = (now * 50) + "%";
                    //3. increase opacity of next_fs to 1 as it moves in
                    opacity = 1 - now;
                    current_fs.css({
                        'transform': 'scale(' + scale + ')',
                        'position': 'absolute'
                    });
                    next_fs.css({ 'left': left, 'opacity': opacity });
                },
                duration: 800,
                complete: function () {
                    current_fs.hide();
                    animating = false;
                },
                //this comes from the custom easing plugin
                easing: 'easeInOutBack'
            });
        });

        $(".previous").click(function () {
            if (animating) return false;
            animating = true;

            current_fs = $(this).parent();
            previous_fs = $(this).parent().prev();

            //de-activate current step on progressbar
            $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

            //show the previous fieldset
            previous_fs.show();
            //hide the current fieldset with style
            current_fs.animate({ opacity: 0 }, {
                step: function (now, mx) {
                    //as the opacity of current_fs reduces to 0 - stored in "now"
                    //1. scale previous_fs from 80% to 100%
                    scale = 0.8 + (1 - now) * 0.2;
                    //2. take current_fs to the right(50%) - from 0%
                    left = ((1 - now) * 50) + "%";
                    //3. increase opacity of previous_fs to 1 as it moves in
                    opacity = 1 - now;
                    current_fs.css({ 'left': left });
                    previous_fs.css({ 'transform': 'scale(' + scale + ')', 'opacity': opacity });
                },
                duration: 800,
                complete: function () {
                    current_fs.hide();
                    animating = false;
                },
                //this comes from the custom easing plugin
                easing: 'easeInOutBack'
            });
        });

        $(".submit").click(function () {
            return false;
        })

    </script>
</body>
</html>
