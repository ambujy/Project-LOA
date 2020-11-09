<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="LogicOnlineAcadamy.test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        TEST PAGE</h1>
    <section class="t">
        <div class="" id="testBlock" runat="server"></div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <img src="images/LOA/LOA%20200%20X%20200.png" />
    </section>
    <a href="paySuccessfull.aspx">paySuccessfull.aspx</a>
</asp:Content>
