using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace literature_blog
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();

            HttpCookie cookie = Request.Cookies["UserDetails"];
            if (cookie != null)
            {
                email.Text += cookie["email"];
                pword.Text += cookie["pword"];
            }
            if (Session["email"] != null)
            {
                semail.Text += Session["email"].ToString();
            }
            if (Session["pword"] != null)
            {
                spword.Text += Session["pword"].ToString();
            } 
            else
                Response.Redirect("login.aspx");

            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Users_info where email_id='" + Session["email"].ToString() + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }

        
    }
}