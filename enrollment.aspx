<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="enrollment.aspx.cs" Inherits="LogicOnlineAcadamy.enrollment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

    <link href="css/StyleSheet.css" rel="stylesheet" />

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-9 ftco-animate text-center">
                    <h1 class="mb-2 bread">Buy Course</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="courses.aspx">Course <i class="ion-ios-arrow-forward"></i></a></span><span>Course Eroll <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section">
        <div class="container-fluid px-4">
            <div class="img">
                <div class="row text-center">
                    <div class="col"></div>
                    <div class="col">
                        <asp:Image ID="courseImg" runat="server" Height="400px" Width="350"/>
                    </div>
                    <div class="col">
                        <h3>
                            <asp:Label ID="courseTitle" runat="server" Text=""></asp:Label>
                        </h3>
                        <p>
                            <asp:Label ID="CourseDiscription" runat="server" Text=""></asp:Label>
                        </p>
                        <h1>
                            <asp:Label ID="price" runat="server" Text=""></asp:Label>
                        </h1>
                        <asp:Button ID="buyNow" CssClass="btn btn-primary py-3 px-5" runat="server" Text="Buy Now" OnClick="buyNow_Click" />
                    </div>
                    <div class="col"></div>

                </div>
            </div>
        </div>
    </section>
    
</asp:Content>
