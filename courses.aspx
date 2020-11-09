<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="LogicOnlineAcadamy.course" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-9 ftco-animate text-center">
                    <h1 class="mb-2 bread">Courses</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="index.aspx">Home <i class="ion-ios-arrow-forward"></i></a></span><span>Courses <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>
    <script>
        
    </script>
    <section class="ftco-section">
        <div class="container-fluid px-4">
            <div id="courseBlock" runat="server" class="row">

            </div>
        </div>
    </section>
    
</asp:Content>
