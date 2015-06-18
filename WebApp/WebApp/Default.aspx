<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        <AlternatingItemTemplate>
            <tr style="">
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
            <tr style="">
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
            <table runat="server" style="">
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
            <tr style="">
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
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">Company_Name</th>
                                <th runat="server">Address_1</th>
                                <th runat="server">Address_2</th>
                                <th runat="server">Phone_Number</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT [Company Name] AS Company_Name, [Address 1] AS Address_1, [Address 2] AS Address_2, [Phone Number] AS Phone_Number FROM [Company]"></asp:SqlDataSource>
</asp:Content>
