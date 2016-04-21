using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
namespace Online_food_orderring.Pages
{
    public partial class Admin_reset_pswd : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Username from Admin", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbres");
          Session["user"] = ds.Tables[0].Rows[0][0].ToString();
            

            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
        }

        protected void btn_chng_pswd_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update Admin set pswd ='" + txt_pswd.Text + "'where Username='" + Session["user"].ToString() + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Admin.aspx");
        }
    }
}