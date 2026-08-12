using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnet_pro_a01
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
           
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Session["show"] =  "Name : "+ txtname.Text +
                "<br/> En.no" + txten.Text + 
                "<br/> Age : " + txtage.Text + 
                "<br/> Per : " + txtper.Text + 
                "<br/> Sem : " + txtsem.Text +
                "<br/> Sub : " + txtsub.Text;

            Response.Redirect("WebForm3.aspx");
        }
    }
}