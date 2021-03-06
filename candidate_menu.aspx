﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="candidate_menu.aspx.cs" Inherits="candidate_menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>


  <title>Candidate Profile</title>
  <meta content="" name="description"/>
  <meta content="" name="keywords"/>

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon"/>
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"/>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
  <link href="assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet"/>
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet"/>
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet"/>
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet"/>
  <link href="assets/vendor/aos/aos.css" rel="stylesheet"/>

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet" />

  <!-- =======================================================
  * Template Name: BizPage - v4.0.0
  * Template URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
    <form id="form1" runat="server">
    <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-transparent">
    <div class="container-fluid">

      <div class="row justify-content-center">
        <div class="col-xl-11 d-flex align-items-center">
          <h3 class="logo mr-auto"><u><asp:Label  runat="server" id="userid"> Profile Page</asp:Label></u></h3>
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

          <nav class="nav-menu d-none d-lg-block">
            <ul>
                
              <li class="active"><a href="candidate_menu.aspx">Home</a></li>
              <li class="active"><a href="candidates/candidate_add.aspx">Add Profile</a></li>
              
             
              <li class="active"><a href="candidates/candidate_view.aspx">View Profile</a></li>
            <li class="active"><a href="candidates/candidate_status.aspx">View Status</a></li>
                <li>
                    <asp:Button ID="logout" OnClick="logout_Click" runat="server" Text="Logout" /></li>
              
                 
           </ul>
          </nav><!-- .nav-menu -->
        </div>
      </div>

    </div>
  </header><!-- End Header -->

  <!-- ======= Intro Section ======= -->
  <section id="intro">
    <div class="intro-container">
      <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

            <div class="carousel-item" style="background-image: url(assets/img/intro-carousel/img9.jpg)">
            <div class="carousel-container">
              <div class="container">
                <!--<h2 class="animate__animated animate__fadeInDown">Nam libero tempore</h2>-->
                <h2 class="animate__animated animate__fadeInDown" id="gg1" runat="server">Hai Candidate!!!</h2>
                <p class="animate__animated animate__fadeInUp">You can view your profile</p>
              <!-- <a href="main.html" class="btn-get-started scrollto animate__animated animate__fadeInUp">Go to Our Site</a>-->
              </div>
            </div>
          </div>

          <div class="carousel-item active" style="background-image: url(assets/img/intro-carousel/img11.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown" id="gg" runat="server">Hai Candidate!!!</h2>
                <p class="animate__animated animate__fadeInUp"><a href="candidates/candidate_add.aspx" >You can Add your remaining details</a></p>
               <!-- <a href="main.html" class="btn-get-started scrollto animate__animated animate__fadeInUp">Go to Our Site</a>-->
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(assets/img/intro-carousel/img12.jpg)">
            <div class="carousel-container">
              <div class="container">
                <!--<h2 class="animate__animated animate__fadeInDown">"You can dream, create, design and build the most wonderful place in the world…but it requires people to make the dream a reality." --Walt Disney</h2>-->
                <h2 class="animate__animated animate__fadeInDown" id="ggh" runat="server">Hai Candidate!!!</h2>
                <p class="animate__animated animate__fadeInUp"><a href="candidates/candidate_view.aspx">You can Edit your Profile</a></p>
               <!-- <a href="main.html" class="btn-get-started scrollto animate__animated animate__fadeInUp">Go to Our Site</a>-->
              </div>
            </div>
          </div>

            

          <div class="carousel-item" style="background-image: url(assets/img/intro-carousel/img6.jpg)">
            <div class="carousel-container">
              <div class="container">
               <!-- <h2 class="animate__animated animate__fadeInDown">Temporibus autem quibusdam</h2>-->
               <h2 class="animate__animated animate__fadeInDown" id="g" runat="server">Hai Candidate!!!</h2>
                <p class="animate__animated animate__fadeInUp">
                    <asp:Button ID="delete_profile" OnClick="delete_profile_Click" runat="server" Text="You can delete your Profile" /></p>
               <!-- <a href="main.html" class="btn-get-started scrollto animate__animated animate__fadeInUp">Go to Our Site</a>-->
              </div>
            </div>
          </div>

          

         <!-- <div class="carousel-item" style="background-image: url(assets/img/intro-carousel/5.jpg)">
            <div class="carousel-container">
              <div class="container">
               <!-- <h2 class="animate__animated animate__fadeInDown">Magnam aliquam quaerat</h2>-->
                <!--<p class="animate__animated animate__fadeInUp">"Hiring people is an art, not a science, and resumes can’t tell you whether someone will fit into a company’s culture."--Howard Schultz</p>
               <a href="main.html" class="btn-get-started scrollto animate__animated animate__fadeInUp">Go to Our Site</a>
              </div>
            </div>
          </div>-->

        </div>

        <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section><!-- End Intro Section -->
  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
    </form>
</body>
</html>
