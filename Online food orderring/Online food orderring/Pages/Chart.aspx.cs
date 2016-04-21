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
    public partial class Chart : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["restaurant"].ToString();
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            con.Open();
        }

        protected void btn_chart_Click(object sender, EventArgs e)
        {
            int total = 0;
            SqlCommand cmd = new SqlCommand("select * from [Order] where R_Name = '" + Session["restaurant"].ToString() + "' and F_Type='Western'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbres");
            Session["f-type"] = ds.Tables[0].Rows[0][3].ToString();
            Session["dieces"] = ds.Tables[0].Rows[0][4].ToString();
            total = total + Convert.ToInt32(Session["dieces"]);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Label1.Text = total.ToString();
            SqlCommand cm = new SqlCommand("insert into Graph(R_Name,Western)values('" + Session["restaurant"].ToString() + "','" + Convert.ToInt32(Label1.Text) + "')", con);
            cm.ExecuteNonQuery();
            con.Close();
            Chart1.Visible = true;
        }

       
    }
}