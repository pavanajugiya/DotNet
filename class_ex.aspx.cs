using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public class student
        {
            public string name;
            public int Age;

            public student()
            {
                name = "pavan";
                Age = 21;
            }

            public student(string name, int age)
            {
                this.name = name;
                Age = age;
            }

            public string Display()
            {
                return "Name : " + name + "<br/>" + "Age : " + Age + "<br/>";
            }
        }

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //student s = new student();
            //s.name = "pavan";
            //s.Age = 21;
            //student s1 = new student();
            //s1.name = "harpal";
            //s1.Age = 30;
            //Label1.Text = s.Display() + s1.Display();

            student s = new student(s.name,s.Age);
            s.name = txtname.Text;
            s.Age = Convert.ToInt32(txtage.Text);
            Label1.Text = s.Display();



        }
    }
}