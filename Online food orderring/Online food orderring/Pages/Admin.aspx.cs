using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_food_orderring.Pages
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            con.Open();
        }

        protected void btn_admin_logn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Admin where Username = '" + txt_admin.Text + "' and pswd = '" + txt_pswd.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbres");
            //Session["aid"] = ds.Tables[0].Rows[0][0].ToString();
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Session["user"] = txt_admin.Text;
                Session["pswd"] = txt_pswd.Text;
                con.Close();
                Response.Redirect("Admin_setting.aspx");
            }
            else
            {
                Response.Write("Invalid password or username");
            }
        }
    }
}