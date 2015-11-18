<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ratingTable.aspx.cs" Inherits="WebApp.ratingTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FeedbackID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="FeedbackID" HeaderText="FeedbackID" InsertVisible="False" ReadOnly="True" SortExpression="FeedbackID" />
        <asp:BoundField DataField="Job_ID" HeaderText="Job_ID" SortExpression="Job_ID" />
        <asp:BoundField DataField="Com_ID" HeaderText="Com_ID" SortExpression="Com_ID" />
        <asp:BoundField DataField="InternshipName" HeaderText="InternshipName" SortExpression="InternshipName" />
        <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
        <asp:BoundField DataField="Attendance" HeaderText="Attendance" SortExpression="Attendance" />
        <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
        <asp:BoundField DataField="ValueStatement" HeaderText="ValueStatement" SortExpression="ValueStatement" />
        <asp:BoundField DataField="Recomendation" HeaderText="Recomendation" SortExpression="Recomendation" />
        <asp:BoundField DataField="Suggestions" HeaderText="Suggestions" SortExpression="Suggestions" />
        <asp:BoundField DataField="JobExtended" HeaderText="JobExtended" SortExpression="JobExtended" />
        <asp:BoundField DataField="EndEarly" HeaderText="EndEarly" SortExpression="EndEarly" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" SelectCommand="SELECT * FROM [Rating]" DeleteCommand="DELETE FROM [Rating] WHERE [FeedbackID] = @original_FeedbackID" InsertCommand="INSERT INTO [Rating] ([Job_ID], [Com_ID], [InternshipName], [StudentName], [Attendance], [Comments], [ValueStatement], [Recomendation], [Suggestions], [JobExtended], [EndEarly]) VALUES (@Job_ID, @Com_ID, @InternshipName, @StudentName, @Attendance, @Comments, @ValueStatement, @Recomendation, @Suggestions, @JobExtended, @EndEarly)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Rating] SET [Job_ID] = @Job_ID, [Com_ID] = @Com_ID, [InternshipName] = @InternshipName, [StudentName] = @StudentName, [Attendance] = @Attendance, [Comments] = @Comments, [ValueStatement] = @ValueStatement, [Recomendation] = @Recomendation, [Suggestions] = @Suggestions, [JobExtended] = @JobExtended, [EndEarly] = @EndEarly WHERE [FeedbackID] = @original_FeedbackID" ProviderName="System.Data.SqlClient">
    <DeleteParameters>
        <asp:Parameter Name="original_FeedbackID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Job_ID" Type="Int32" />
        <asp:Parameter Name="Com_ID" Type="Int32" />
        <asp:Parameter Name="InternshipName" Type="String" />
        <asp:Parameter Name="StudentName" Type="String" />
        <asp:Parameter Name="Attendance" Type="String" />
        <asp:Parameter Name="Comments" Type="String" />
        <asp:Parameter Name="ValueStatement" Type="String" />
        <asp:Parameter Name="Recomendation" Type="String" />
        <asp:Parameter Name="Suggestions" Type="String" />
        <asp:Parameter Name="JobExtended" Type="String" />
        <asp:Parameter Name="EndEarly" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Job_ID" Type="Int32" />
        <asp:Parameter Name="Com_ID" Type="Int32" />
        <asp:Parameter Name="InternshipName" Type="String" />
        <asp:Parameter Name="StudentName" Type="String" />
        <asp:Parameter Name="Attendance" Type="String" />
        <asp:Parameter Name="Comments" Type="String" />
        <asp:Parameter Name="ValueStatement" Type="String" />
        <asp:Parameter Name="Recomendation" Type="String" />
        <asp:Parameter Name="Suggestions" Type="String" />
        <asp:Parameter Name="JobExtended" Type="String" />
        <asp:Parameter Name="EndEarly" Type="String" />
        <asp:Parameter Name="original_FeedbackID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
