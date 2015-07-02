<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompnayHomePage.aspx.cs" Inherits="WebApp.CompnayHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table>
                    <tr><td style="text-align: right"><b>Job Title:</b></td></tr>
                   <tr> <td style="text-align: right"><b>Company ID:</b></td> </tr>
                    <tr><td style="text-align: right"><b>Job Department:</b></td></tr>  
                    <tr><td style="text-align: right"><b>Job Description:</b></td></tr>  
                    <tr><td style="text-align: right"><b>Contact Person:</b></td></tr>  
                    <tr><td style="text-align: right"><b>Length</b></td></tr>

                <tr><td><asp:LinkButton ID="NewButton"
                                        Text="New"
                                        CommandName="New"
                                        RunAt="server"/></td></tr>
            </table>
        </ItemTemplate>
        
        <InsertItemTemplate>
             <table>
                <tr><td style="text-align: right"><b>Job Title:</b></td>
                      <td><asp:TextBox ID="txtEmployeeID1"
                                         Text='<%# Bind("JobTitle") %>'
                                         RunAt="Server" /></td></tr>
                 
                 
                    <tr><td style="text-align: right"><b>Company ID:</b></td>
                        <td><asp:TextBox ID="txtFirstName1"
                                         Text='<%# Bind("Department") %>'
                                         RunAt="Server" /></td></tr>
 
                    <tr><td style="text-align: right"><b>Job Department:</b></td>
                        <td><asp:TextBox ID="txtLastName1"
                                         Text='<%# Bind("JobDescription") %>'
                                         RunAt="Server" /></td></tr>
                                        
                    <tr><td style="text-align: right"><b>Contact Person:</b></td>
                        <td><asp:TextBox ID="txtAddress1"
                                         Text='<%# Bind("ContactPerson") %>'
                                         RunAt="Server" /></td></tr>
                                        
                    <tr><td style="text-align: right"><b>Length:</b></td>
                        <td><asp:TextBox ID="txtDesignation1"
                                         Text='<%# Bind("Length") %>'
                                         RunAt="Server" /></td></tr>                                         
 
                    <tr>
                      <td colspan="2">
                        <asp:LinkButton ID="InsertButton"
                                        Text="Insert"
                                        CommandName="Insert"
                                        RunAt="server"/>
                          &nbsp;
                        <asp:LinkButton ID="CancelInsertButton"
                                        Text="Cancel"
                                        CommandName="Cancel"
                                        RunAt="server"/>
                      </td>
                    </tr>
                  </table>                
                </InsertItemTemplate>


            
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="752px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" DeleteCommand="DELETE FROM [Internship(Job)] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Internship(Job)] ([JobTitle], [CompanyID], [Department], [JobDescription], [Length], [ContactPerson]) VALUES (@JobTitle, @CompanyId, @Department, @JobDescription, @Length, @ContactPerson)" SelectCommand="SELECT * FROM [Internship(Job)]" UpdateCommand="UPDATE [Internship(Job)] SET [JobTitle] = @JobTitle, [CompanyID] = @CompanyId, [Department] = @Department, [JobDescription] = @JobDescription, [Length] = @Length, [ContactPerson] = @ContactPerson WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="CompanyId" Type="Int32" DefaultValue="9" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="JobDescription" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="CompanyId" Type="Int32" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="JobDescription" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
