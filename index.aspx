<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LogicOnlineAcadamy.index" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .mobImg{
            display:none;
        }
        @media screen and (max-width: 500px) {
            .webImg{
                display:none;
            }
            .mobImg{
                display:block;
            }
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <section id="discountBannerContainer" runat="server" class="">
        <div class="img webImg" style="height:180px">
            <asp:ImageButton ID="webImg" runat="server" Width="100%" Height="100%" OnClick="webImg_Click"/>
        </div>
        <div class="img mobImg" style="height:180px;">
            <asp:ImageButton ID="mobImg" runat="server" Width="100%" Height="100%" OnClick="mobImg_Click"/>
        </div>
    </section>

    <section class="home-slider owl-carousel">
        <div class="slider-item" style="background-image: url(images/bg_1.jpg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-start"
                    data-scrollax-parent="true">
                    <div class="col-md-6 ftco-animate">
                        <h1 class="mb-4">Education Needs Complete Solution</h1>
                        <p>
                            A small river named Duden flows by their place and supplies it with the necessary regelialia.
                        </p>
                        <p><a href="contact.aspx" class="btn btn-primary px-4 py-3 mt-3">Contact Us</a></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="slider-item" style="background-image: url(images/bg_2.jpg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-start"
                    data-scrollax-parent="true">
                    <div class="col-md-6 ftco-animate">
                        <h1 class="mb-4">University, College School Education</h1>
                        <p>
                            A small river named Duden flows by their place and supplies it with the necessary regelialia.
                        </p>
                        <p><a href="contact.aspx" class="btn btn-primary px-4 py-3 mt-3">Contact Us</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-services ftco-no-pb">
        <div class="container-wrap">
            <div class="row no-gutters">
                <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-primary">
                    <div class="media block-6 d-block text-center">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="flaticon-teacher"></span>
                        </div>
                        <div class="media-body p-2 mt-3">
                            <h3 class="heading">Certified Teachers</h3>
                            <p>
                                Even the all-powerful Pointing has no control about the blind texts it is an almost
								unorthographic.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-darken">
                    <div class="media block-6 d-block text-center">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="flaticon-reading"></span>
                        </div>
                        <div class="media-body p-2 mt-3">
                            <h3 class="heading">Special Education</h3>
                            <p>
                                Even the all-powerful Pointing has no control about the blind texts it is an almost
								unorthographic.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-primary">
                    <div class="media block-6 d-block text-center">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="flaticon-books"></span>
                        </div>
                        <div class="media-body p-2 mt-3">
                            <h3 class="heading">Book &amp; Library</h3>
                            <p>
                                Even the all-powerful Pointing has no control about the blind texts it is an almost
								unorthographic.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-darken">
                    <div class="media block-6 d-block text-center">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="flaticon-diploma"></span>
                        </div>
                        <div class="media-body p-2 mt-3">
                            <h3 class="heading">Sport Clubs</h3>
                            <p>
                                Even the all-powerful Pointing has no control about the blind texts it is an almost
								unorthographic.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-no-pt ftc-no-pb">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-5 order-md-last wrap-about wrap-about d-flex align-items-stretch">
                    <div class="img" style="background-image: url(images/about.jpg);"></div>
                </div>
                <div class="col-md-7 wrap-about py-5 pr-md-4 ftco-animate">
                    <h2 class="mb-4">What We Offer</h2>
                    <p>
                        On her way she met a copy. The copy warned the Little Blind Text, that where it came from it
						would have been rewritten a thousand times and everything that was left from its origin would be
						the word.
                    </p>
                    <div class="row mt-5">
                        <div class="col-lg-6">
                            <div class="services-2 d-flex">
                                <div class="icon mt-2 d-flex justify-content-center align-items-center">
                                    <span class="flaticon-security"></span>
                                </div>
                                <div class="text pl-3">
                                    <h3>Safety First</h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="services-2 d-flex">
                                <div class="icon mt-2 d-flex justify-content-center align-items-center">
                                    <span
                                        class="flaticon-reading"></span>
                                </div>
                                <div class="text pl-3">
                                    <h3>Regular Classes</h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="services-2 d-flex">
                                <div class="icon mt-2 d-flex justify-content-center align-items-center">
                                    <span
                                        class="flaticon-diploma"></span>
                                </div>
                                <div class="text pl-3">
                                    <h3>Certified Teachers</h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="services-2 d-flex">
                                <div class="icon mt-2 d-flex justify-content-center align-items-center">
                                    <span
                                        class="flaticon-education"></span>
                                </div>
                                <div class="text pl-3">
                                    <h3>Sufficient Classrooms</h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="services-2 d-flex">
                                <div class="icon mt-2 d-flex justify-content-center align-items-center">
                                    <span
                                        class="flaticon-jigsaw"></span>
                                </div>
                                <div class="text pl-3">
                                    <h3>Creative Lessons</h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="services-2 d-flex">
                                <div class="icon mt-2 d-flex justify-content-center align-items-center">
                                    <span
                                        class="flaticon-kids"></span>
                                </div>
                                <div class="text pl-3">
                                    <h3>Sports Facilities</h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);"
        data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-2 d-flex">
                <div class="col-md-6 align-items-stretch d-flex">
                    <div class="img img-video d-flex align-items-center"
                        style="background-image: url(images/LOA/LOA%201000x563%20.png);">
                        <div class="video justify-content-center">
                        </div>
                    </div>
                </div>
                <div class="col-md-6 heading-section heading-section-white ftco-animate pl-lg-5 pt-md-0 pt-5">
                    <h2 class="mb-4">Logic Online Academy</h2>
                    <p>
                        Separated they live in. A small river named Duden flows by their place and supplies it with the
						necessary regelialia. It is a paradisematic country. A small river named Duden flows by their
						place and supplies it with the necessary regelialia. It is a paradisematic country, in which
						roasted parts of sentences fly into your mouth.
                    </p>
                    <p>
                        A small river named Duden flows by their place and supplies it with the necessary regelialia. It
						is a paradisematic country, in which roasted parts of sentences fly into your mouth.
                    </p>
                </div>
            </div>
<!-- ||||||||||||||||||||||||||||||||||||||||||||||||# For Counts (Student , Teacher, Course, Awards) #|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| -->
            <div class="row d-md-flex align-items-center justify-content-center">
                <div class="col-lg-12">
                    <div class="row d-md-flex align-items-center">
                        <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="icon"><span class="flaticon-doctor"></span></div>
                                <div class="text">
                                    <strong class="number" data-number="<%=count_tutor %>">0</strong>
                                    <span>Certified Teachers</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="icon"><span class="flaticon-doctor"></span></div>
                                <div class="text">
                                    <strong class="number" data-number="<%=count_student %>">0</strong>
                                    <span>Students</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="icon"><span class="flaticon-doctor"></span></div>
                                <div class="text">
                                    <strong class="number" data-number="<%=count_course %>">0</strong>
                                    <span>Courses</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="icon"><span class="flaticon-doctor"></span></div>
                                <div class="text">
                                    <strong class="number" data-number="15">0</strong>
                                    <span>Awards Won</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


<%--    <section class="ftco-section">
        <div class="container-fluid px-4">
            <div class="row justify-content-center mb-5 pb-2">
                <div class="col-md-8 text-center heading-section ftco-animate">
                    <h2 class="mb-4"><span>Our</span> Courses</h2>
                    <p>
                        Separated they live in. A small river named Duden flows by their place and supplies it with the
						necessary regelialia. It is a paradisematic country
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 course ftco-animate">
                    <div class="img">
                        <asp:Image ID="CourseImage1" CssClass="img" runat="server" ImageUrl="~/images/course-1.jpg"/>
                    </div>
                    <div class="text pt-4">
                        <h3><a href="#">    
                            <asp:Label ID="CourseLabel1" runat="server" Text="Test Course1"></asp:Label></a></h3>
                        <p>
                            <asp:Label ID="DesLabel1" runat="server" Text="Some Discription"></asp:Label>
                        </p>
                        <p><a href="#" class="btn btn-primary">Apply now</a></p>
                    </div>
                </div>
                <div class="col-md-3 course ftco-animate">
                    <div class="img">
                        <asp:Image ID="CourseImage2" CssClass="img" runat="server" ImageUrl="~/images/course-1.jpg"/>
                    </div>
                    <div class="text pt-4">
                        <h3><a href="#">
                            <asp:Label ID="CourseLabel2" runat="server" Text="Test Course1"></asp:Label></a></h3>
                        <p>
                            <asp:Label ID="DesLabel2" runat="server" Text="Some Discription"></asp:Label>
                        </p>
                        <p><a href="#" class="btn btn-primary">Apply now</a></p>
                    </div>
                </div>
                <div class="col-md-3 course ftco-animate">
                    <div class="img">
                        <asp:Image ID="CourseImage3" CssClass="img" runat="server" ImageUrl="~/images/course-1.jpg"/>
                    </div>
                    <div class="text pt-4">
                        <h3><a href="#">
                            <asp:Label ID="CourseLabel3" runat="server" Text="Test Course1"></asp:Label></a></h3>
                        <p>
                            <asp:Label ID="DesLabel3" runat="server" Text="Some Discription"></asp:Label>
                        </p>
                        <p><a href="#" class="btn btn-primary">Apply now</a></p>
                    </div>
                </div>
                <div class="col-md-3 course ftco-animate">
                    <div class="img">
                        <asp:Image ID="CourseImage4" CssClass="img" runat="server" ImageUrl="~/images/course-1.jpg"/>
                    </div>
                    <div class="text pt-4">
                        <h3><a href="#">
                            <asp:Label ID="CourseLabel4" runat="server" Text="Test Course1"></asp:Label></a></h3>
                        <p>
                            <asp:Label ID="DesLabel4" runat="server" Text="Some Discription"></asp:Label>
                        </p>
                        <p><a href="#" class="btn btn-primary">Apply now</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section bg-light">
        <div class="container-fluid px-4">
            <div class="row justify-content-center mb-5 pb-2">
                <div class="col-md-8 text-center heading-section ftco-animate">
                    <h2 class="mb-4">Certified Teachers</h2>
                    <p>
                        Separated they live in. A small river named Duden flows by their place and supplies it with the
						necessary regelialia. It is a paradisematic country
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img-wrap d-flex align-items-stretch">
                            <div class="img align-self-stretch" style="background-image: url(images/teacher-1.jpg);">
                            </div>
                        </div>
                        <div class="text pt-3 text-center">
                            <h3>Bianca Wilson</h3>
                            <span class="position mb-2">Teacher</span>
                            <div class="faded">
                                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img-wrap d-flex align-items-stretch">
                            <div class="img align-self-stretch" style="background-image: url(images/teacher-2.jpg);">
                            </div>
                        </div>
                        <div class="text pt-3 text-center">
                            <h3>Mitch Parker</h3>
                            <span class="position mb-2">English Teacher</span>
                            <div class="faded">
                                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img-wrap d-flex align-items-stretch">
                            <div class="img align-self-stretch" style="background-image: url(images/teacher-3.jpg);">
                            </div>
                        </div>
                        <div class="text pt-3 text-center">
                            <h3>Stella Smith</h3>
                            <span class="position mb-2">Art Teacher</span>
                            <div class="faded">
                                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img-wrap d-flex align-items-stretch">
                            <div class="img align-self-stretch" style="background-image: url(images/teacher-4.jpg);">
                            </div>
                        </div>
                        <div class="text pt-3 text-center">
                            <h3>Monshe Henderson</h3>
                            <span class="position mb-2">Science Teacher</span>
                            <div class="faded">
                                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>


    <section class="ftco-section ftco-consult ftco-no-pt ftco-no-pb" style="background-image: url(images/bg_5.jpg);"
        data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-md-6 py-5 px-md-5">
                    <div class="py-md-5">
                        <div class="heading-section heading-section-white ftco-animate mb-5">
                            <h2 class="mb-4">Request A Quote</h2>
                            <p>
                                Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
								there live the blind texts.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section testimony-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-2">
                <div class="col-md-8 text-center heading-section ftco-animate">
                    <h2 class="mb-4">Student Says About Us</h2>
                    <p>
                        Separated they live in. A small river named Duden flows by their place and supplies it with the
						necessary regelialia. It is a paradisematic country
                    </p>
                </div>
            </div>
            <div class="row ftco-animate justify-content-center">
                <div class="col-md-12">
                    <div class="carousel-testimony owl-carousel">
                        <div class="item">
                            <div class="testimony-wrap d-flex">
                                <div class="user-img mr-4" style="background-image: url(images/teacher-1.jpg)">
                                </div>
                                <div class="text ml-2">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                    <p>
                                        Far far away, behind the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.
                                    </p>
                                    <p class="name">Racky Henderson</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap d-flex">
                                <div class="user-img mr-4" style="background-image: url(images/teacher-2.jpg)">
                                </div>
                                <div class="text ml-2">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                    <p>
                                        Far far away, behind the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.
                                    </p>
                                    <p class="name">Henry Dee</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap d-flex">
                                <div class="user-img mr-4" style="background-image: url(images/teacher-3.jpg)">
                                </div>
                                <div class="text ml-2">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                    <p>
                                        Far far away, behind the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.
                                    </p>
                                    <p class="name">Mark Huff</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap d-flex">
                                <div class="user-img mr-4" style="background-image: url(images/teacher-4.jpg)">
                                </div>
                                <div class="text ml-2">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                    <p>
                                        Far far away, behind the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.
                                    </p>
                                    <p class="name">Rodel Golez</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap d-flex">
                                <div class="user-img mr-4" style="background-image: url(images/teacher-1.jpg)">
                                </div>
                                <div class="text ml-2">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                    <p>
                                        Far far away, behind the word mountains, far from the countries Vokalia and
										Consonantia, there live the blind texts.
                                    </p>
                                    <p class="name">Ken Bosh</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
