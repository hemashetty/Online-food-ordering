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
    public partial class History : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["cid"].ToString();
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
        }

        protected void btn_hist_Click(object sender, EventArgs e)
        {
         
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from History where C_Id='" + Convert.ToInt32(Session["cid"].ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}