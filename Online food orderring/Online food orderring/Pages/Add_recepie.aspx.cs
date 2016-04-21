using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;

namespace Online_food_orderring.Pages
{
    public partial class Add_recepie : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            Session["Restrnt"].ToString();
            Session["pswd"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select R_Id from Restaurant where R_user ='" + Session["Restrnt"] + "' and R_Pswd ='" + Session["pswd"] + "' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbres");
            Session["rid"] = ds.Tables[0].Rows[0][0].ToString();
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            con.Open();
            if (txt_nrth_indian.Text != "" && txt_nrth_price.Text != "" && txt_south_price.Text != "" && txt_south_recepie.Text != "" && txt_western_price.Text != "" && txt_western_rec.Text != "")
            {
              

                String query = "insert into Food (R_Id,North_indian,N_price,South_indian,S_price,Western,W_price)values("+Session["rid"]+",'" + txt_nrth_indian.Text + "','" + txt_nrth_price.Text + "','" + txt_south_recepie.Text + "','" + txt_south_price.Text + "','" + txt_western_rec.Text + "','" + txt_western_price.Text + "') ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                txt_nrth_indian.Text = "";
                txt_nrth_price.Text = "";
                txt_south_price.Text = "";
                txt_south_recepie.Text = "";
                txt_western_price.Text = "";
                txt_western_rec.Text = "";
            }
            
            
            
        }
    }
}