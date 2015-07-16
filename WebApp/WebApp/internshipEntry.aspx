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
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
                <asp:ListItem>F</asp:ListItem>
            </asp:DropDownList>
            <br />
<br />
            Comments.<br />
<asp:TextBox ID="comments" runat="server" Height="100px" OnTextChanged="comments_TextChanged" Width="220px"></asp:TextBox>
<br />
<br />
<br />
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
        
            
    
                                       
</asp:Content>
