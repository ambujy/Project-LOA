<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="LogicOnlineAcadamy.contact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-9 ftco-animate text-center">
                    <h1 class="mb-2 bread">Contact Us</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span><span>Contact <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section contact-section">
        <div class="container">
            <div class="row d-flex contact-info">
                <div class="col-md-3 d-flex">
                    <div class="bg-light align-self-stretch box p-4 text-center">
                        <h3 class="mb-4">Address</h3>
                        <p>ME/201, Navkar Avenue,Viva Jangid Complex, Virar East. Mumbai - 401305</p>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="bg-light align-self-stretch box p-4 text-center">
                        <h3 class="mb-4">Contact Number</h3>
                        <p><a href="tel://79775 52281">+91 79775 52281</a></p>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="bg-light align-self-stretch box p-4 text-center">
                        <h3 class="mb-4">Email Address</h3>
                        <p><a href="mailto:logicacademy40@gmail.com">logicacademy40@gmail.com</a></p>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="bg-light align-self-stretch box p-4 text-center">
                        <h3 class="mb-4">Website</h3>
                        <p><a href="https://www.eduloa.com" target="_blank">www.eduloa.com</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb contact-section">
        <div class="container">
            <div class="row d-flex align-items-stretch no-gutters">
                <div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
                    <div class="form-group">
                        <asp:TextBox ID="yourName" class="form-control" placeholder="Your Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="yourEmail" class="form-control" placeholder="Your Email" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="subjet" class="form-control" placeholder="Subject" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="message" class="form-control" cols="30" Rows="7" placeholder="Message" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="successLBL" runat="server" Text="" ForeColor="Green"></asp:Label>
                        <asp:Button ID="sendMessage" class="btn btn-primary py-3 px-5" runat="server" Text="Send Message" OnClick="sendMessage_Click" />
                    </div>
                </div>
                <div class="col-md-6 d-flex align-items-stretch" style="height: 100%">

                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d547.11386823198!2d72.8208660039118!3d19.441262943632587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7a9714e20211f%3A0xa24f09a5f19cedf3!2sNavkar%20Avenue%2C%2064%2C%20Ekvira%20Darshan%2C%20Nalasopara%20East%2C%20Virar%2C%20Maharashtra%20401305!5e0!3m2!1sen!2sin!4v1603615782441!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

                </div>
            </div>
        </div>
    </section>
</asp:Content>
