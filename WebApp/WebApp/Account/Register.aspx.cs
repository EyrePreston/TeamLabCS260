using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WebApp.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
            
        }

        //Method used to change visibility when the company button is pressed.
        protected void RoleCheck_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if (this.RoleCheck.SelectedValue == "1")
            {
                StudentPanel.Visible = true;
                CompanyPanel.Visible = false;
            }
            else if (this.RoleCheck.SelectedValue == "2")
            {
                CompanyPanel.Visible = true;
                StudentPanel.Visible = false;
            }
        }

        

        //Method that causes the sender to use the email to be the same as the username.
        protected void RegisterUser_CreatingUser(object sender, EventArgs e)
        {
            CreateUserWizard cu = (CreateUserWizard)sender;
            cu.Email = cu.UserName;
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {

            // Cookie.
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);

            //Add's user to roles.
            Roles.AddUserToRole(((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("UserName")).Text, "Company");
            
            //Sam added this code to add company data to the company table.
            SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["internshipLDSBCConnectionString"].ToString());
            cn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO Company (CompanyName, Address1, Address2, PhoneNumber, ContactName, ContactPhone, ContactEmail) VALUES (@CompanyName,@Address1,@Address2,@PhoneNumber,@ContactName,@ContactPhone,@Email)", cn);

            cmd.Parameters.AddWithValue("@CompanyName", ((TextBox)(RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("CompanyName"))).Text);
            cmd.Parameters.AddWithValue("@Address1", ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("address1")).Text);
            cmd.Parameters.AddWithValue("@Address2", ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("address2")).Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("PhoneNumber")).Text);
            cmd.Parameters.AddWithValue("@ContactName", ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("ContactName")).Text);
            cmd.Parameters.AddWithValue("@ContactPhone", ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("ContactPhone")).Text);
            cmd.Parameters.AddWithValue("@Email", ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("UserName")).Text);
            

            cmd.ExecuteNonQuery();
            

            cn.Close();

            //Determines where the page will be redirected after the user is registered.
            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (!OpenAuth.IsLocalUrl(continueUrl))
            {
                continueUrl = "~/";
            }
            //Redirects the page.
            Response.Redirect(continueUrl);
            
        }

        protected void Unnamed18_Click(object sender, EventArgs e)
        {
            

        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.UserSelect.SelectedValue == "1")
            {
                StudentPanel.Visible = true;
                CompanyPanel.Visible = false;
            }
            else if (this.UserSelect.SelectedValue == "2")
            {
                CompanyPanel.Visible = true;
                StudentPanel.Visible = false;
            }
        }
    }
}