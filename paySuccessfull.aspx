<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="paySuccessfull.aspx.cs" Inherits="LogicOnlineAcadamy.paySuccessfull" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=Panel1.ClientID %>");
            var printWindow = window.open('', '', 'height=800,width=1200');
            printWindow.document.write('<html><head><title>Invoice LOA</title>');
            printWindow.document.write('<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>');
            printWindow.document.write('<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"/>');
            //printWindow.document.write('<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"/>');
            //printWindow.document.write('<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"/>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
    <style>
        @media screen and (max-width: 500px) {
            .main{
                width:100% !important;
                padding:0 !important;
            }
            .sub-main{
                width:95% !important;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="text-center p-4">
        <div class="m-5 bg-success rounded-circle text-center ml-auto mr-auto" style="height: 120px; width: 120px; position: relative;">
            <div class="fa fa-check p-4" style="font-size: 70px; color: white;"></div>
        </div>
        <h1>Your transaction has Successfull.</h1>
        <%--<h2>Redirecting to Home Page...</h2>--%>
    </div>
    <asp:Panel ID="Panel1" runat="server">
        <div class='main m-auto p-5' style='background-color: #e4e6eb; width: 75%'>
            <div class='logo text-center p-2'>
                <img src='../images/LOA/LOA%20200%20X%20200.png' height='120' width='120' />
            </div>
            <div class='thanks text-center'>
                <div class='pb-2'>
                    <h1>Thank You.</h1>
                </div>
            </div>
            <div class='sub-main m-auto bg-light rounded'>
                <div class='text-center p-2 pt-3'>
                    <label><strong>Hi <%=fname %>!</strong></label><br />
                    <label>Thanks for your purchase from Logic Online Academy.</label>
                </div>
                <div class='p-4'>
                    <h4>
                        <label>YOUR ORDER INFORMATION:</label></h4>
                    <hr />
                    <div class='row p-2'>
                        <div class='col'>
                            <label><strong>Order ID:</strong></label><br />
                            <label><%=orderID %></label>
                        </div>
                        <div class='col'>
                            <label><strong>Bill To:</strong></label><br />
                            <label><%=email %></label>
                        </div>
                    </div>
                    <div class='row p-2'>
                        <div class='col'>
                            <label><strong>Order Date:</strong></label><br />
                            <label><%=enrollDate %></label>
                        </div>
                        <div class='col'>
                            <label><strong>Source:</strong></label><br />
                            <label>Logic Online Academy (LOA)</label>
                        </div>
                    </div>
                </div>
                <div class='p-4'>
                    <h4>
                        <label>HERE'S WHAT YOU ORDERED:</label></h4>
                    <hr />
                    <div class='row p-2'>
                        <div class='col'>
                            <label><strong>Course Name:</strong></label><br />
                            <label><%=cname %></label>
                        </div>
                        <div class='col'>
                            <label><strong>Price:</strong></label><br />
                            <label><%=cprice %></label>
                        </div>
                    </div>
                    <hr />
                    <div class='row p-2'>
                        <div class='col'>
                            <label><strong>Total:</strong></label>
                        </div>
                        <div class='col'>
                            <label><strong><%=cprice %> / -</strong></label>
                        </div>
                    </div>
                </div>
                <hr />
                <div class='blockquote-footer text-center'>
                    <label class='col-form-label'><strong>Logic Online Academy (LOA)</strong></label>
                    <br />
                    <label>ME/201, Navkar Avenue,Viva Jangid Complex, Manvelpada Talav Road,Virar East. Mumbai - 401305</label>
                </div>
            </div>
        </div>
    </asp:Panel>
    <div class="text-center">
        <asp:Button ID="btnPrint" runat="server" CssClass="btn btn-primary p-2" Text="Print Invoice" OnClientClick="return PrintPanel();" />
    </div>
</asp:Content>
