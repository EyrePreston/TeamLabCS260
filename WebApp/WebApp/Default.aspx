<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    
    <asp:Panel ID="Panel1" runat="server">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                <span style="background-color: #FFF8DC;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Job Title:
                <asp:Label ID="Job_TitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
                <br />
                CompanyID:
                <asp:Label ID="CompanyIDLabel" runat="server" Text='<%# Eval("CompanyID") %>' />
                <br />
                Postion:
                <asp:Label ID="PostionLabel" runat="server" Text='<%# Eval("Postion") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                StartDate:
                <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                <br />
                EndDate:
                <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                <br />
                    
                   <asp:Panel ID="Button" runat="server" HorizontalAlign="Right" >
                   
                   <asp:Button ID="ApplyButton" runat="server" Text="Apply" OnClick="ListView1_SelectedIndexChanged" />
                    </asp:Panel>
                ContactName:
                <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Eval("ContactName") %>' />
                <br />
                ContactPhone:
                <asp:Label ID="ContactPhoneLabel" runat="server" Text='<%# Eval("ContactPhone") %>' />
                <br />
                ContactEmail:
                <asp:Label ID="ContactEmailLabel" runat="server" Text='<%# Eval("ContactEmail") %>' />
                <br />
                Status:
                <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                <br />
                Openings:
                <asp:Label ID="OpeningsLabel" runat="server" Text='<%# Eval("Openings") %>' />
                <br />
                <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #008A8C; color: #FFFFFF;">ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Job Title:
                <asp:TextBox ID="Job_TitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                <br />
                CompanyID:
                <asp:TextBox ID="CompanyIDTextBox" runat="server" Text='<%# Bind("CompanyID") %>' />
                <br />
                Postion:
                <asp:TextBox ID="PostionTextBox" runat="server" Text='<%# Bind("Postion") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                StartDate:
                <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
                <br />
                EndDate:
                <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
                <br />
                ContactName:
                <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                <br />
                ContactPhone:
                <asp:TextBox ID="ContactPhoneTextBox" runat="server" Text='<%# Bind("ContactPhone") %>' />
                <br />
                ContactEmail:
                <asp:TextBox ID="ContactEmailTextBox" runat="server" Text='<%# Bind("ContactEmail") %>' />
                <br />
                Status:
                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                <br />
                Openings:
                <asp:TextBox ID="OpeningsTextBox" runat="server" Text='<%# Bind("Openings") %>' />
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
                <span style="">
                Job Title:
                <asp:TextBox ID="Job_TitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                <br />
                CompanyID:
                <asp:TextBox ID="CompanyIDTextBox" runat="server" Text='<%# Bind("CompanyID") %>' />
                <br />
                Postion:
                <asp:TextBox ID="PostionTextBox" runat="server" Text='<%# Bind("Postion") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                StartDate:
                <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
                <br />
                EndDate:
                <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
                <br />
                ContactName:
                <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                <br />
                ContactPhone:
                <asp:TextBox ID="ContactPhoneTextBox" runat="server" Text='<%# Bind("ContactPhone") %>' />
                <br />
                ContactEmail:
                <asp:TextBox ID="ContactEmailTextBox" runat="server" Text='<%# Bind("ContactEmail") %>' />
                <br />
                Status:
                <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                <br />
                Openings:
                <asp:TextBox ID="OpeningsTextBox" runat="server" Text='<%# Bind("Openings") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #DCDCDC; color: #000000;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Job Title:
                <asp:Label ID="Job_TitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
                <br />
                CompanyID:
                <asp:Label ID="CompanyIDLabel" runat="server" Text='<%# Eval("CompanyID") %>' />
                <br />
                Postion:
                <asp:Label ID="PostionLabel" runat="server" Text='<%# Eval("Postion") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                StartDate:
                <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                <br />
                EndDate:
                <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                <br />
                    <asp:Panel ID="Button" runat="server" HorizontalAlign="Right" >
                   
                   <asp:Button ID="ApplyButton" runat="server" Text="Apply" OnClick="ListView1_SelectedIndexChanged" />
                    </asp:Panel>
                ContactName:
                <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Eval("ContactName") %>' />
                <br />
                ContactPhone:
                <asp:Label ID="ContactPhoneLabel" runat="server" Text='<%# Eval("ContactPhone") %>' />
                <br />
                ContactEmail:
                <asp:Label ID="ContactEmailLabel" runat="server" Text='<%# Eval("ContactEmail") %>' />
                <br />
                Status:
                <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                <br />
                Openings:
                <asp:Label ID="OpeningsLabel" runat="server" Text='<%# Eval("Openings") %>' />
                <br />
                <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Job Title:
                <asp:Label ID="Job_TitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' />
                <br />
                CompanyID:
                <asp:Label ID="CompanyIDLabel" runat="server" Text='<%# Eval("CompanyID") %>' />
                <br />
                Postion:
                <asp:Label ID="PostionLabel" runat="server" Text='<%# Eval("Postion") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                StartDate:
                <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                <br />
                EndDate:
                <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                <br />
                ContactName:
                <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Eval("ContactName") %>' />
                <br />
                ContactPhone:
                <asp:Label ID="ContactPhoneLabel" runat="server" Text='<%# Eval("ContactPhone") %>' />
                <br />
                ContactEmail:
                <asp:Label ID="ContactEmailLabel" runat="server" Text='<%# Eval("ContactEmail") %>' />
                <br />
                Status:
                <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                <br />
                Openings:
                <asp:Label ID="OpeningsLabel" runat="server" Text='<%# Eval("Openings") %>' />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="false">
        <asp:FormView runat="server" Height="161px" Width="184px" >
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">
                Studnts Name:
                <asp:Label ID="IDLabel" runat="server"  />
                <br />
                <br />
                Students ID: 
                <asp:Label ID="JobTitleLabel" runat="server" />
                <br />
                <br />
                Strengths
                <asp:Label ID="_CompanyIDLabel" runat="server" />
                <br />
                
                <asp:Button ID="NewButton" runat="server" CommandName="New" Text="New" />
                </span>
            </ItemTemplate>

            <InsertItemTemplate>
                <span style="background-color: blue">
                Students Name:
                <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                <br />
                Students ID:
                <asp:TextBox ID="_CompanyIDTextBox" runat="server" Text='<%# Bind("CompanyID") %>' />
                <br />
                Strengths:
                <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
                <br />
                
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>


            </InsertItemTemplate>



        </asp:FormView>


    </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT * FROM [Job]" ProviderName="System.Data.SqlClient">
    </asp:SqlDataSource>
    <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString2 %>" SelectCommand="SELECT * FROM [STUDENT]"></asp:SqlDataSource>--%>
</asp:Content>

