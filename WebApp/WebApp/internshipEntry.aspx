<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="internshipEntry.aspx.cs" Inherits="WebApp.internshipEntry" MasterPageFile="~/Site.Master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    
       
    
    
            <asp:Label ID="CompanyName" runat="server" Text="Company Name" style="top: 23px; left: 10px; float: left; height: 27px; width: 156px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
            <br />
            <asp:Label ID="CompanyAddress" runat="server" Text="Address1" style="float: left"></asp:Label>
            <asp:TextBox ID="address1" runat="server" OnTextChanged="address1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="address2" runat="server" Text="Address2" style="float: left"></asp:Label>
            <asp:TextBox ID="secondAddress" runat="server" OnTextChanged="secondAddress_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Phone" runat="server" Text="Phone Number" style="float: left"></asp:Label>
            <asp:TextBox ID="phoneNumber" runat="server" OnTextChanged="phoneNumber_TextChanged"></asp:TextBox>
            <br />
        
            <br />
            <asp:Label ID="jobDescription" runat="server" Text="Job Description" style="float: left"></asp:Label>
            <asp:TextBox ID="descrition_textbox" runat="server" Height="232px" OnTextChanged="descrition_textbox_TextChanged" TextMode="MultiLine" Width="320px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
        
            
    
            <cc1:MaskedEditExtender ID="MaskedEditExtender1" runat="server" TargetControlID="phoneNumber" Mask="(999)999-9999"  />
    
    
    
                           
</asp:Content>
