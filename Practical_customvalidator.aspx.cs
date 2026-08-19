using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnet_pavan_01
{
    public partial class Practical_customvalidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(Convert.ToInt32(args.Value) >= 50)
                args.IsValid = true;
            else
                args.IsValid = false;


        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Convert.ToInt32(args.Value) >= 18)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int number = Convert.ToInt32(args.Value);

            if (number % 2 == 0)
                args.IsValid = true;
            else
                args.IsValid = false;

        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int num = Convert.ToInt32(args.Value);

            if(num%5 == 0)
                args.IsValid = true; 
            else
                args.IsValid = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblshow.Text = TextBox1.Text + "<br/>" + TextBox2.Text + "<br/>" + TextBox3.Text + "<br/>" + TextBox4.Text;
        }
    }
}