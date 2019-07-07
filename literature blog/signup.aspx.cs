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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (connect.State == ConnectionState.Open)
            {
                connect.Close();
            }
            connect.Open();
            Response.Write("successfull");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = connect.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Users_info  where email_id='" + TextBox1.Text + "'";

            //cmd.ExecuteNonQuery();
            SqlDataAdapter dal = new SqlDataAdapter(cmd);
            DataSet ds2 = new DataSet();
            dal.Fill(ds2);
            int j = ds2.Tables[0].Rows.Count;


            if (j == 0)
            {
                cmd.CommandText = "insert into Users_info(email_id,password) values ('" + TextBox1.Text + "','" + TextBox2.Text + "')";

                cmd.ExecuteNonQuery();
            }
            else
            {
                Response.Clear();
                Response.Write("This email has been created before");
            }
            }
    }
}