<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp.Account.Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    &nbsp;<hgroup class="title">
        <h1>Log in&nbsp;</h1>
    </hgroup>
    <section id="loginForm">
        <h2>Use a local account to log in.</h2>
        <p>User Email: </p>
        <asp:TextBox ID="txtEmail" runat="server" />
        <br />
        <p>Password: </p>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        <br />
        <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="btnLogin_Click" />   
        <asp:Label ID="lblConfirmation" runat="server"/>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
            if you don't have an account.
        </p>
    </section>
</asp:Content>
