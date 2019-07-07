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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
             if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();

            if (Session["email"] != null)
            {
                if (Session["pword"] != null)
                {
                    if (Session["email"].ToString() == "abir1607098@gmail.com" && Session["pword"].ToString() == "1607098")
                    Response.Redirect("Home.aspx");
                }
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
           
        }

        protected void ForgotPass_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Users_info  where email_id='" + email.Text + "' and password='"+ pword.Text+ "'";

            //cmd.ExecuteNonQuery();
            SqlDataAdapter dal = new SqlDataAdapter(cmd);
            DataSet ds2 = new DataSet();
            dal.Fill(ds2);
            int j = ds2.Tables[0].Rows.Count;


            if (j>0)
            {
                // Create the cookie object
                HttpCookie cookie = new HttpCookie("UserDetails");
                cookie["email"] = email.Text;
                cookie["pword"] = pword.Text;
                // Cookie will be persisted for 30 days
                cookie.Expires = DateTime.Now.AddDays(30);
                // Add the cookie to the client machine
                Response.Cookies.Add(cookie);
                Session["email"] = email.Text;
                Session["pword"] = pword.Text;
                Response.Redirect("Home.aspx");
            }
            else
                Response.Write("incorrect Email or Password");
        }

    
    }
}