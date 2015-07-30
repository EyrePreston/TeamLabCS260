<%@ Page Title="Company Name " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompnayHomePage.aspx.cs" Inherits="WebApp.CompnayHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server" >
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
   
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server" Visible="true">
    <asp:FormView ID="FormView2" runat="server" CellPadding="4" ForeColor="#333333" DataSourceID="SqlDataSource1" >
        
        <EditRowStyle BackColor="#999999" />
        
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
       <ItemTemplate>
              
             <asp:label runat="server"  />
           
                
           <asp:label runat="server"  />
         
              
           <asp:label runat="server"  />
          
              
             <asp:label runat="server" />
          
             <asp:label runat="server"/>
           
             <asp:label runat="server" />
           
           
             <asp:label runat="server" />
         
           
             <asp:label runat="server" />
           
          
             <asp:label runat="server" />
          
           
             <asp:label runat="server" />
          
           
             <asp:label runat="server"/>
          
           
             <asp:label runat="server" />
           
           <asp:Button ID="NewButton" runat="server" Text="Post a Internship" CommandName="New" />

        </ItemTemplate>
       <InsertItemTemplate>
                <span style="background-color: #FFF8DC;">
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
                <ajaxToolkit:CalendarExtender ID="StartDateTextBox_CalendarExtender" runat="server" TargetControlID="StartDateTextBox" Format="MMMM d, yyyy" />
                <br />
                EndDate:
                <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
                <ajaxToolkit:CalendarExtender ID="EndDateTextBox_CalendarExtender" runat="server" TargetControlID="EndDateTextBox" Format="MMMM d, yyyy" />
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
                <br />
                Category:<asp:DropDownList ID="DropDownList1" SelectedValue='<%# Bind("Category") %>' runat="server">
                    <asp:ListItem>Category</asp:ListItem>
                    <asp:ListItem>Accounting</asp:ListItem>
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Information Technology</asp:ListItem>
                    <asp:ListItem>Medical</asp:ListItem>
                    <asp:ListItem>Social</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />

                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>



            
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
    

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="700px" AutoGenerateColumns="False" DataKeyNames="ID" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="Job Title" />
            <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" SortExpression="CompanyID" />
            <asp:BoundField DataField="Postion" HeaderText="Postion" SortExpression="Postion" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
            <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
            <asp:BoundField DataField="ContactPhone" HeaderText="ContactPhone" SortExpression="ContactPhone" />
            <asp:BoundField DataField="ContactEmail" HeaderText="ContactEmail" SortExpression="ContactEmail" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="Openings" HeaderText="Openings" SortExpression="Openings" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" DeleteCommand="DELETE FROM [Job] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Job] ([JobTitle], [CompanyID], [Postion], [Description], [StartDate], [EndDate], [ContactName], [ContactPhone], [ContactEmail], [Status], [Openings], [Category]) VALUES (@JobTitle, @CompanyID, @Postion, @Description, @StartDate, @EndDate, @ContactName, @ContactPhone, @ContactEmail, @Status, @Openings, @Category)" SelectCommand="SELECT * FROM [Job]" UpdateCommand="UPDATE [Job] SET [JobTitle] = @JobTitle, [CompanyID] = @CompanyID, [Postion] = @Postion, [Description] = @Description, [StartDate] = @StartDate, [EndDate] = @EndDate, [ContactName] = @ContactName, [ContactPhone] = @ContactPhone, [ContactEmail] = @ContactEmail, [Status] = @Status, [Openings] = @Openings, [Category] = @Category WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32"/>

        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="JobTitle" Type="String"  />
            <asp:Parameter Name="CompanyID" Type="Int32" />
            <asp:Parameter Name="Postion" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="StartDate" DbType="Date" />
            <asp:Parameter Name="EndDate" DbType="Date" />
            <asp:Parameter Name="ContactName" Type="String" />
            <asp:Parameter Name="ContactPhone" Type="String" />
            <asp:Parameter Name="ContactEmail" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Openings" Type="Int32" />
            <asp:Parameter Name="Category" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="JobTitle" Type="String" />
            <asp:Parameter Name="CompanyID" Type="Int32" />
            <asp:Parameter Name="Postion" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="StartDate" DbType="Date" />
            <asp:Parameter Name="EndDate" DbType="Date" />
            <asp:Parameter Name="ContactName" Type="String" />
            <asp:Parameter Name="ContactPhone" Type="String" />
            <asp:Parameter Name="ContactEmail" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Openings" Type="Int32" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
