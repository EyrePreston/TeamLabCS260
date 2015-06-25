<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF;color: #284775;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            JobTitle:
            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
            <br />
            Department:
            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
            <br />
            JobDescription:
            <asp:Label ID="JobDescriptionLabel" runat="server" Text='<%# Eval("JobDescription") %>' />
            <br />
            ContactPerson:
            <asp:Label ID="ContactPersonLabel" runat="server" Text='<%# Eval("ContactPerson") %>' />
            <br />
            Length:
            <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("Length") %>' />
            <br />
            column1:
            <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            JobTitle:
            <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
            <br />
            Department:
            <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
            <br />
            JobDescription:
            <asp:TextBox ID="JobDescriptionTextBox" runat="server" Text='<%# Bind("JobDescription") %>' />
            <br />
            ContactPerson:
            <asp:TextBox ID="ContactPersonTextBox" runat="server" Text='<%# Bind("ContactPerson") %>' />
            <br />
            Length:
            <asp:TextBox ID="LengthTextBox" runat="server" Text='<%# Bind("Length") %>' />
            <br />
            column1:
            <asp:TextBox ID="column1TextBox" runat="server" Text='<%# Bind("column1") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">JobTitle:
            <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
            <br />Department:
            <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
            <br />JobDescription:
            <asp:TextBox ID="JobDescriptionTextBox" runat="server" Text='<%# Bind("JobDescription") %>' />
            <br />ContactPerson:
            <asp:TextBox ID="ContactPersonTextBox" runat="server" Text='<%# Bind("ContactPerson") %>' />
            <br />Length:
            <asp:TextBox ID="LengthTextBox" runat="server" Text='<%# Bind("Length") %>' />
            <br />column1:
            <asp:TextBox ID="column1TextBox" runat="server" Text='<%# Bind("column1") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF;color: #333333;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            JobTitle:
            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
            <br />
            Department:
            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
            <br />
            JobDescription:
            <asp:Label ID="JobDescriptionLabel" runat="server" Text='<%# Eval("JobDescription") %>' />
            <br />
            ContactPerson:
            <asp:Label ID="ContactPersonLabel" runat="server" Text='<%# Eval("ContactPerson") %>' />
            <br />
            Length:
            <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("Length") %>' />
            <br />
            column1:
            <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            JobTitle:
            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
            <br />
            Department:
            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
            <br />
            JobDescription:
            <asp:Label ID="JobDescriptionLabel" runat="server" Text='<%# Eval("JobDescription") %>' />
            <br />
            ContactPerson:
            <asp:Label ID="ContactPersonLabel" runat="server" Text='<%# Eval("ContactPerson") %>' />
            <br />
            Length:
            <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("Length") %>' />
            <br />
            column1:
            <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT [ID], [JobTitle], [Department], [JobDescription], [ContactPerson], [Length], [[CompanyID]  FROM [Internship(Job)]" InsertCommand="INSERT INTO [Internship(Job)] ([JobTitle], [Department], [JobDescription], [ContactPerson], [Length], [[CompanyID]) VALUES (@JobTitle, @Department, @JobDescription, @ContactPerson, @Length, @column1)" UpdateCommand="UPDATE [Internship(Job)] SET [JobTitle] = @JobTitle, [Department] = @Department, [JobDescription] = @JobDescription, [ContactPerson] = @ContactPerson, [Length] = @Length, [[CompanyID] = @column1 WHERE [ID] = @ID" DeleteCommand="DELETE FROM [Internship(Job)] WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="JobDescription" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="CompanyID" Type="Int32" DefaultValue="1" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="JobDescription" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="CompanyID" Type="Int32" DefaultValue="1" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

