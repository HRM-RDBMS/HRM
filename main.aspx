<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main"  %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Human Resource Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

        function alertUser() {
            alert("hello");
        }
        

    </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/zoomslider.css" rel='stylesheet' type='text/css' />
    <link href="css/style6.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
</head>


<body >
    <form id="ggh" runat="server">
   
       
    
    <!--top -->
    <div id="demo-1" data-zs-src='["images/b1.jpg", "images/banner2.jpg","images/3.jpg", "images/4.jpg"]' data-zs-overlay="dots">
        <div class="demo-inner-content">
            <div class="header-top">
                <header>
                    <div class="top-head ml-lg-auto text-center">
                        <div class="row">

                            <div class="col-md-4">
                                
                            </div>
                            <div class="col-md-3 sign-btn">
                               
                            </div>
                            <div class="col-md-3 sign-btn">
                                
                                    <i class="far fa-user" style="color:chocolate; font-size:larger" id="mywelcome" runat="server"> Welcome!</i>
                                <!---<asp:Button ID="btn1" runat="server" CausesValidation="false"  OnClick="btn_Click" Text="Login" 
                                    />
                                <asp:Button ID="btn2" runat="server"  CausesValidation="false" OnClick="btn2_Click" Text="Logout" 
                                    />-->
                                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/adminEmployee/admin_login.aspx" runat="server">Admin Login</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" NavigateUrl="~/adminEmployee/admin_logout.aspx" runat="server">Logout</asp:HyperLink>
                               
                               
                                  
                            </div>
                            
                                <!-- open/close -->
                                <div class="overlay overlay-door">
                                    <button type="button" class="overlay-close">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                    <form action="#" method="post" class="d-flex">
                                        <input class="form-control" type="search" placeholder="Search here..." required="">
                                        <button type="submit" class="btn btn-primary submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </form>
                                </div>
                                <!-- open/close -->
                            </div>
                       
                    </div>
                    <div class="clearfix"></div>
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="logo">
                            <h1>
                                <a class="navbar-brand" href="main.aspx">LOGO</a>
                            </h1>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon">
                                <i class="fas fa-bars"></i>
                            </span>

                        </button>
                        
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-lg-auto text-center">
                                <li class="nav-item active">
                                    <a class="nav-link" href="main.aspx">Home
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                 <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Candidates
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                    
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <!---
                                        <asp:Button ID="Button1" runat="server" CssClass="dropdown-item" Text="Candidate Details"  />
                                        <asp:Button ID="Button2" runat="server" class="dropdown-item" Text="Recruited Candidate Details" />
                                        <asp:Button ID="Button3" runat="server" class="dropdown-item" Text="Rejected Candidate Details" />
                                       --->
                                       
                                       <a  class="dropdown-item" href="candidates/candidate_login.aspx" >Candidate Details</a>
                                        <a class="dropdown-item" href="Recruited_Login.html" title="">Recruited Candidate Details</a>
                                         <a  class="dropdown-item" href="Rejected_Login.html" title=""> Rejected Candidate Details</a>

                                            
                                       <!-- <a class="dropdown-item" href="candidates_list.html" title="">Recuruited Candidate Details </a>
                                        <a class="dropdown-item" href="candidates_list.html" title="">Rejected Candidate Details</a>-->

                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="A1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Training
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                     <a class="dropdown-item" href="trainingView.aspx">Training Details</a>
                                     <a class="dropdown-item" href="comingsoon_02/soon/comingSoon.html">Employee Training Details</a>
                                    </div>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Employees
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="employees/employee_login.aspx"> Employee Information</a>
                                        
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="A2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                       Department
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="departmentView.aspx">Department detials</a>
                                        <a class="dropdown-item" href="comingsoon_02/soon/comingSoon.html">Employee Department Details</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="A3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Projects
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="projects/project_login.aspx">Project Details</a>
                                        <!--<a class="dropdown-item" href="Project_Status_View.aspx">Project Status</a>
                                        <a class="dropdown-item" href="Employee_Assigned_View">Employee Assigned Projects</a>-->
                                    </div>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">Contact</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Forms/Feedback.aspx">Feedback</a>
                                </li>
                            </ul>

                        </div>
                     
                    </nav>
                </header>
            </div>
            <div class="banner-info-w3layouts text-center">

                <h3>
                    <span class="navbar-brand">GREAT THINGS IN BUSINESS ARE NEVER DONE BY ONE PERSON.</span><br />
                    <span class="navbar-brand">THEY'RE DONE BY A TEAM OF PEOPLE.</span>
                </h3>
            </div>
        </div>
        </div>
    <!--/top------>
    <!----How Work-------->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
			<!---728x90--->
                <h3 class="tittle text-center mb-lg-4 mb-3">
                    <span>Some Info</span>How It works</h3>
					<!---728x90--->
                <div class="row choose-main mt-5">
                    <div class="col-lg-6 work-grid-right">
                        <div class="work-info">
                            <h5>
                                <span class="post-color">Step : 1</span>
                            </h5>
                            <h4 class="post my-3">Register an account</h4>
                        </div>
                    </div>
                    <div class="col-lg-6 work-grid-left">
                        <img src="images/g1.jpg" alt="" class="img-fluid">
                    </div>
                </div>
                <div class="row my-5">

                    <div class="col-lg-6 work-grid-left">
                        <img src="images/g7.jpg" alt="" class="img-fluid">
                    </div>
                    <div class="col-lg-6 work-grid-right">
                        <div class="work-info">
                            <h5>
                                <span class="post-color">Step : 2</span>
                            </h5>
                            <h4 class="post my-3">Specify Your Job</h4>
                            
                        </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-lg-6 work-grid-right">
                        <div class="work-info">
                            <h5>
                                <span class="post-color">Step : 3</span>
                            </h5>
                            <h4 class="post my-3">Wait for the Confirmation From the Company...</h4>
                        </div>
                    </div>
                    <div class="col-lg-6 work-grid-left">
                        <img src="images/g3.jpg" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!---How Work-->

        <div class="clearfix"></div>
    <br /><br />
    <!--Resume -->
    <section class="banner-bottom-wthree mid py-lg-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <div class="mid-info text-center pt-3">
                    <h3 class="tittle text-center cen mb-lg-5 mb-3">Make a Difference with Your Online Resume!</h3>
                    <p></p>
                    <div class="resume">
                        <a href="#" data-toggle="modal" data-target="#exampleModalCenter2">
                            <i class="far fa-user"></i> Create Resume</a>
                    </div>
                </div>

            </div>
        </div>
            <div class="clearfix"></div>
    </section>
    <div class="clearfix"></div> 
    <!--Resume -->
     
    <!---process--->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
			
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span>Some Info</span>Selection Process</h3>

                <div class="mid-info text-center mt-5">
                    <div class="parent-chart">
                        <div class="level lev-one top-level">
                            <div class="flow-position">
                               <img src="images/p1.jpg" alt=" " class="img-fluid rounded-circle">
                                <br>
                                <strong>Recruitment Process</strong>
                              
                            </div>
                        </div>
                        <div class="flow-chart">
                            <div class="level lev-two last-lev">
                                <div class="flow-position">
                                    <img src="images/p2.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>1.Job Vacancy</strong>
                                   
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                    <img src="images/p3.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>2. Job Analysis
                                    </strong>
                                    
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                    <img src="images/p4.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>3. Attracting Candidates
                                    </strong>
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                    <img src="images/p5.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>4.Screening </strong>
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                  <img src="images/p7.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>5.Interviewing Candidates
                                    </strong>
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                    <img src="images/p8.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>6.Selecting</strong>
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                   <img src="images/p6.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>7.Employee Evaluation
                                    </strong>
                             
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--process-->
   
     <!-- Team -->
      <section class="team py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">

            
          <h3 class="tittle text-center cen mb-lg-5 mb-3">OUR TEAM</h3>
            
            <div class="row">
               <!-- Team member -->
               <div class="col-lg-4 team-list-one">
                  <div class="image-flip">
                     <div class="mainflip">
                        <div class="frontside">
                           <div class="card">
                              <div class="card-body text-center">
                                 <p><img src="images/member1.jpg" alt="" class="image-fluid"></p>
                                 <h4 class="card-title mt-3">Nikita Baid</h4>
                                 <p class="card-text mb-3">HR</p>
                            
                              </div>
                           </div>
                        </div>
                        <div class="backside">
                           <div class="card">
                              <div class="card-body text-center mt-4">
                                 <h4 class="card-title "> Nikita Baid</h4>
                                 <p class="card-text mb-3">HR</p>
                                 <ul class="list-inline">
                                    <li class="list-inline-item">
                                       <a class="social-icon text-xs-center" target="_blank" href="#">
                                       <span class="fab fa-facebook-f"></span>
                                       </a>
                                    </li>
                                    <li class="list-inline-item">
                                       <a class="social-icon text-xs-center" target="_blank" href="#">
                                       <span class="fab fa-google-plus-g"></span>
                                       </a>
                                    </li>
                                    <li class="list-inline-item">
                                       <a class="social-icon text-xs-center" target="_blank" href="#">
                                       <span class="fab fa-twitter"></span>
                                       </a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            
         
               <div class="col-lg-4 team-list-two">
                  <div class="image-flip">
                     <div class="mainflip">
                        <div class="frontside">
                           <div class="card">
                              <div class="card-body text-center">
                                 <p><img src="images/member2.jpeg" alt="" class="image-fluid"></p>
                                 <h4 class="card-title mt-3">Isaac Desouza</h4>
                                 <p class="card-text mb-3">HR</p>
                                
                              </div>
                           </div>
                        </div>
                        <div class="backside">
                           <div class="card">
                              <div class="card-body text-center mt-4">
                                 <h4 class="card-title ">Isaac Desoouza</h4>
                                 <p class="card-text mb-3">HR</p>
                                 <ul class="list-inline">
                                    <li class="list-inline-item">
                                       <a class="social-icon text-xs-center" target="_blank" href="#">
                                       <span class="fab fa-facebook-f">facebook.com/isaac.desouza.71</span>
                                       </a>
                                    </li>
                                    <li class="list-inline-item">
                                       <a class="social-icon text-xs-center" target="_blank" href="#">
                                       <span class="fab fa-google-plus-g"></span>
                                       </a>
                                    </li>
                                    <li class="list-inline-item">
                                       <a class="social-icon text-xs-center" target="_blank" href="#">
                                       <span class="fab fa-twitter"></span>
                                       </a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
             
               <div class="col-lg-4 team-list-three">
                  <div class="image-flip">
                     <div class="mainflip">
                        <div class="frontside">
                           <div class="card">
                              <div class="card-body text-center">
                                 <p><img src="images/member3.jpg" alt="" class="image-fluid"></p>
                                 <h4 class="card-title mt-3">Fina Jaison</h4>
                                 <p class="card-text mb-3">HR</p>

                              </div>
                           </div>
                        </div>
                        <div class="backside">
                           <div class="card">
                              <div class="card-body text-center mt-4">
                                 <h4 class="card-title ">Fina Jaison</h4>
                                 <p class="card-text mb-3">HR</p>
                                 <ul class="list-inline">
                                    <li class="list-inline-item">
                                       <a class="social-icon text-xs-center" target="_blank" href="#">
                                       <span class="fab fa-facebook-f"></span>
                                       </a>
                                    </li>
                                    <li class="list-inline-item">
                                       <a class="social-icon text-xs-center" target="_blank" href="#">
                                       <span class="fab fa-google-plus-g"></span>
                                       </a>
                                    </li>
                                    <li class="list-inline-item">
                                       <a class="social-icon text-xs-center" target="_blank" href="#">
                                       <span class="fab fa-twitter"></span>
                                       </a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- ./Team member -->
            </div>
         </div>
      </section>
      <!--//team -->
     <div class="clearfix"></div> <br /><br /><br /><br />
     <!-- quoute-->
	<div class="team_work_agile">
		<h4>Whether we play a large or small role, by working together we achieve our objectives.</h4>
	</div>
      <!-- quoute-->
   <div class="clearfix"></div> <br /><br /><br /><br />
       <!--footer -->
    <footer class="footer-emp-w3layouts bg-dark dotts py-lg-5 py-3">
        <div class="container-fluid px-lg-5 px-3">
            <div class="row footer-top">
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>About Us</h3>
                    </div>
                    <div class="footer-text">
                        <p></p>
                        <ul class="footer-social text-left mt-lg-4 mt-3">

                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-facebook-f"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-twitter"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-google-plus-g"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-linkedin-in"></span>
                                </a>
                            </li>
                          
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>Get in touch</h3>
                    </div>
                    <div class="contact-info">
                        <h4>Location :</h4>
                        <p>Christ(Deemed to be)University, Bangalore, India.</p>
                        <div class="phone">
                            <h4>Contact :</h4>
                            <p>Phone : +91 1100110112101</p>
                            <p>Email :
                                <a href="mailto:christproject@gmail.com">christproject@gmail.com</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>Quick Links</h3>
                    </div>
                    <ul class="links">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="a">Candidates>
                        </li>
                        <li>
                            <a href="a">Employee</a>
                        </li>
                        <li>
                            <a href="a">Department</a>
                        </li>
                        <li>
                            <a href="contact.html">Contact Us</a>
                        </li>
                    </ul>
                    <ul class="links">
                        <li>
                            <a href="a">Projects</a>
                        </li>
                        
                        <li>
                            <a href="a">Employee's List</a>
                        </li>
                    </ul>

                    <div class="clearfix"></div>
                </div>
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>Sign up for Latest Updates</h3>
                    </div>
                    <div class="footer-text">
                        <p>By subscribing to our mailing list you will always get latest news and updates from us.</p>
                        <form action="#" method="post">
                            <input class="form-control" type="email" name="Email" placeholder="Enter your email..." required="">
                            <button class="btn2">
                                <i class="far fa-envelope" aria-hidden="true"></i>
                            </button>
                            <div class="clearfix"> </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="copyright mt-4">
                <p class="copy-right text-center ">&copy; 2020 HRMTeam. All Rights Reserved | Design & Devloped by HRMTeam.
                   
                </p>
            </div>
        </div>
    </footer>
    <!-- //footer -->

   
    <!--//model-form-->
    <!-- js -->
    <!--/slider-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr-2.6.2.min.js"></script>
    <script src="js/jquery.zoomslider.min.js"></script>
    <!--//slider-->
    <!--search jQuery-->
    <script src="js/classie-search.js"></script>
    <script src="js/demo1-search.js"></script>
    <!--//search jQuery-->

    <script>
        $(document).ready(function() {
            $(".dropdown").hover(
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //dropdown nav -->
    <!-- password-script -->
    <script>
        window.onload = function() {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- //password-script -->

    <!-- stats -->
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.countup.js"></script>
    <script>
        $('.counter').countUp();
    </script>
    <!-- //stats -->

    <!-- //js -->
    <script src="js/bootstrap.js"></script>
    <!--/ start-smoth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear' 
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->
     </form>   
</body>


</html>