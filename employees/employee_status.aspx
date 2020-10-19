<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_status.aspx.cs" Inherits="employees_employee_status" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Employee Status</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="../Nikita/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="../Nikita/css/empstyle.css" rel='stylesheet' type='text/css' />
<link href="../Nikita/css/style-responsive.css" rel="stylesheet"/>

<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->

<link rel="stylesheet" href="../Nikita/css/font.css" type="text/css"/>
<link href="../Nikita/css/font-awesome.css" rel="stylesheet"/> 
<link rel="stylesheet" href="../Nikita/css/morris.css" type="text/css"/>

<!-- calendar -->
<link rel="stylesheet" href="../Nikita/css/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="../Nikita/js/jquery2.0.3.min.js"></script>
<script src="../Nikita/js/raphael-min.js"></script>
<script src="../Nikita/js/morris.js"></script>

    <!-- js -->
<script src="../Nikita/js/jquery-2.1.3.min.js" type="text/javascript"></script>
<script type="text/javascript" src="../Nikita/js/sliding.form.js"></script>
<!-- //js -->
<link href="../Nikita/css/dash.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="../Nikita/css/font-awesome.min.css" />
<link rel="stylesheet" href="../Nikita/css/smoothbox.css" type='text/css' media="all" />
<link href="//fonts.googleapis.com/css?family=Pathway+Gothic+One" rel="stylesheet"/>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
</head>
<body>

<section id="container">
<!--header start-->
<header class="header fixed-top clearfix" style="left: 0; right: 0; top: 0px">
<!--logo start-->
<div class="brand">
    <a href="employee_dashboard.aspx" class="logo">
        My Profile
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->
<div class="nav notify-row" id="top_menu">
   
</div>
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        
        <!-- user login dropdown start-->
        <li class="dropdown">
            <asp:HyperLink ID="HyperLink1" NavigateUrl="employee_logout.aspx" runat="server">Logout</asp:HyperLink>
            <ul class="dropdown-menu extended logout">
                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                 <li>
                    <a class="active" href="employee_dashboard.aspx">
                        <i class="fa fa-dashboard"></i>
                        <span>Home</span>
                    </a>
                </li>
                
                <li>
                    <a class="active" href="employee_performance.aspx">
                        <i class="fa fa-dashboard"></i>
                        <span>My Performance</span>
                    </a>
                </li>
                <li>
                    <a class="active" href="employee_status.aspx">
                        <i class="fa fa-dashboard"></i>
                        <span>My Status</span>
                    </a>
                </li>
                <li>
                    <a class="active" href="employee_payrol.aspx">
                        <i class="fa fa-dashboard"></i>
                        <span>Payroll Details</span>
                    </a>
                </li>
                <li>
                    <a class="active" href="employee_attendance.aspx">
                        <i class="fa fa-dashboard"></i>
                        <span>My Attendance</span>
                    </a>
                </li>
                  <li>
                    <a class="active" href="employee_leave.aspx">
                        <i class="fa fa-dashboard"></i>
                        <span>Leave Status</span>
                    </a>
                </li>
                  <li>
                    <a class="active" href="employee_resignation.aspx">
                        <i class="fa fa-dashboard"></i>
                        <span>Resignation Details</span>
                    </a>
                </li>

                </ul>
                
                </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<!-- //market-->
		<div class="main">
		<h1>Employee Status</h1>
		<div id="navigation" style="display:none;" class="w3_agile">
			<ul>
				
				<li>
					<a href="#"><i class="fa fa-folder" aria-hidden="true"></i><span>Projects</span></a>
				</li>
				<li>
					<a href="#"><i class="fa fa-envelope" aria-hidden="true"></i><span>Trainings</span></a>
				</li> 
			</ul>
		</div>
		<div id="wrapper" class="w3ls_wrapper w3layouts_wrapper">
			<div id="steps" style="margin:0 auto;" class="agileits w3_steps">

				<form id="formElem" runat="server">
					
					<fieldset class="step wthree">
						<legend>Projects</legend>
						<div class="abt-agile">
						<!--	<div class="abt-agile-left" style="background-image:none;" runat="server">-->
                                <ul class="address">
									<li>
										<ul class="address-text">
											<li >Total </li>
											<li id="totalProjects" runat="server">
                                                
											</li>

										</ul>
									</li>
									<li>
										<ul class="address-text">
											<li >Pending: </li>
											<li id="pending" runat="server">
												<asp:Label ID="pendinglabel" runat="server" Text="   No records"></asp:Label>
                                                <asp:GridView ID="pendinggrid" CssClass="address" runat="server" BackColor="#CCCCCC" Width="351px" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" CellSpacing="2">
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                    <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                               
                            </asp:GridView>
                                               
                                            </li>
										</ul>
									</li>

									<li>
										<ul class="address-text">
											<li >Completed </li>
											<li id="completed" runat="server">
                                                
												<asp:Label ID="Label11" runat="server" Text="No records"></asp:Label>
							<asp:GridView ID="GridView1" CssClass="address" runat="server" BackColor="#CCCCCC" BorderColor="#999999" Width="351px" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                               
                            </asp:GridView>

                                            </li>
										</ul>
									</li>


									<li>
										<ul class="address-text">
											<li >Stopped </li>
											<li id="stopped" runat="server">
                                               
                                                <asp:Label ID="stp" runat="server" Text="No records"></asp:Label>
							<asp:GridView ID="stopgrid" CssClass="address" runat="server" BackColor="#CCCCCC" BorderColor="#999999" Width="351px" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                               
                            </asp:GridView>
                                            </li>
										</ul>
									</li>
									</ul>
							</div>
								<div class="clear"></div>
					
							
					</fieldset>

					<fieldset class="step w3_agileits">
						<legend>Trainings</legend>
						<div class="abt-agile">
						<!--	<div class="abt-agile-left" style="background-image:none;" runat="server">-->
                                <ul class="address">
									<li>
										<ul class="address-text">
											<li >Total </li>
											<li id="totaltraing" runat="server" >
                                                
											</li>

										</ul>
									</li>
									<li>
										<ul class="address-text">
											<li >Pending: </li>
											<li id="Li2" runat="server">
												<asp:Label ID="Label1" runat="server" Text="   No records"></asp:Label>
                                                <asp:GridView ID="GridView2" CssClass="address" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" Width="351px" ForeColor="Black" CellSpacing="2" DataSourceID="SqlDataSource1">
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                    <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                               
                            </asp:GridView>
                                               
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                                               
                                            </li>
										</ul>
									</li>

									<li>
										<ul class="address-text">
											<li >Completed </li>
											<li id="Li3" runat="server">
                                                
												<asp:Label ID="Label2" runat="server" Text="No records"></asp:Label>
							<asp:GridView ID="GridView3" CssClass="address" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="351px">
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                               
                            </asp:GridView>

                                            </li>
										</ul>
									</li>


									
									</ul>
							</div>
								<div class="clear"></div>
					</fieldset>
				</form>
			</div>
            </div>
            </div>
		
</section>
 
</section>
<!--main content end-->
</section>
		
<script src="../Nikita/js/bootstrap.js"></script>
<script src="../Nikita/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="../Nikita/js/scripts.js"></script>
<script src="../Nikita/js/jquery.slimscroll.js"></script>
<script src="../Nikita/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	
<script>
    $(document).ready(function () {
        //BOX BUTTON SHOW AND CLOSE
        jQuery('.small-graph-box').hover(function () {
            jQuery(this).find('.box-button').fadeIn('fast');
        }, function () {
            jQuery(this).find('.box-button').fadeOut('fast');
        });
        jQuery('.small-graph-box .box-close').click(function () {
            jQuery(this).closest('.small-graph-box').fadeOut(200);
            return false;
        });

        //CHARTS
        function gd(year, day, month) {
            return new Date(year, month - 1, day).getTime();
        }

        graphArea2 = Morris.Area({
            element: 'hero-area',
            padding: 10,
            behaveLikeLine: true,
            gridEnabled: false,
            gridLineColor: '#dddddd',
            axes: true,
            resize: true,
            smooth: true,
            pointSize: 0,
            lineWidth: 0,
            fillOpacity: 0.85,
            data: [
				{ period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649 },
				{ period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051 },
				{ period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910 },
				{ period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695 },
				{ period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300 },
				{ period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891 },
				{ period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598 },
				{ period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185 },
				{ period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038 },

            ],
            lineColors: ['#eb6f6f', '#926383', '#eb6f6f'],
            xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
            pointSize: 2,
            hideHover: 'auto',
            resize: true
        });


    });
	</script>
<!-- calendar -->
	<script type="text/javascript" src="../Nikita/js/monthly.js"></script>
	<script type="text/javascript">
	    $(window).load(function () {

	        $('#mycalendar').monthly({
	            mode: 'event',

	        });

	        $('#mycalendar2').monthly({
	            mode: 'picker',
	            target: '#mytarget',
	            setWidth: '250px',
	            startHidden: true,
	            showTrigger: '#mytarget',
	            stylePast: true,
	            disablePast: true
	        });

	        switch (window.location.protocol) {
	            case 'http:':
	            case 'https:':
	                // running on a server, should be good.
	                break;
	            case 'file:':
	                alert('Just a heads-up, events will not work when run locally.');
	        }

	    });
    </script>
	<!-- //calendar -->

</body>
</html>
