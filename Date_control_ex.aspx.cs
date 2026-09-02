using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Date_control_ex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //lblshow.Text = Calendar1.SelectedDate.ToString();
            lblshow.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            //lblshow.Text = Calendar1.SelectedDate.ToLongDateString();
            //lblshow.Text = Calendar1.SelectedDate.ToShortDateString();
            //lblshow.Text = Calendar1.SelectedDate.ToShortTimeString();

            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime dt1 = Calendar1.SelectedDate;
            DateTime dt2 = DateTime.Today;
            double diff = (dt2 - dt1).TotalDays;
            lblcd.Text = "Diffrence = " + diff;
            

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DateTime sd = Calendar1.SelectedDate;
            DateTime cd = DateTime.Today;
            if (sd == cd)
                lblcpf.Text = "You Selected current date";
            else if (sd > cd)
                lblcpf.Text = "You selected past date";
            else
                lblcpf.Text = "You selected future date";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DateTime dt = Calendar1.SelectedDate;
            Boolean isleap = DateTime.IsLeapYear(dt.Year);
            if (isleap == true)
                lblyear.Text = "Leap Year";
            else
                lblyear.Text = "Not Leap Year";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            DateTime dt = Calendar1.SelectedDate;
            int dim = DateTime.DaysInMonth(dt.Year, dt.Month);
            lblday.Text = "Total Days in the month " + dt.ToString("MMMM") + " are : " + dim.ToString();
        }
    }
}