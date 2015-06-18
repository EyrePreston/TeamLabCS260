<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
<<<<<<< Updated upstream
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
=======
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="background-color: #FFFFFF;color: #284775;">Address1:
                <asp:Label ID="Address1Label" runat="server" Text='<%# Eval("Address1") %>' />
                <br />
                CompanyName:
                <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                <br />
                Address2:
                <asp:Label ID="Address2Label" runat="server" Text='<%# Eval("Address2") %>' />
                <br />
                PhoneNumber:
                <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #999999;">Address1:
                <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' />
                <br />
                CompanyName:
                <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                <br />
                Address2:
                <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
                <br />
                PhoneNumber:
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
>>>>>>> Stashed changes
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">Address1:
                <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' />
                <br />
                CompanyName:
                <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                <br />
                Address2:
                <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
                <br />
                PhoneNumber:
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
<<<<<<< Updated upstream
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
=======
            <li style="background-color: #E0FFFF;color: #333333;">Address1:
                <asp:Label ID="Address1Label" runat="server" Text='<%# Eval("Address1") %>' />
                <br />
                CompanyName:
                <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                <br />
                Address2:
                <asp:Label ID="Address2Label" runat="server" Text='<%# Eval("Address2") %>' />
                <br />
                PhoneNumber:
                <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">Address1:
                <asp:Label ID="Address1Label" runat="server" Text='<%# Eval("Address1") %>' />
                <br />
                CompanyName:
                <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                <br />
                Address2:
                <asp:Label ID="Address2Label" runat="server" Text='<%# Eval("Address2") %>' />
                <br />
                PhoneNumber:
                <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
            </li>
>>>>>>> Stashed changes
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT [Company Name] AS Company_Name, [Address 1] AS Address_1, [Address 2] AS Address_2, [Phone Number] AS Phone_Number FROM [Company]"></asp:SqlDataSource>
</asp:Content>
