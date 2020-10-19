<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_employee.aspx.cs" Inherits="admin_employee" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Panel</title> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Exploit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="../Nikita/css/empboot.css" type="text/css" rel="stylesheet" media="all">
<link href="../Nikita/css/emppanel.css" type="text/css" rel="stylesheet" media="all"> 
<link href="../Nikita/css/font-awesome.css" rel="stylesheet">   <!-- font-awesome icons --> 
 <link rel="stylesheet" href="../Nikita/css/jquery.gallery.css">
<!-- //Custom Theme files -->
<!-- js -->
<script src="../Nikita/js/jquery-2.2.3.min.js"></script> 
<!-- //js -->
<!-- web-fonts --> 
<link href="//fonts.googleapis.com/css?family=Cormorant+Upright:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<!-- //web-fonts --> 
</head>
<body> 
	<!-- banner -->
	<div class="w3ls-banner">
		<div class="w3lsbanner-info">
			<div class="header">
				<div class="container">
					<div class="header-left">
						<div class="w3layouts-logo">
							<h1>
								<a href="admin_employee.aspx">Admin Panel</a>
							</h1>
						</div>
					</div>
					<!--<div class="header-right">
						<div class="agileinfo-social-grids">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin-in"></i></a></li>
							</ul>
						</div>
					</div>-->
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="header-bottom">
				<div class="container">
					<div class="top-nav">
						<nav class="navbar navbar-default">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li><a class="active list-border" href="../main.aspx">Home</a></li>
									<li><a href="employee_details.aspx">Employee Details</a></li> 
									<li><a href="employee_status.aspx" >Status</a></li> 
									<li><a href="employee_performance.aspx" >Performance</a></li>
									<li><a href="employee_payroll.aspx" >Payroll Details </a></li>
									<li><a href="employee_leave.aspx" >Leave</a></li>
									<li><a href="employee_resignation.aspx" >Resignation</a></li>
									
								</ul>	
								<div class="clearfix"> </div>
							</div>	
						</nav>		
					</div>
				</div>
			</div>
			<div class="w3layouts-banner-info">
				<div class="container">
					<div class="w3layouts-banner-slider">
						<div class="w3layouts-banner-top-slider">
							<div class="slider">
								<div class="callbacks_container">
									<ul class="rslides callbacks callbacks1" id="slider4">
										<li>
											<div class="w3ls-text">
												<div class="w3ls-text-info">
													<h2>Welcome! HR</h2>
												</div>
											</div>
										</li>
										<li>
											<div class="w3ls-text">
												<div class="w3ls-text-info">
													<h2>To Employee Panel</h2>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="clearfix"> </div>
								<script src="../Nikita/js/responsiveslides.min.js"></script>
								<script>
									// You can also use "$(window).load(function() {"
									$(function () {
									  // Slideshow 4
									  $("#slider4").responsiveSlides({
										auto: true,
										pager:true,
										nav:true,
										speed: 500,
										namespace: "callbacks",
										before: function () {
										  $('.news').append("<li>before event fired.</li>");
										},
										after: function () {
										  $('.news').append("<li>after event fired.</li>");
										}
									  });
								
									});
								 </script>
								<!--banner Slider starts Here-->
							</div>
						</div>
					</div>
				</div>
			</div> 
		</div>
	</div>
	<!-- //banner -->
	
	<!-- jarallax -->  
	<script src="../Nikita/js/SmoothScroll.min.js"></script> 
	<script src="../Nikita/js/jarallax.js"></script> 
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>  
	<!-- //jarallax -->  
	<!-- start-smooth-scrolling -->
	<script type="../Nikita/text/javascript" src="js/move-top.js"></script>
	<script type="../Nikita/text/javascript" src="js/easing.js"></script>	
	<script type="../Nikita/text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	
	<!-- smooth-scrolling-of-move-up -->
	<script type="../Nikita/text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
    </script>
	<!-- //smooth-scrolling-of-move-up -->  
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../Nikita/js/bootstrap.js"></script>
</body>
</html>