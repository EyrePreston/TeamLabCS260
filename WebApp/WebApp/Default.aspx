<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    &nbsp;<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Label ID="Company_NameLabel" runat="server" Text='<%# Eval("Company_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Address_1Label" runat="server" Text='<%# Eval("Address_1") %>' />
                </td>
                <td>
                    <asp:Label ID="Address_2Label" runat="server" Text='<%# Eval("Address_2") %>' />
                </td>
                <td>
                    <asp:Label ID="Phone_NumberLabel" runat="server" Text='<%# Eval("Phone_Number") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="Company_NameTextBox" runat="server" Text='<%# Bind("Company_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Address_1TextBox" runat="server" Text='<%# Bind("Address_1") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Address_2TextBox" runat="server" Text='<%# Bind("Address_2") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Phone_NumberTextBox" runat="server" Text='<%# Bind("Phone_Number") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="Company_NameTextBox" runat="server" Text='<%# Bind("Company_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Address_1TextBox" runat="server" Text='<%# Bind("Address_1") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Address_2TextBox" runat="server" Text='<%# Bind("Address_2") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Phone_NumberTextBox" runat="server" Text='<%# Bind("Phone_Number") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Label ID="Company_NameLabel" runat="server" Text='<%# Eval("Company_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Address_1Label" runat="server" Text='<%# Eval("Address_1") %>' />
                </td>
                <td>
                    <asp:Label ID="Address_2Label" runat="server" Text='<%# Eval("Address_2") %>' />
                </td>
                <td>
                    <asp:Label ID="Phone_NumberLabel" runat="server" Text='<%# Eval("Phone_Number") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server">Company Name</th>
                                <th runat="server">Address 1</th>
                                <th runat="server">Address 2</th>
                                <th runat="server">Phone Number</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Label ID="Company_NameLabel" runat="server" Text='<%# Eval("Company_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Address_1Label" runat="server" Text='<%# Eval("Address_1") %>' />
                </td>
                <td>
                    <asp:Label ID="Address_2Label" runat="server" Text='<%# Eval("Address_2") %>' />
                </td>
                <td>
                    <asp:Label ID="Phone_NumberLabel" runat="server" Text='<%# Eval("Phone_Number") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=PRESTONEYRE\SQLEXPRESS;Initial Catalog=internshipLDSBC;Persist Security Info=True;User ID=internUser;Password=ldsbc" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Address1], [CompanyName], [Address2], [PhoneNumber], [Description] FROM [Company]"></asp:SqlDataSource>

</asp:Content>
