<%@Page Language="C#" AutoEventWireup="true" CodeBehind="internshipEntry.aspx.cs" Inherits="WebApp.internshipEntry" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body style="text-align: left">
    <form id="form1" runat="server">
    
        <div>
            <strong><span class="auto-style1">Company Input</span></strong><br />
            <br />
            <br />
    
        <asp:Label ID="CompanyName" runat="server" Text="Company Name" style="top: 23px; left: 10px; float: left; height: 27px; width: 156px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
        <br />
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
        <asp:TextBox ID="phoneNumberTextBox" runat="server" OnTextChanged="phoneNumber_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="jobDescription" runat="server" Text="Job Description" style="float: left"></asp:Label>
        <asp:TextBox ID="descrition_textbox" runat="server" Height="232px" OnTextChanged="descrition_textbox_TextChanged" TextMode="MultiLine" Width="320px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />

        </div>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <cc1:MaskedEditExtender ID="MaskedEditExtender1" runat="server" TargetControlID="phoneNumberTextBox" Mask="(999)999-9999" />

    </form>
</body>
</html>
