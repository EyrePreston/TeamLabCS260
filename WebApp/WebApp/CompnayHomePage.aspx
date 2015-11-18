<%@ Page Title="Company Name " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="~/CompnayHomePage.aspx.cs" CodeBehind="~/CompnayHomePage.aspx.cs" Inherits="WebApp.CompnayHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server" >
    
 
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
   
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server" >

   <asp:Panel runat="server" ID="CompanyPanel" CssClass="content-wrapper">
    <asp:Label runat="server" ID="CompanyTitle" Text='<%# Bind("CompanyID") %>'></asp:Label>

    

    <asp:FormView ID="FormView2" runat="server" CellPadding="4" ForeColor="#333333" DataSourceID="SqlDataSource1" DefaultMode="Insert" >

        
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
           
           <asp:Button ID="NewButton" runat="server" Text="Post a Internship" CommandName="New" class="btn btn-primary" />

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
                <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender1" runat="server" TargetControlID="ContactPhoneTextBox" Mask="(999)999-9999" />
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
    

    <asp:Button ID="EmailButton" runat="server" CommandName="Email" Text="Email Career Department" CssClass="Email Button" />
   <asp:Button ID="rateIntern" runat="server" CommandName="link" Text="Rate Intern" OnClick="rateIntern_Click" class="btn btn-primary"></asp:Button>
   

&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="700px" AutoGenerateColumns="False" DataKeyNames="ID" >

        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" DeleteCommand="DELETE FROM [Job] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Job] ([JobTitle], [CompanyID], [Postion], [Description], [StartDate], [EndDate], [ContactName], [ContactPhone], [ContactEmail], [Status], [Openings], [Category]) VALUES (@JobTitle, @CompanyID, @Postion, @Description, @StartDate, @EndDate, @ContactName, @ContactPhone, @ContactEmail, @Status, @Openings, @Category)" SelectCommand="SELECT * FROM [Job] " UpdateCommand="UPDATE [Job] SET [JobTitle] = @JobTitle, [CompanyID] = @CompanyID, [Postion] = @Postion, [Description] = @Description, [StartDate] = @StartDate, [EndDate] = @EndDate, [ContactName] = @ContactName, [ContactPhone] = @ContactPhone, [ContactEmail] = @ContactEmail, [Status] = @Status, [Openings] = @Openings, [Category] = @Category WHERE [ID] = @ID" ProviderName="System.Data.SqlClient">
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

</asp:Panel>
    <asp:Panel ID="internPanel" runat="server" Visible="false">

        <asp:FormView runat="server" ID="rateInternForm" DataSourceID="SqlDataSource2" Height="250px" Width="195px" DataKeyNames="FeedbackID" DefaultMode="Insert">
    <EditItemTemplate>
        FeedbackID:
        <asp:Label ID="FeedbackIDLabel1" runat="server" Text='<%# Eval("FeedbackID") %>' />
        <br />
            Job_ID:
            <asp:TextBox ID="Job_IDTextBox" runat="server" Text='<%# Bind("Job_ID") %>' />
        <br />
        Com_ID:
        <asp:TextBox ID="Com_IDTextBox" runat="server" Text='<%# Bind("Com_ID") %>' />
        <br />
            InternshipName:
            <asp:TextBox ID="InternshipNameTextBox" runat="server" Text='<%# Bind("InternshipName") %>' />
        <br />
        StudentName:
        <asp:TextBox ID="StudentNameTextBox" runat="server" Text='<%# Bind("StudentName") %>' />
        <br />
            Attendance:
            <asp:TextBox ID="AttendanceTextBox" runat="server" Text='<%# Bind("Attendance") %>' />
        <br />
            Comments:
            <asp:TextBox ID="CommentsTextBox" runat="server" Text='<%# Bind("Comments") %>' />
        <br />
            ValueStatement:
            <asp:TextBox ID="ValueStatementTextBox" runat="server" Text='<%# Bind("ValueStatement") %>' />
        <br />
            Recomendation:
            <asp:TextBox ID="RecomendationTextBox" runat="server" Text='<%# Bind("Recomendation") %>' />
        <br />
            Suggestions:
            <asp:TextBox ID="SuggestionsTextBox" runat="server" Text='<%# Bind("Suggestions") %>' />
        <br />
            JobExtended:
            <asp:TextBox ID="JobExtendedTextBox" runat="server" Text='<%# Bind("JobExtended") %>' />
        <br />
            EndEarly:
            <asp:TextBox ID="EndEarlyTextBox" runat="server" Text='<%# Bind("EndEarly") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
            Job_ID:
            <asp:TextBox ID="Job_IDTextBox" runat="server" Text='<%# Bind("Job_ID") %>' />
        <br />
            Com_ID:
            <asp:TextBox ID="Com_IDTextBox" runat="server" Text='<%# Bind("Com_ID") %>' />
        <br />
            InternshipName:
            <asp:TextBox ID="InternshipNameTextBox" runat="server" Text='<%# Bind("InternshipName") %>' />
        <br />
            StudentName:
            <asp:TextBox ID="StudentNameTextBox" runat="server" Text='<%# Bind("StudentName") %>' />
        <br />
            Attendance:
            <asp:TextBox ID="AttendanceTextBox" runat="server" Text='<%# Bind("Attendance") %>' />
        <br />
            Comments:
            <asp:TextBox ID="CommentsTextBox" runat="server" Text='<%# Bind("Comments") %>' />
        <br />
            ValueStatement:
            <asp:TextBox ID="ValueStatementTextBox" runat="server" Text='<%# Bind("ValueStatement") %>' />
        <br />
            Recomendation:
            <asp:TextBox ID="RecomendationTextBox" runat="server" Text='<%# Bind("Recomendation") %>' />
        <br />
            Suggestions:
            <asp:TextBox ID="SuggestionsTextBox" runat="server" Text='<%# Bind("Suggestions") %>' />
        <br />
            JobExtended:
            <asp:TextBox ID="JobExtendedTextBox" runat="server" Text='<%# Bind("JobExtended") %>' />
            <br />
            EndEarly:
            <asp:TextBox ID="EndEarlyTextBox" runat="server" Text='<%# Bind("EndEarly") %>' />
            <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" OnClick="InsertCancelButton_Click" />
    </InsertItemTemplate>
    <ItemTemplate>
            FeedbackID:
            <asp:Label ID="FeedbackIDLabel" runat="server" Text='<%# Eval("FeedbackID") %>'  />
        <br />
            Job_ID:
            <asp:Label ID="Job_IDLabel" runat="server" Text='<%# Bind("Job_ID") %>'  />
        <br />
            Com_ID:
            <asp:Label ID="Com_IDLabel" runat="server" Text='<%# Bind("Com_ID") %>'  />
        <br />
            InternshipName:
            <asp:Label ID="InternshipNameLabel" runat="server" Text='<%# Bind("InternshipName") %>'  />
        <br />
            StudentName:
            <asp:Label ID="StudentNameLabel" runat="server" Text='<%# Bind("StudentName") %>'  />
        <br />
            Attendance:
            <asp:Label ID="AttendanceLabel" runat="server" Text='<%# Bind("Attendance") %>' />
        <br />
            Comments:
            <asp:Label ID="CommentsLabel" runat="server" Text='<%# Bind("Comments") %>'  />
        <br />
            ValueStatement:
            <asp:Label ID="ValueStatementLabel" runat="server" Text='<%# Bind("ValueStatement") %>'  />
        <br />
            Recomendation:
            <asp:Label ID="RecomendationLabel" runat="server" Text='<%# Bind("Recomendation") %>'  />
        <br />
            Suggestions:
            <asp:Label ID="SuggestionsLabel" runat="server" Text='<%# Bind("Suggestions") %>' />
            <br />
            JobExtended:
            <asp:Label ID="JobExtendedLabel" runat="server" Text='<%# Bind("JobExtended") %>' />
            <br />
            EndEarly:
            <asp:Label ID="EndEarlyLabel" runat="server" Text='<%# Bind("EndEarly") %>' />
            <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>

    </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" InsertCommand="INSERT INTO [Rating] ([Job_ID], [Com_ID], [InternshipName], [StudentName], [Attendance], [Comments], [ValueStatement], [Recomendation], [Suggestions], [JobExtended], [EndEarly]) VALUES (@Job_ID, @Com_ID, @InternshipName, @StudentName, @Attendance, @Comments, @ValueStatement, @Recomendation, @Suggestions, @JobExtended, @EndEarly)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Rating]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Rating] WHERE [FeedbackID] = @original_FeedbackID AND (([Job_ID] = @original_Job_ID) OR ([Job_ID] IS NULL AND @original_Job_ID IS NULL)) AND (([Com_ID] = @original_Com_ID) OR ([Com_ID] IS NULL AND @original_Com_ID IS NULL)) AND (([InternshipName] = @original_InternshipName) OR ([InternshipName] IS NULL AND @original_InternshipName IS NULL)) AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([Attendance] = @original_Attendance) OR ([Attendance] IS NULL AND @original_Attendance IS NULL)) AND (([Comments] = @original_Comments) OR ([Comments] IS NULL AND @original_Comments IS NULL)) AND (([ValueStatement] = @original_ValueStatement) OR ([ValueStatement] IS NULL AND @original_ValueStatement IS NULL)) AND (([Recomendation] = @original_Recomendation) OR ([Recomendation] IS NULL AND @original_Recomendation IS NULL)) AND (([Suggestions] = @original_Suggestions) OR ([Suggestions] IS NULL AND @original_Suggestions IS NULL)) AND (([JobExtended] = @original_JobExtended) OR ([JobExtended] IS NULL AND @original_JobExtended IS NULL)) AND (([EndEarly] = @original_EndEarly) OR ([EndEarly] IS NULL AND @original_EndEarly IS NULL))" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Rating] SET [Job_ID] = @Job_ID, [Com_ID] = @Com_ID, [InternshipName] = @InternshipName, [StudentName] = @StudentName, [Attendance] = @Attendance, [Comments] = @Comments, [ValueStatement] = @ValueStatement, [Recomendation] = @Recomendation, [Suggestions] = @Suggestions, [JobExtended] = @JobExtended, [EndEarly] = @EndEarly WHERE [FeedbackID] = @original_FeedbackID AND (([Job_ID] = @original_Job_ID) OR ([Job_ID] IS NULL AND @original_Job_ID IS NULL)) AND (([Com_ID] = @original_Com_ID) OR ([Com_ID] IS NULL AND @original_Com_ID IS NULL)) AND (([InternshipName] = @original_InternshipName) OR ([InternshipName] IS NULL AND @original_InternshipName IS NULL)) AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([Attendance] = @original_Attendance) OR ([Attendance] IS NULL AND @original_Attendance IS NULL)) AND (([Comments] = @original_Comments) OR ([Comments] IS NULL AND @original_Comments IS NULL)) AND (([ValueStatement] = @original_ValueStatement) OR ([ValueStatement] IS NULL AND @original_ValueStatement IS NULL)) AND (([Recomendation] = @original_Recomendation) OR ([Recomendation] IS NULL AND @original_Recomendation IS NULL)) AND (([Suggestions] = @original_Suggestions) OR ([Suggestions] IS NULL AND @original_Suggestions IS NULL)) AND (([JobExtended] = @original_JobExtended) OR ([JobExtended] IS NULL AND @original_JobExtended IS NULL)) AND (([EndEarly] = @original_EndEarly) OR ([EndEarly] IS NULL AND @original_EndEarly IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_FeedbackID" Type="Int32" />
                    <asp:Parameter Name="original_Job_ID" Type="Int32" />
                    <asp:Parameter Name="original_Com_ID" Type="Int32" />
                    <asp:Parameter Name="original_InternshipName" Type="String" />
                    <asp:Parameter Name="original_StudentName" Type="String" />
                    <asp:Parameter Name="original_Attendance" Type="String" />
                    <asp:Parameter Name="original_Comments" Type="String" />
                    <asp:Parameter Name="original_ValueStatement" Type="String" />
                    <asp:Parameter Name="original_Recomendation" Type="String" />
                    <asp:Parameter Name="original_Suggestions" Type="String" />
                    <asp:Parameter Name="original_JobExtended" Type="String" />
                    <asp:Parameter Name="original_EndEarly" Type="String" />
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
                    <asp:Parameter Name="original_Job_ID" Type="Int32" />
                    <asp:Parameter Name="original_Com_ID" Type="Int32" />
                    <asp:Parameter Name="original_InternshipName" Type="String" />
                    <asp:Parameter Name="original_StudentName" Type="String" />
                    <asp:Parameter Name="original_Attendance" Type="String" />
                    <asp:Parameter Name="original_Comments" Type="String" />
                    <asp:Parameter Name="original_ValueStatement" Type="String" />
                    <asp:Parameter Name="original_Recomendation" Type="String" />
                    <asp:Parameter Name="original_Suggestions" Type="String" />
                    <asp:Parameter Name="original_JobExtended" Type="String" />
                    <asp:Parameter Name="original_EndEarly" Type="String" />
                </UpdateParameters>
        </asp:SqlDataSource>






    </asp:Panel>
</asp:Content>
