using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security.AntiXss;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dot_net_A01_22_8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            Boolean Upper = false;
            Boolean Lower = false;
            Boolean Space = false;
            Boolean Digit = false;
            Boolean special = false;
            
            String pass = args.Value;
            foreach (char c in pass)
            {
                if (char.IsUpper(c))
                    Upper = true;
                else if (char.IsLower(c))
                    Lower = true;
                else if (char.IsDigit(c))
                    Digit = true;
                else if (char.IsWhiteSpace(c))
                    Space = true;
                else
                    special = true;

            }

            args.IsValid = Upper && Lower && !Space && Digit && special;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblshow.Text = TextBox1.Text;
        }
    }
}