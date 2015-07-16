<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="internshipEntry.aspx.cs" Inherits="WebApp.internshipEntry" MasterPageFile="~/Site.Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    
       
    
    
            <br />
            What Internship is this for?<br />
            <asp:TextBox ID="internshipName" runat="server" OnTextChanged="internshipName_TextChanged" Width="170px"></asp:TextBox>
<br />
            <br />
            Which Student?<br />
            <asp:TextBox ID="studentName" runat="server" OnTextChanged="studentName_TextChanged" Width="170px"></asp:TextBox>
            <br />
<br />
            Letter
Grade.<br />
<asp:TextBox ID="gradeBox" runat="server" OnTextChanged="gradeBox_TextChanged" Width="170px"></asp:TextBox>
<br />
<br />
Feedback.<br />
<asp:TextBox ID="feedback" runat="server" Height="100px" OnTextChanged="feedback_TextChanged" Width="220px"></asp:TextBox>
<br />
<br />
<br />
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
        
            
    
                                       
</asp:Content>
