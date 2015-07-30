using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;

namespace WebApp.Admin
{
    public partial class adminPage : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        public void createRoles()
        {
            try
            {
                if (!Roles.RoleExists(createRoleTextBox.Text))
                {
                    Roles.CreateRole(createRoleTextBox.Text);
                    BindUsers();
                    BindRoles();
                    Label1.Text = "Role(s) Created Successfully";
                }
                else
                {
                    Label1.Text = "Role(s) Already Exists";
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
        public void BindRoles()
        {
            SqlDataAdapter da = new SqlDataAdapter("select RoleName from aspnet_Roles", cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Roles");
            AvailableRoles.DataSource = ds;
            AvailableRoles.DataTextField = "RoleName";
            AvailableRoles.DataValueField = "RoleName";
            AvailableRoles.DataBind();
        }
        public void BindUsers()
        {
            SqlDataAdapter da = new SqlDataAdapter("select UserName from aspnet_users", cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Roles");
            availableUsers.DataSource = ds;
            lstusers.DataSource = ds;
            lstusers.DataTextField = "UserName";
            lstRoles.DataValueField = "RoleName";
            lstusers.DataBind();
        }
        private void AssignRoles()
        {
            try
            {
                if (!Roles.IsUserInRole(lstRoles.SelectedItem.Text))
                {
                    Roles.AddUserToRole(lstusers.SelectedItem.Text,
                    lstRoles.SelectedItem.Text);
                    BindUsers();
                    BindRoles();
                    Label1.Text = "User Assigned To User Successfully";
                }
                else
                {
                    Label1.Text = "Role(s) Already Assigned To User";
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
        private void RemoveuserFromRole()
        {
            try
            {
                Roles.RemoveUserFromRole(lstusers.SelectedItem.Text, lstRoles.SelectedItem.Text);
                BindUsers();
                BindRoles();
                Label1.Text = "User Is Removed From The Role Successfully";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        public void RemoveRole()
        {
            try
            {
                Roles.DeleteRole(lstRoles.SelectedItem.Text);
                BindUsers();
                BindRoles();
                Label1.Text = "Role(s) Removed Successfully";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }



    }
    
}
