<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="WebApp.Admin.adminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">







    <asp:TextBox ID="createRoleTextBox" runat="server"></asp:TextBox>
<asp:Button ID="CreateRoleButton" runat="server" Text="Create Role" Height="43px" OnClick="Button1_Click" Width="185px" Font-Size="14pt" />
<br />
    &nbsp;
<asp:Label ID="availableUsers" runat="server" Text="Available Users" Font-Bold="True"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="availableRolesLabel" runat="server" Text="Available Roles" Font-Bold="True"></asp:Label>
<br />
<asp:ListBox ID="UsersListBox" runat="server" Height="220px" Width="152px"></asp:ListBox>
<asp:ListBox ID="AvailableRoles" runat="server" Height="218px" Width="152px"></asp:ListBox>
<br />
<br />
<asp:Button ID="assignButton" runat="server" Height="37px" Text="Assign Role To User" Width="301px" Font-Size="12pt" />
<br />
<asp:Button ID="Button3" runat="server" Height="37px" Text="Remove User From Role" Width="299px" Font-Size="12pt" />
<br />
<asp:Button ID="deleteRoleButton" runat="server" Height="41px" Text="Delete Roles" Width="303px" Font-Size="12pt" />
<br />
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<br />
<br />







</asp:Content>
