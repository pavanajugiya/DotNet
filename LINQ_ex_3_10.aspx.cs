using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dot_net_3_10
{
    public partial class LINQ_ex_3_10 : System.Web.UI.Page
    {

        [Serializable]

        public class movie
        {
            public int id {  get; set; }

            public string name { get; set; }

            public string director { get; set; }

            public int rating { get; set; }
        }

        private List<movie> movie_list
        {
            get
            {
                if (ViewState["movie_list"] == null)
                {
                    ViewState["movie_list"] = new List<movie>();
                }
                return (List<movie>)ViewState["movie_list"];
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtid.Text);
            string name = txtname.Text;
            string director = txtdirector.Text;
            int rating = int.Parse(rblrating.SelectedValue);
            movie_list.Add(new movie { id = id, name = name, director = director, rating = rating });
            lblshow.Text = "Movie list Successfuly Added...";
            txtid.Text = "";
            txtname.Text = "";
            txtdirector.Text = "";
            rblrating.SelectedValue = "";
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            lblshow.Text = "";

            foreach (var m in movie_list)
            {
                lblshow.Text += "<br> e_id : " + m.id + ", name : " + m.name + ", Director : " + m.director + ", rating : " + m.rating;
            }
        }

        protected void btnQ2_Click(object sender, EventArgs e)
        {
            lblshow.Text = "";
            foreach(var m in movie_list.Where(v => v.rating>8))
            {
                lblshow.Text += "<br> e_id : " + m.id + ", name : " + m.name + ", Director : " + m.director + ", rating : " + m.rating;

            }
        }
    }
}