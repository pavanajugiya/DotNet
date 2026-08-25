using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dot_net_panel_01
{
    
    public partial class payment_details_panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Card_panel.Visible = false;
            UPI_panel.Visible = false;      
            
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {


            if (RadioButtonList1.SelectedValue == "Card")
            {
                Card_panel.Visible = true;
            }
            else if (RadioButtonList1.SelectedValue == "UPI")
            {
                UPI_panel.Visible = true;
            }
        }
    }
}