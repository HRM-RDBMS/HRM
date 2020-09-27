<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Forms_Feedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%--<head runat="server">--%>

   <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
   <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<head id="Head1" runat="server">
    <title>Feedback</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    
   <link href="../CSS/Feedback.css" rel="stylesheet" />

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
    
    
    <script src="../assets/js/Feedback.js"></script>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&subset=latin-ext,vietnamese" rel="stylesheet"/>
</head>
<body>

    <div class="container">
        <h2><b>Welcome to our Feedback Page</b></h2>
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Kindly Open please!!!</button>
        <!-- Modal -->
        <div class="modal fade " id="myModal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content page1-->
                <div style="" class="modal-content" id="main_popup">
                    <div class="modal-body  ">
                        <div class="col-lg-12">
                            <button type="button" class="close close_model" data-dismiss="modal"><span class="glyphicon glyphicon-remove-circle
                                "></span>
                            </button>
                        </div>
                        <div class="img_main">


                           
                            <img src="../assets/img/img3.jpg" />


                        </div>
                        <div class="heading_msg">
                            <h3>Please help us serve you better by telling us about your product and service experience so far. We appreciate your business and want to make sure we meet your expectations.</h3>
                        </div>
                        <div class="row text-center give_feedback">
                            <button type="button" id="give_feedback" class="btn btn-default">Give Feedback</button>
                        </div>
                    </div>
                </div>
                <!--END Modal content page1-->
                <!-- Modal content page2-->
                <div id="page2" style="display:none;" class="modal-content" style="box-shadow:none;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span class="glyphicon glyphicon-remove-circle
                                        "></span></button>
                        <h4 class="modal-title">Section 2 | Candidate Experience</h4>
                    </div>
                    <div class="modal-body second_tab">
                        <div class="row">
                            <div class="mobile_progress_bar">
                                <div class="text-left visible-xs" style="margin-bottom:40px;">
                                    <div class="progress">
                                        <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <strong>Your opinion Matters</strong>
                                </div>
                            </div>
                            <div class="col-xs-12 col-lg-6 col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label for="input" class="control-label col-md-2 col-sm-2 hidden-xs">a.</label>
                                    <div class="col-md-10 col-xs-12 col-sm-8">
                                        <div class="mat-input">
                                            <div class="mat-input-outer">
                                                <input type="text" autocomplete="off" />
                                                <label class="">Hello, What is your name</label>
                                                <div class="border"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-lg-6 col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label for="input" class="control-label col-md-2 col-sm-2 hidden-xs">b.</label>
                                    <div class="col-md-10 col-xs-12 col-sm-8">
                                        <div class="mat-input">
                                            <div class="mat-input-outer">
                                                <input type="text" autocomplete="off" />
                                                <label class="">Enter your email address</label>
                                                <div class="border"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-lg-6 col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label for="input" class="control-label col-md-2 col-sm-2 hidden-xs">c.</label>
                                    <div class="col-md-10 col-sm-8 col-xs-12">
                                        <div class="mat-input">
                                            <div class="mat-input-outer">
                                                <input type="text" autocomplete="off" />
                                                <label class="">Which organization do you belong to?</label>
                                                <div class="border"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-lg-6 col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label for="input" class="control-label col-md-2 col-sm-2 hidden-xs">d.</label>
                                    <div class="col-md-10 col-xs-12 col-sm-8">
                                        <div class="mat-input">
                                            <div class="mat-input-outer">
                                                <input type="text" autocomplete="off" />
                                                <label class="">Give us your contact number (optional)</label>
                                                <div class="border"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-sm-12 col-md-12 hidden-xs">
                                <button type="button" id="ok" class="btn btn-default ok" data-dismiss="">Ok  <span class="glyphicon glyphicon-ok"></span></button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="visible-xs text-center">
                                <button type="button" id="Button1" class="btn btn-default ok" data-dismiss="">Ok  <span class="glyphicon glyphicon-ok"></span></button></div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="row">
                            <div class="col-lg-6 col-sm-6 col-md-6 text-left hidden-xs">
                                <strong>Your opinion Matters</strong>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-6 col-md-6 hidden-xs">


<%--                                <a href="#"><img src="../images/img14.png" id="arr1" style="margin-right:0px;"/></a>
                                <a href="#"><img src="../images/img15.png" id="arr2" /></a>--%>




                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Modal content page2-->
                <!-- Modal content page3-->
                <div id="page3" style="display:none;" class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span class="glyphicon glyphicon-remove-circle
                                "></span></button>
                        <h4 class="modal-title">Section 2 | Customer Experience</h4>
                    </div>
                    <div class="mobile_progress_bar">
                        <div class="text-left visible-xs" style="margin-bottom:40px;">
                            <div class="progress">
                                <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <strong>Your opinion Matters</strong>
                        </div>
                    </div>
                    <div class="modal-body row">
                        <div class="col-md-12">
                            <div class="col-md-6">
                                <div class="col-md-1 hidden-xs">
                                    <h5>a.</h5>
                                </div>
                                <div class="col-md-11">
                                    <h5>
                                        How would you rate the look and feel of the website?
                                    </h5>
                                    <span style="color:red" id="rating" class="rating" data-current-rating=0 data-icon-bad='fa fa-heart-o' data-icon-good='fa fa-heart'></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="col-md-1 hidden-xs">
                                    <h5>b.</h5>
                                </div>
                                <div class="col-md-11 hidden-xs">
                                    <h5>
                                        How would you rate the look and feel of the website?
                                    </h5>
                                    <span style="color:#faa524;" id="Span1" class="rating" data-current-rating=0 data-icon-bad='fa fa-thumbs-o-up' data-icon-good='fa fa-thumbs-up'></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-6">
                                <div class="col-md-1 hidden-xs">
                                    <h5>c.</h5>
                                </div>
                                <div class="col-md-11">
                                    <h5>
                                        How would you rate the look and feel of the website?
                                    </h5>
                                    <span style="color:#ff7429;" id="Span2" class="rating" data-current-rating=3 data-icon-bad='fa fa-check-square-o' data-icon-good='fa fa-check'></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="col-md-1 hidden-xs">
                                    <h5>d.</h5>
                                </div>
                                <div class="col-md-11">
                                    <h5>
                                        How would you rate the look and feel of the website?
                                    </h5>
                                    <span id="Span3" style="color:#ff7429;" class="rating" data-current-rating=3 data-icon-bad='fa fa-star-o' data-icon-good='fa fa-star'></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-xs-12 col-lg-6 col-sm-12 col-md-6">
                                <div class="form-group">
                                    <label for="input" class="control-label col-md-2 col-sm-2 hidden-xs">a.</label>
                                    <div class="col-md-10 col-xs-12 col-sm-8">
                                        <div class="mat-input">
                                            <div class="mat-input-outer" style="margin-bottom:35px;">
                                                <input style="height:60px;" type="text" autocomplete="off" />
                                                <label style="font-size: 15px;
                                                line-height: 20px;">Are there any comments or suggestions you'd like to share with us?</label>
                                                <div class="border"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <button type="button" id="ok2" class="btn btn-default ok" data-dismiss="">Ok  <span class="glyphicon glyphicon-ok"></span></button></div>
                        </div>
                    </div>
                    <div class="modal-footer col-md-12">

                        <div class="row">
                            <div class="col-lg-6 col-sm-6 col-md-6 text-left hidden-xs">
                                <strong>Your opinion Matters</strong>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-6 col-md-6 hidden-xs">


                               <%-- <a href="#"><img src="../images/img14.png" id="arr3" style="margin-right:0px;"/></a>
                                <a href="#"><img src="../images/img15.png" id="arr4" /></a>--%>



                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Modal content page3-->
                <!-- Modal content page 4-->
                <div id="page4" style="display:none;" class="modal-content">
                    <div class="modal-body ">
                        <div class="col-lg-12">
                            <button type="button" class="close close_model" data-dismiss="modal"><span class="glyphicon glyphicon-remove-circle
                                        "></span>
                                    </button>
                        </div>
                        <div class="thank_you_body">
                            <div class="heading_msg2">
                                <h3>
                                    <span>Thanks for Your Response!</span><br> Your feedback was sent perfectly. We will work on it to improve our website.
                                </h3>
                            </div>
                            <div class="row text-center give_feedback">
                                <button type="submit" class="btn btn-default " data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Modal content page 4-->
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#myModal").modal('show');
            $("#give_feedback,#arr3").click(function () {
                $("#page2").show();
                $("#page3").hide();
                $("#page4").hide();
                $("#main_popup").hide();
            });
        });
        $("#ok,#arr2").click(function () {
            $("#page2").hide();
            $("#page3").show();
            $("#page4").hide();
            $("#main_popup").hide();
        });
        $("#ok2,#arr4").click(function () {
            $("#page2").hide();
            $("#page3").hide();
            $("#page4").show();
            $("#main_popup").hide();
        });
        $("#arr1").click(function () {
            $("#page2").hide();
            $("#page3").hide();
            $("#page4").hide();
            $("#main_popup").show();
        });
    </script>
    <script>
        new WOW().init();
    </script>
    <script>
        $(function () {
            $('.mat-input-outer label').click(function () {
                $(this).prev('input').focus();
            });
            $('.mat-input-outer input').focusin(function () {
                $(this).next('label').addClass('active');
            });
            $('.mat-input-outer input').focusout(function () {
                if (!$(this).val()) {
                    $(this).next('label').removeClass('active');
                } else {
                    $(this).next('label').addClass('active');
                }
            });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('.rating').magicRatingInit({
                success: function (magicRatingWidget, rating) {
                    alert(rating);
                },
                iconGood: "fa-bicycle",
                iconBad: "fa-car",
            });
            $(".rating2").magicRatingInit({
                success: function (magicRatingWidget, rating) {
                    alert(rating);
                }
            })
        });
    </script>
    </div>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-36251023-1']);
        _gaq.push(['_setDomainName', 'jqueryscript.net']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        })();
    </script>
</body>
</html>