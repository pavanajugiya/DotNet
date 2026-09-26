using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dot_net_26_9
{
    public partial class LINQ_ex_26_9 : System.Web.UI.Page
    {

        public class student
        {
            public string Name { get; set; }
            public int Age { get; set; }
        }

        List<student> stud_list = new List<student>
        {
            new student{Name = "pavan" , Age=21},
            new student{Name = "patel" , Age=22},
            new student{Name = "bhau" , Age=18},
            new student{Name = "swati" , Age=25},
            new student{Name = "keyur" , Age=20},
            new student{Name = "mayur" , Age=27},
            new student{Name = "takshil" , Age=15},
            new student{Name = "rahul" , Age=14},
            new student{Name = "sumit" , Age=12},
            new student{Name = "aafridi" , Age=26}
        };

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            var nm = stud_list.Select(s => s.Name);
            var ag = stud_list.Select(s =>  s.Age);

            //lblshow.Text = "All Students : " + string.Join(", ", nm) + string.Join(", ",ag);

            // Q.Display student using for loop 

            //foreach (var student in stud_list)
            //{
            //    lblshow.Text += "<br> Name : " + student.Name + ",  Age : " + student.Age;
            //}

            //Q.age > 20

            //foreach (var student in stud_list.Where(v => v.Age > 20))
            //{
            //    lblshow.Text += "Age > 20 : " + "<br> Name : " + student.Name + ",  Age : " + student.Age;
            //}

            // Q.name start with s

            //foreach (var student in stud_list.Where(v => v.Name.ToLower().StartsWith("s")))
            //{
            //    lblshow.Text += "Name start with S : " + "<br> Name : " + student.Name + ",  Age : " + student.Age;
            //}

            // Q.fourth student detail.

            //lblshow.Text +="Fourth number studnet detail : " + "<br> Name : " + stud_list[4].Name + ",  Age : " + stud_list[4].Age;

            // Q.student name in ascending & descending order 

            //Desc

            //foreach (var student in stud_list.OrderByDescending(s => s.Name))
            //{
            //    lblshow.Text +="<br> Name : " + student.Name + ",  Age : " + student.Age;
            //}

            // asce

            //foreach (var student in stud_list.OrderBy(s => s.Name))
            //{
            //    lblshow.Text += "<br> Name : " + student.Name + ",  Age : " + student.Age;
            //}

            // Q.total student count

            //lblshow.Text = "Total Student : " +  nm.Count().ToString();

            // Q.Avg age of all studnet

            //lblshow.Text = "Avarage age : " + ag.Average();

            // Q.sum,max,min age 

            //lblshow.Text = "sum of age : " + ag.Sum() + ",max of age : " + ag.Max() + ",min of age : " + ag.Min();

            // Q.first and last studnet

            //lblshow.Text = "first student : " + stud_list.First().Name + "," + stud_list.First().Age + "<br> Last studnet : " + stud_list.Last().Name + "," + stud_list.Last().Age;

            // Q.first student having age > 15

            //lblshow.Text = "Name : " + stud_list.Where(v=>v.Age>15).First().Name +", Age : " + stud_list.Where(v => v.Age > 15).First().Age;

            //Q.last student having age > 15

            lblshow.Text = "Name : " + stud_list.Where(v => v.Age > 15).Last().Name + ", Age : " + stud_list.Where(v => v.Age > 15).Last().Age;




        }
    }
}