<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rateIntern.aspx.cs" Inherits="WebApp.internshipEntry" MasterPageFile="~/Site.Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
        
    
    <section id="formCenter" class="formCenter">
           <div >
 
           <br />
            What Internship is this for?
               <br />
            <asp:TextBox ID="internshipName" runat="server" OnTextChanged="internshipName_TextChanged" Width="172px" CssClass="form-control" Height="34px"></asp:TextBox>
           </div>
           <div >
            <br />
            Students Name?
            <br />
            <asp:TextBox ID="studentName" runat="server" OnTextChanged="studentName_TextChanged" Width="170px" CssClass="form-control"></asp:TextBox>
            </div>
            
               
            <div >
               Attendance? 
                <br />
               <asp:TextBox ID="Attendance" runat="server"  Width="170px"></asp:TextBox> 

            </div>

            <div >
               Value Statement  
                <br />
               <asp:TextBox ID="valueStatement" runat="server"  Width="170px" ></asp:TextBox> 

            </div>

            <div >
               Recommendation / Summary of the Internship 
                <br />
               <asp:TextBox ID="recommendation" runat="server"  Width="170px" ></asp:TextBox> 

            </div>

            <div >
               Suggestions for improvement?  
                <br />
               <asp:TextBox ID="suggestions" runat="server"  Width="170px"></asp:TextBox> 

            </div>

            <div class="form-group">
               Was a Job offer extended? 
                <br /> 
                <asp:TextBox ID="jobExtended" runat="server" Width="170px"></asp:TextBox>
               
            </div>

            <div class="form-group">
                Did Internship End Early?
                <br />
                <asp:TextBox ID="endEarly" runat="server" Width="170px" Text="If So Why?"></asp:TextBox>
            </div>

            <div class="form-group">
            <br />
            Comments
            <br />
            <asp:TextBox ID="comments" runat="server" Height="100px" OnTextChanged="comments_TextChanged" Width="220px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
        
            
            </div>
        </section>                                 
</asp:Content>
