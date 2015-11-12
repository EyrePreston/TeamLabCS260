<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApplicationForm.aspx.cs" Inherits="WebApp.ApplicationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style7 {
            width: 139px;
        }
        .auto-style8 {
            width: 520px;
        }
        .auto-style9 {
            width: 1103px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style7">Full Name</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtName" runat="server" Width="350px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name Required" ForeColor="Red">The field Name is required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Email</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtEmail" runat="server" Width="350px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Required Email" ForeColor="Red" ControlToValidate="txtEmail">The field Email is required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Phone Number</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPhone" runat="server" Width="350px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td>

                </td>


            </tr>




            <tr>
                <td class="auto-style7">Attach Resume</td>
                <td class="auto-style8">
                    <asp:FileUpload ID="fileResume" runat="server" Width="520px" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="lblJobTitle" runat="server" ></asp:Label>
                    <br />
                    <asp:Label ID="lblCompany" runat="server" ></asp:Label>
                    <br />
                    <asp:Label ID="lblPosition" runat="server" ></asp:Label>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="150px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="150px" />
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT * FROM [Job]" ProviderName="System.Data.SqlClient">
        </asp:SqlDataSource>

    </div>

</asp:Content>