<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ratingTable.aspx.cs" Inherits="WebApp.ratingTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FeedbackID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="FeedbackID" HeaderText="FeedbackID" InsertVisible="False" ReadOnly="True" SortExpression="FeedbackID" />
        <asp:BoundField DataField="Job_ID" HeaderText="Job_ID" SortExpression="Job_ID" />
        <asp:BoundField DataField="Com_ID" HeaderText="Com_ID" SortExpression="Com_ID" />
        <asp:BoundField DataField="InternshipName" HeaderText="InternshipName" SortExpression="InternshipName" />
        <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
        <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
        <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT * FROM [Rating]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Rating] WHERE [FeedbackID] = @original_FeedbackID AND (([Job_ID] = @original_Job_ID) OR ([Job_ID] IS NULL AND @original_Job_ID IS NULL)) AND (([Com_ID] = @original_Com_ID) OR ([Com_ID] IS NULL AND @original_Com_ID IS NULL)) AND (([InternshipName] = @original_InternshipName) OR ([InternshipName] IS NULL AND @original_InternshipName IS NULL)) AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([Grade] = @original_Grade) OR ([Grade] IS NULL AND @original_Grade IS NULL)) AND (([Comments] = @original_Comments) OR ([Comments] IS NULL AND @original_Comments IS NULL))" InsertCommand="INSERT INTO [Rating] ([Job_ID], [Com_ID], [InternshipName], [StudentName], [Grade], [Comments]) VALUES (@Job_ID, @Com_ID, @InternshipName, @StudentName, @Grade, @Comments)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Rating] SET [Job_ID] = @Job_ID, [Com_ID] = @Com_ID, [InternshipName] = @InternshipName, [StudentName] = @StudentName, [Grade] = @Grade, [Comments] = @Comments WHERE [FeedbackID] = @original_FeedbackID AND (([Job_ID] = @original_Job_ID) OR ([Job_ID] IS NULL AND @original_Job_ID IS NULL)) AND (([Com_ID] = @original_Com_ID) OR ([Com_ID] IS NULL AND @original_Com_ID IS NULL)) AND (([InternshipName] = @original_InternshipName) OR ([InternshipName] IS NULL AND @original_InternshipName IS NULL)) AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([Grade] = @original_Grade) OR ([Grade] IS NULL AND @original_Grade IS NULL)) AND (([Comments] = @original_Comments) OR ([Comments] IS NULL AND @original_Comments IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_FeedbackID" Type="Int32" />
        <asp:Parameter Name="original_Job_ID" Type="Int32" />
        <asp:Parameter Name="original_Com_ID" Type="Int32" />
        <asp:Parameter Name="original_InternshipName" Type="String" />
        <asp:Parameter Name="original_StudentName" Type="String" />
        <asp:Parameter Name="original_Grade" Type="String" />
        <asp:Parameter Name="original_Comments" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Job_ID" Type="Int32" />
        <asp:Parameter Name="Com_ID" Type="Int32" />
        <asp:Parameter Name="InternshipName" Type="String" />
        <asp:Parameter Name="StudentName" Type="String" />
        <asp:Parameter Name="Grade" Type="String" />
        <asp:Parameter Name="Comments" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Job_ID" Type="Int32" />
        <asp:Parameter Name="Com_ID" Type="Int32" />
        <asp:Parameter Name="InternshipName" Type="String" />
        <asp:Parameter Name="StudentName" Type="String" />
        <asp:Parameter Name="Grade" Type="String" />
        <asp:Parameter Name="Comments" Type="String" />
        <asp:Parameter Name="original_FeedbackID" Type="Int32" />
        <asp:Parameter Name="original_Job_ID" Type="Int32" />
        <asp:Parameter Name="original_Com_ID" Type="Int32" />
        <asp:Parameter Name="original_InternshipName" Type="String" />
        <asp:Parameter Name="original_StudentName" Type="String" />
        <asp:Parameter Name="original_Grade" Type="String" />
        <asp:Parameter Name="original_Comments" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
