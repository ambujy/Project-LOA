<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="passwordReset.aspx.cs" Inherits="LogicOnlineAcadamy.passwordReset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .signup-form {
            width: 390px;
            margin: 0 auto;
            padding: 30px 0;
        }

            .signup-form form {
                color: #999;
                border-radius: 3px;
                margin-bottom: 15px;
                background: #fff;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .signup-form h2 {
                color: #333;
                font-weight: bold;
                margin-top: 0;
            }

            .signup-form hr {
                margin: 0 -30px 20px;
            }

            .signup-form .form-group {
                margin-bottom: 20px;
            }

            .signup-form label {
                font-weight: normal;
                font-size: 13px;
            }

            .signup-form input[type="checkbox"] {
                margin-top: 2px;
            }



            .signup-form a {
                color: #fff;
                text-decoration: underline;
            }

                .signup-form a:hover {
                    text-decoration: none;
                }

            .signup-form form a {
                color: #3598dc;
                text-decoration: none;
            }

                .signup-form form a:hover {
                    text-decoration: underline;
                }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="signup-form">

            <h2 class="text-center">Verify yourself</h2>
            <hr />
            <div class="text-center">
                <asp:Label ID="incorrect" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="unameLBL" runat="server" Text="Username : "></asp:Label>
                <asp:TextBox ID="username" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="usernameReq" runat="server" ErrorMessage="*Enter Username." ForeColor="Red" ControlToValidate="username" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="emailLBL" runat="server" Text="Email : "></asp:Label>
                <asp:TextBox ID="emailTBX" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="emailReq" runat="server" ErrorMessage="*Enter Email." ForeColor="Red" ControlToValidate="emailTBX" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailValidation" runat="server" ErrorMessage="*Invalid Email Address." ControlToValidate="emailTBX" Display="Dynamic" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"></asp:RegularExpressionValidator>

            </div>
            <div id="divGetCode" class="form-group" runat="server" style="height: 45px;">
                <asp:Button ID="getcoedeBTN" class="btn btn-primary btn-lg text-center" runat="server" OnClick="getcoedeBTN_Click" Text="Get Code" />
            </div>
            <div id="divcode" class="form-group" visible="false" runat="server">
                <asp:Label ID="codeLBL" runat="server" Text="Code : " Visible="False"></asp:Label>
                <asp:TextBox ID="codeTBX" runat="server" Visible="False" class="form-control"></asp:TextBox>
            </div>
            <div id="verify_btn" class="form-group" visible="false" runat="server" style="height: 45px;">
                <asp:Button ID="Button2" class="btn btn-primary btn-lg text-center" runat="server" Text="Verify Code" Visible="False" OnClick="Button2_Click" />
            </div>

            <asp:Label CssClass="text-center" ID="Label3" runat="server" ForeColor="Red"></asp:Label>

        </div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <div class="signup-form">
            <div id="form2" runat="server" class="">
                <h2 class="text-center">Change Password</h2>
                <hr />
                <div runat="server" id="p1" class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="New Password : "></asp:Label>
                    <asp:TextBox ID="pass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Can not be empty." ForeColor="Red" ControlToValidate="pass" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Password must be at least 8 characters long" ControlToValidate="pass" Display="Dynamic" ForeColor="Red" ValidationExpression="^[\s\S]{8,}$"></asp:RegularExpressionValidator>
                </div>
                <div runat="server" id="p2" class="form-group">
                    <asp:Label ID="Confirm_password" runat="server" Text="Confirm Password :"></asp:Label>
                    <asp:TextBox ID="conf_pass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Password not matched." ForeColor="Red" ControlToCompare="pass" ControlToValidate="conf_pass"></asp:CompareValidator>

                </div>
                <div runat="server" id="p3" class="form-group" style="height: 45px;">
                    <asp:Button ID="confirm" runat="server" Text="Confirm" class="btn btn-primary btn-lg text-center" OnClick="confirm_Click" />
                </div>
            </div>
            <div class="text-center">
            </div>
            <div id="success_msg" class="alert alert-success" runat="server" visible="false">
                <h4 class="alert-heading">Password Changed Successfully!</h4>
                Try Login again... 
           
            </div>
        </div>

    </asp:Panel>
</asp:Content>
