<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_resignation.aspx.cs" Inherits="employees_employee_resignation" %>

	
<!DOCTYPE html>
<html>
<head>
<title>Resignation Details</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Jukebox Registration Form web template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- //custom-theme -->
<script src="../Nikita/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<link href="../Nikita/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="../Nikita/css/resignstyle.css" rel="stylesheet" type="text/css" media="all" />
<link href="../Nikita/css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet"/>

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
<link href="../Nikita/css/font-awesome.css" rel="stylesheet"> 
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
<script type="../Nikita/text/javascript" src="js/sliding.form.js"></script>
<!-- //js -->
</head>
<body class="bg agileinfo" >
    <section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
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
    <div class="clearfix"  ></div> <br />
   <h1 class="agile-head text-center">Resignation Details</h1>
   <div class="container-w3l">
	    <div class="w3_agileits-content1">
		   <h2 class="text-center">Want to Resign <i class="fa fa-frown-o" aria-hidden="true"></i> Apply Here!!!</h2>
			<div class="form_w3layouts">
			  <form  id="form1" runat="server" class="agile_form">
                  <div class="agileits">
                    <span ><br /></span>
                    </div>
                  <div class="agileits">
                    <span ><br /></span>
                    </div>
				<div class="agileits">
                    <asp:TextBox ID="empID" runat="server" ReadOnly="true"  class="username" placeholder="Employee Id"></asp:TextBox>

					<!--<input type="text" name="name" class="username" placeholder="Employee Id" required="">-->
					<div class="w3ls-icon">
					 <i class="fa fa-user" aria-hidden="true"></i>
				   </div>
                </div>	
                  <div class="agileits">
                      
                      <textarea ID="reason" cols="50" rows="4" style="background-color:transparent;color:white;" placeholder="Reason Of leaving..." runat="server"></textarea>
                     <span class="username"></span>
					<!--<input type="text" name="name" class="username" placeholder="Title of Resignation" required="">-->
					
                </div>				   
				<div class="agileits">
                    <span ><br /></span>
                    </div>
				<div class="agileits">
                    <span ><br /></span>
                    </div>
                  <div class="agileits">
					<div class="agileinfo-link">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>Leaving Date</span>
					</div>
                      </div>
                      &nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="dt" TextMode="Date" CssClass="genre" runat="server"></asp:TextBox>
                      <span "><br /></span>
				<div class="agileits">
                    <span ><br /></span>
                    </div>

				<div class="agileits">
                    
                        <div class="submit-w3l">
                        <asp:Button ID="resign" OnClick="resign_Click" runat="server" Text="Submit" />
                        <br />
						<!--<input type="submit" value="Apply">-->
					</div> 
                   
                    </div>
                  <div class="agileits">
                    <span ><br /></span>
                    </div>


                  <div class="agileits">
                    <span ><br /></span>
                    </div>

                  <div class="content-bottom">

					
					
					<div class="clear"></div>
				</div>	
                   <div class="content-bottom">

					<div class="submit-w3l">
                        <asp:Button ID="status" OnClick="status_Click" runat="server" Text="Click Here to See Resignation details" />
                        <span ><br /></span>
						<!--<input type="submit" value="Apply">-->
					</div> 
					
					<div class="clear"></div>
				</div>	
                  
                   <div class="agileits">
                    <span ><br /></span>
                    </div>


                  <div class="agileits">
                    <span ><br /></span>
                    </div>
				
			</form>
		  </div>			
	   </div>
	   
	    <div class="w3_agileits-content2">
			 <h3 class="text-center">Track Your Resignation Details Here!!!!</h3><br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="You have no such request"></asp:Label>
			
                 
							
						

			
                 
							
						</div>
	   
	   <div class="clear"></div>
   </div>
        </section>
   
	<!-- pop-up-box -->  
		<script src="../Nikita/js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->
	<script>
        $(document).ready(function () {
            $('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>
    <script src="../Nikita/js/probootstrap.js"></script>
<script src="../Nikita/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="../Nikita/js/scripts.js"></script>
<script src="../Nikita/js/jquery.slimscroll.js"></script>
<script src="../Nikita/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="../Nikita/js/jquery.scrollTo.js"></script>
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