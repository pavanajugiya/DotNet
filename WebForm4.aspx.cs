using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnet_pro_a01
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        int Total = 15;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblshow.Text = "ID : " +txtid.Text + "<br/> Name : " + txtname.Text + "<br/> Age : " + txtage.Text + "<br/> Day : " + txtday.Text + "<br/> Reason : " +txtreason.Text;
            int leave = Convert.ToInt32(txtday.Text);
            Total -= leave;
            lblshow.Text += "<br/> Total left leave : " + Total.ToString();
        }
    }
}