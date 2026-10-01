using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        static int i = 0;

        [Serializable]
        public class emp
        {
            public int e_id {  get; set; }

            public string name { get; set; }

            public int salary { get; set; }

            public int d_id { get; set; }
        }

        private List<emp> emp_list
        {
            get
            {
                if (ViewState["emp_list"] == null)
                {
                    ViewState["emp_list"] = new List<emp>();
                }
                return (List<emp>)ViewState["emp_list"];
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            int emp_id = int.Parse(txteid.Text);
            string name = txtname.Text;
            int sal = int.Parse(txtsalary.Text);
            int dept_id = int.Parse(txtdid.Text);
            emp_list.Add(new emp { e_id = emp_id, name = name, salary = sal, d_id = dept_id });
            i++;
            lblshow.Text = "Employee Successfuly Added.." + i.ToString();
            txteid.Text = "";
            txtname.Text = "";
            txtsalary.Text = "";
            txtdid.Text = "";
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            lblshow.Text = "";

            foreach (var emp in emp_list)
            {
                lblshow.Text += "<br> e_id : " + emp.e_id + ", name : " + emp.name + ", salary : " + emp.salary +", d_id : "+ emp.d_id;
            }
        }
    }
}