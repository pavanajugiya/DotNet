using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnet_pavan_01
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            lblshow.Text = "Name : " + txtpname.Text + "<br/> Mobile Number" + txtmnum.Text + "<br/> Pin Code : " + txtpin.Text + "<br/> User Name : " + txtuname.Text + "<br/> Event Code : " + txtecode.Text + "<br/> Email : " + txtemail.Text + "<br/> Pass : " + txtpass.Text;
        }
    }
}