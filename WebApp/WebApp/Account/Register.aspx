<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApp.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
    </hgroup>
    <asp:Panel ID="Panel2" runat="server">
        <asp:RadioButtonList ID="RoleCheck" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RoleCheck_SelectedIndexChanged" >
            <asp:ListItem Text="Student" Value="1"/>
            <asp:ListItem Text="Company" Value="2"/>
        </asp:RadioButtonList>
    </asp:Panel>
    <asp:Panel ID="StudentPanel" runat="server">
        <asp:Label runat ="server"><h1>Student Panel Here</h1></asp:Label>
    </asp:Panel>
    <asp:Panel ID="CompanyPanel" runat="server" Visible="false">
        <h2>Use the form below to create a new account.</h2>
        <asp:CreateUserWizard runat="server" ID="RegisterUser" RequireEmail="false"  ViewStateMode="Disabled" OnCreatingUser="RegisterUser_CreatingUser" OnCreatedUser="RegisterUser_CreatedUser">
            <LayoutTemplate>
                <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
                <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
            </LayoutTemplate>
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                    <ContentTemplate>
                        <p class="message-info">
                            Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %>characters in length.
                        </p>
                        <p class="validation-summary-errors">
                            <asp:Literal runat="server" ID="ErrorMessage" />
                        </p>
                        <fieldset>
                            <legend>Registration Form</legend>
                            <ol>
                                <li>
                                    <asp:Label runat="server" AssociatedControlID="CompanyName">Company Name</asp:Label>
                                    <asp:TextBox runat="server" ID="CompanyName" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="CompanyName"
                                    CssClass="field-validation-error" ErrorMessage="The company name is required" />
                                </li>
                                <li>
                                    <asp:Label runat="server" AssociatedControlID="address1">Address Line 1</asp:Label>
                                    <asp:TextBox runat="server" ID="address1"  />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="address1"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The address field is required." />
                                </li>
                                <li>
                                    <asp:Label runat="server" AssociatedControlID="address2">Address Line 2</asp:Label>
                                    <asp:TextBox runat="server" ID="address2"  />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="address2"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The address field is required." />
                                </li>
                                <li>
                                    <asp:Label runat="server" AssociatedControlID="PhoneNumber">Company Phone Number</asp:Label>
                                    <asp:TextBox runat="server" ID="PhoneNumber"  />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="PhoneNumber"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="A phone number is required." />
                                </li>
                                <li>
                                    <asp:Label runat="server" AssociatedControlID="ContactName">Contact Name</asp:Label>
                                    <asp:TextBox runat="server" ID="ContactName"  />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ContactName"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="A contact name is required." />
                                </li>
                                <li>
                                    <asp:Label runat="server" AssociatedControlID="ContactPhone">Phone Number</asp:Label>
                                    <asp:TextBox runat="server" ID="ContactPhone"  />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ContactPhone"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="A phone number is required." />
                                </li>
                                <li>
                                    <!-- The Contact Email is now the under the UserName control so the membership table will recieve it as such -->
                                    <asp:Label runat="server" AssociatedControlID="UserName">Contact Email(This will also be your Username)</asp:Label>
                                    <asp:TextBox runat="server" ID="UserName" TextMode="Email" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." />
                                </li>
                                <li>
                                    <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                                    <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." />
                                </li>
                                <li>
                                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm Password</asp:Label>
                                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                                </li>
                            </ol>
                            <asp:Button runat="server" CommandName="MoveNext" Text="Register" OnClick="Unnamed18_Click" />
                        </fieldset>
                    </ContentTemplate>
                    <CustomNavigationTemplate >
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:internshipLDSBCConnectionString %>" DeleteCommand="DELETE FROM [Company] WHERE [ID] = @original_ID AND [CompanyName] = @original_CompanyName AND [Address1] = @original_Address1 AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND [PhoneNumber] = @original_PhoneNumber AND (([ContactName] = @original_ContactName) OR ([ContactName] IS NULL AND @original_ContactName IS NULL)) AND (([ContactPhone] = @original_ContactPhone) OR ([ContactPhone] IS NULL AND @original_ContactPhone IS NULL)) AND (([ContactEmail] = @original_ContactEmail) OR ([ContactEmail] IS NULL AND @original_ContactEmail IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="INSERT INTO [Company] ([CompanyName], [Address1], [Address2], [PhoneNumber], [ContactName], [ContactPhone], [ContactEmail], [Password]) VALUES (@CompanyName, @Address1, @Address2, @PhoneNumber, @ContactName, @ContactPhone, @ContactEmail, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Company]" UpdateCommand="UPDATE [Company] SET [CompanyName] = @CompanyName, [Address1] = @Address1, [Address2] = @Address2, [PhoneNumber] = @PhoneNumber, [ContactName] = @ContactName, [ContactPhone] = @ContactPhone, [ContactEmail] = @ContactEmail, [Password] = @Password WHERE [ID] = @original_ID AND [CompanyName] = @original_CompanyName AND [Address1] = @original_Address1 AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND [PhoneNumber] = @original_PhoneNumber AND (([ContactName] = @original_ContactName) OR ([ContactName] IS NULL AND @original_ContactName IS NULL)) AND (([ContactPhone] = @original_ContactPhone) OR ([ContactPhone] IS NULL AND @original_ContactPhone IS NULL)) AND (([ContactEmail] = @original_ContactEmail) OR ([ContactEmail] IS NULL AND @original_ContactEmail IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_ID" Type="Int32" />
                                <asp:Parameter Name="original_CompanyName" Type="String" />
                                <asp:Parameter Name="original_Address1" Type="String" />
                                <asp:Parameter Name="original_Address2" Type="String" />
                                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                <asp:Parameter Name="original_ContactName" Type="String" />
                                <asp:Parameter Name="original_ContactPhone" Type="String" />
                                <asp:Parameter Name="original_ContactEmail" Type="String" />
                                <asp:Parameter Name="original_Password" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="CompanyName" Type="String" />
                                <asp:Parameter Name="Address1" Type="String" />
                                <asp:Parameter Name="Address2" Type="String" />
                                <asp:Parameter Name="PhoneNumber" Type="String" />
                                <asp:Parameter Name="ContactName" Type="String" />
                                <asp:Parameter Name="ContactPhone" Type="String" />
                                <asp:Parameter Name="ContactEmail" Type="String" />
                                <asp:Parameter Name="Password" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="CompanyName" Type="String" />
                                <asp:Parameter Name="Address1" Type="String" />
                                <asp:Parameter Name="Address2" Type="String" />
                                <asp:Parameter Name="PhoneNumber" Type="String" />
                                <asp:Parameter Name="ContactName" Type="String" />
                                <asp:Parameter Name="ContactPhone" Type="String" />
                                <asp:Parameter Name="ContactEmail" Type="String" />
                                <asp:Parameter Name="Password" Type="String" />
                                <asp:Parameter Name="original_ID" Type="Int32" />
                                <asp:Parameter Name="original_CompanyName" Type="String" />
                                <asp:Parameter Name="original_Address1" Type="String" />
                                <asp:Parameter Name="original_Address2" Type="String" />
                                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                                <asp:Parameter Name="original_ContactName" Type="String" />
                                <asp:Parameter Name="original_ContactPhone" Type="String" />
                                <asp:Parameter Name="original_ContactEmail" Type="String" />
                                <asp:Parameter Name="original_Password" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </CustomNavigationTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center" colspan="2">Complete</td>
                            </tr>
                            <tr>
                                <td>Your account has been successfully created.</td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" Text="Continue" ValidationGroup="RegisterUser" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </asp:Panel>
    <!-- Added the 'OnCreatingUser' property to use the 'RegisterUser_CreatingUser' method in the code behind. -->
    </asp:Content>