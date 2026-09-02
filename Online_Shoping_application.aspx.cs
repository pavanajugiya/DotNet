using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Online_Shoping_application : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HD_panel.Visible = false;
            SP_panel.Visible = false;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedValue == "Home Delivery")
            {
                HD_panel.Visible = true;
            }
            else if(RadioButtonList1.SelectedValue == "Store Pickup")
            {
                SP_panel.Visible = true;
            }
        }
    }
}