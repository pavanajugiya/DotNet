using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dot_net_panel_01
{
    public partial class panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (btnhideshow.Text == "Hide")
            {
                Panel1.Visible = false;
                btnhideshow.Text = "Show";
            }
            else
            {
                Panel1.Visible = true;
                btnhideshow.Text = "Hide";
            }
                
        }
    }
}