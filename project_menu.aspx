﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="project_menu.aspx.cs" Inherits="project_menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

  <title>Project Details</title>
  <meta content="" name="description"/>
  <meta content="" name="keywords"/>

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon"/>
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"/>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet"/>

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet"/>
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
  <link href="assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet"/>
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet"/>
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet"/>
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet"/>
  <link href="assets/vendor/aos/aos.css" rel="stylesheet"/>

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet"/>

  <!-- =======================================================
  * Template Name: BizPage - v4.0.0
  * Template URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-transparent">
    <div class="container-fluid">

      <div class="row justify-content-center">
        <div class="col-xl-11 d-flex align-items-center">
            
          <h3 class="logo mr-auto"  >Project details</h3>
            <span runat="server"  class="logo mr-auto" id="msg" style="color:lawngreen; font-size:large"></span>
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

          <nav class="nav-menu d-none d-lg-block">
            <ul>
              <li class="active"><a href="project_menu.aspx">Home</a></li>
              <li class="drop-down"><a href="">Project Details</a>
                <ul>
                  <li><a href="projects/project_add.aspx">Add Project</a></li>
                  <li><a href="projects/project_edit.aspx">Edit Project</a></li>
                 <li><a href="projects/project_delete.aspx">Delete Project</a></li>
                  <li><a href="projects/project_view.aspx">View Project</a></li>
                </ul>
              </li>
              <li class="drop-down"><a href="">Project Status</a>
                  <ul>
                      <li><a href="projects/project_status_view.aspx">View Project Status</a></li>
                      <li><a href="projects/project_status.aspx">Edit Project Status</a></li>
                  
                  </ul>
              </li>
              <li class="drop-down"><a href="">Assigned Employee</a>
                <ul>
                  <li><a href="projects/add_employee.aspx">Add Assigned Employee</a></li>
                  <li><a href="projects/view_employee.aspx">View Assigned Employee</a></li>
                </ul>
              </li>
              <li><a href="main.aspx">Go Back</a></li>
             
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

          <div class="carousel-item active" style="background-image: url(assets/img/intro-carousel/img11.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">Welcome to Project details page!!!</h2>
                <p class="animate__animated animate__fadeInUp">You can Add your project</p>
               <!-- <a href="main.html" class="btn-get-started scrollto animate__animated animate__fadeInUp">Go to Our Site</a>-->
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(assets/img/intro-carousel/img12.jpg)">
            <div class="carousel-container">
              <div class="container">
                <!--<h2 class="animate__animated animate__fadeInDown">"You can dream, create, design and build the most wonderful place in the world…but it requires people to make the dream a reality." --Walt Disney</h2>-->
                <h2 class="animate__animated animate__fadeInDown">Welcome to Project details page!!!</h2>
                <p class="animate__animated animate__fadeInUp">You can Edit your Project</p>
               <!-- <a href="main.html" class="btn-get-started scrollto animate__animated animate__fadeInUp">Go to Our Site</a>-->
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(assets/img/intro-carousel/img6.jpg)">
            <div class="carousel-container">
              <div class="container">
               <!-- <h2 class="animate__animated animate__fadeInDown">Temporibus autem quibusdam</h2>-->
               <h2 class="animate__animated animate__fadeInDown">Welcome to Project details page!!!</h2>
                <p class="animate__animated animate__fadeInUp">You can delete your Project</p>
               <!-- <a href="main.html" class="btn-get-started scrollto animate__animated animate__fadeInUp">Go to Our Site</a>-->
              </div>
            </div>
          </div>

          <div class="carousel-item" style="background-image: url(assets/img/intro-carousel/img9.jpg)">
            <div class="carousel-container">
              <div class="container">
                <!--<h2 class="animate__animated animate__fadeInDown">Nam libero tempore</h2>-->
                <h2 class="animate__animated animate__fadeInDown">Welcome to Project details page!!!</h2>
                <p class="animate__animated animate__fadeInUp">You can view your project</p>
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
  </section> <!-- Vendor JS Files -->
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

</body>

</html>