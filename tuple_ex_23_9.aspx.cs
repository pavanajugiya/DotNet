using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dot_net_23_9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<Tuple<string,int,string>>people
        {
            get
            {
                if (ViewState["people"] == null)
                    ViewState["people"] = new List<Tuple<string,int,string>>();
                return (List <Tuple<string, int, string>>) ViewState["people"];
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Name = txtname.Text;
            int age = int.Parse(txtage.Text);
            String email = txtemail.Text;

            var p = Tuple.Create(Name, age, email);
            people.Add(p);
            txtname.Text = "";
            txtage.Text = "";
            txtemail.Text = "";
            Display();
            //lblshow.Text = "Name : " + p.Item1 + "<br/> Age : "  + p.Item2 + "<br/> Email : " + p.Item3;
            
        }
        public void Display()
        {
            string result = "";
            foreach(var p in people)
            {
                result += "Name : " + p.Item1 + "<br/> Age : " + p.Item2 + "<br/> Email : " + p.Item3 + "<br/>";
     
            }
            lblshow.Text = result;
        }
    }
}