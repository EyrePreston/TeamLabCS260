<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp.Account.Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<<<<<<< HEAD


    <asp:LoginView ID="LoginView1" runat="server">
    <LoggedInTemplate>
        You are logged in Welcome<asp:LoginName ID="LoginName1" runat="server" />
    </LoggedInTemplate>
</asp:LoginView>

    <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="565px" Width="843px">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
</asp:Login>


=======
    <hgroup class="title">
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
>>>>>>> origin/master
</asp:Content>
