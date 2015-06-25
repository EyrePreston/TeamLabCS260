<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF;color: #284775;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            JobTitle:
            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
            <br />
            [CompanyID:
            <asp:Label ID="_CompanyIDLabel" runat="server" Text='<%# Eval("[[CompanyID]") %>' />
            <br />
            Department:
            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
            <br />
            JobDescription:
            <asp:Label ID="JobDescriptionLabel" runat="server" Text='<%# Eval("JobDescription") %>' />
            <br />
            Length:
            <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("Length") %>' />
            <br />
            ContactPerson:
            <asp:Label ID="ContactPersonLabel" runat="server" Text='<%# Eval("ContactPerson") %>' />
            <br />
            <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            JobTitle:
            <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
            <br />
            [CompanyID:
            <asp:TextBox ID="_CompanyIDTextBox" runat="server" Text='<%# Bind("[[CompanyID]") %>' />
            <br />
            Department:
            <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
            <br />
            JobDescription:
            <asp:TextBox ID="JobDescriptionTextBox" runat="server" Text='<%# Bind("JobDescription") %>' />
            <br />
            Length:
            <asp:TextBox ID="LengthTextBox" runat="server" Text='<%# Bind("Length") %>' />
            <br />
            ContactPerson:
            <asp:TextBox ID="ContactPersonTextBox" runat="server" Text='<%# Bind("ContactPerson") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br />
            <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">JobTitle:
            <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
            <br />
            [CompanyID:
            <asp:TextBox ID="_CompanyIDTextBox" runat="server" Text='<%# Bind("[[CompanyID]") %>' />
            <br />
            Department:
            <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
            <br />
            JobDescription:
            <asp:TextBox ID="JobDescriptionTextBox" runat="server" Text='<%# Bind("JobDescription") %>' />
            <br />
            Length:
            <asp:TextBox ID="LengthTextBox" runat="server" Text='<%# Bind("Length") %>' />
            <br />
            ContactPerson:
            <asp:TextBox ID="ContactPersonTextBox" runat="server" Text='<%# Bind("ContactPerson") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF;color: #333333;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            JobTitle:
            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
            <br />
            [CompanyID:
            <asp:Label ID="_CompanyIDLabel" runat="server" Text='<%# Eval("[[CompanyID]") %>' />
            <br />
            Department:
            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
            <br />
            JobDescription:
            <asp:Label ID="JobDescriptionLabel" runat="server" Text='<%# Eval("JobDescription") %>' />
            <br />
            Length:
            <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("Length") %>' />
            <br />
            ContactPerson:
            <asp:Label ID="ContactPersonLabel" runat="server" Text='<%# Eval("ContactPerson") %>' />
            <br />
            <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            JobTitle:
            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
            <br />
            [CompanyID:
            <asp:Label ID="_CompanyIDLabel" runat="server" Text='<%# Eval("[[CompanyID]") %>' />
            <br />
            Department:
            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
            <br />
            JobDescription:
            <asp:Label ID="JobDescriptionLabel" runat="server" Text='<%# Eval("JobDescription") %>' />
            <br />
            Length:
            <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("Length") %>' />
            <br />
            ContactPerson:
            <asp:Label ID="ContactPersonLabel" runat="server" Text='<%# Eval("ContactPerson") %>' />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT * FROM [Internship(Job)]" InsertCommand="INSERT INTO [Internship(Job)] ([JobTitle], [[CompanyID], [Department], [JobDescription], [Length], [ContactPerson]) VALUES (@JobTitle, @column1, @Department, @JobDescription, @Length, @ContactPerson)" UpdateCommand="UPDATE [Internship(Job)] SET [JobTitle] = @JobTitle, [[CompanyID] = @column1, [Department] = @Department, [JobDescription] = @JobDescription, [Length] = @Length, [ContactPerson] = @ContactPerson WHERE [ID] = @ID" DeleteCommand="DELETE FROM [Internship(Job)] WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="column1" Type="Int32" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="JobDescription" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="column1" Type="Int32" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="JobDescription" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

