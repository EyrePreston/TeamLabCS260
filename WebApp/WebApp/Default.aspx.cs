using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ListView1_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {
            //ListViewItem item = ListView1.Items[ListView1.SelectedIndex];
            //WebControl c = (WebControl)item.FindControl("Job_TitleLabel");
            //Label la = (Label)c;
            //ApplicationForm.setValue(la.Text);

            ListViewDataItem dataItem = (ListViewDataItem)e.Item;
            string jobTitle = ListView1.DataKeys[dataItem.DisplayIndex].Value.ToString();
            int jobID = Int32.Parse(jobTitle);

            ApplicationForm.setValue(jobID);

            Server.Transfer("ApplicationForm.aspx");

        }

        protected void ListView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void filterList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Display filter records.
            SqlDataSource1.SelectCommand = "SELECT * FROM [internshipLDSBC].[dbo].[Job] WHERE Category='" + filterList.SelectedValue + "'";
            // Display all records.
            if (filterList.SelectedValue == "Category")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM [internshipLDSBC].[dbo].[Job]";
            }
        }

    }

}