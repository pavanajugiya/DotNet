using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static int count = 0;
        public class Person
        {
            int Person_id;

            string Name;
            public Person(int Person_id, string Name)
            {
                this.Person_id= Person_id;
                this.Name= Name;


            }
            public string Display_Person()
            {
                count++;
                return count + ".Details \nPerson ID:-"+this.Person_id+"\nName:-"+Name;
            }
        }
        public class Student : Person
        {
            int En;

            string Name;
            public Student(int Person_id, string P_Name,int En, string Name):base(Person_id,P_Name)
            {
                this.En = En;
                this.Name = Name;
                


            }
            public string Display_Student()
            {
                return "\nStudent ID:-" + this.En + "\nName:-" + Name+"\n\n";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Student p1 = new Student(int.Parse(TextBox1.Text),TextBox2.Text ,int.Parse(TextBox3.Text),TextBox4.Text);
            TextBox5.Text += p1.Display_Person() + p1.Display_Student();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
       
        }
    }
}