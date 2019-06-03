using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class pages : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //DynamicDataManager1.RegisterControl(ListView2);
        }

        protected void ListView1_PagePropertiesChanged(object sender, EventArgs e)
        {

        }

        protected void OnLayoutCreated(object sender, EventArgs e)
        {
            ListViewDataItem theFirstItem = ListView1.Items[0];
            lblPageID.Text = theFirstItem.FindControl("comicPageID").ToString();
            System.Web.UI.WebControls.Label test = (System.Web.UI.WebControls.Label)theFirstItem.FindControl("comicPageID");
            lblPageID.Text = test.Text;
            lblPageID.Visible = false;
        }

        public void ListView2_InsertItem()
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}