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
    public partial class Login_customer : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            con.Open();
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
           
            SqlCommand cmd = new SqlCommand("select * from Customer where C_user = '"+txt_usernm.Text+"' and C_pswd = '"+txt_pswd_log.Text+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbres");
           // Session["cid"] = ds.Tables[0].Rows[0][0].ToString();
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {


                SqlCommand cm = new SqlCommand("select * from Customer where C_user = '" + txt_usernm.Text + "' and C_pswd = '" + txt_pswd_log.Text + "'", con);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd);
                DataSet ds1 = new DataSet();
                da.Fill(ds, "tbres");
                Session["cid"] = ds.Tables[0].Rows[0][0].ToString();
                DataTable dt1 = new DataTable();
                da.Fill(dt1);





                Session["user"] = txt_usernm.Text;
                Session["pswd"] = txt_pswd_log.Text;
                con.Close();
                Response.Redirect("Profile.aspx");
            }
            else
            {
                //Response.Write("Invalid password or username");
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Invalid password or username');", true);
            }
        }
    }
}