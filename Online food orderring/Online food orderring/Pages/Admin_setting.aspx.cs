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
    public partial class Admin_setting : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            
            Session["user"].ToString();
            lbl_admin.Text = Session["user"].ToString();
        }

        protected void btn_chng_usernm_Click(object sender, EventArgs e)
        {
            txt_usernm.Visible = true;
            btn_ok_usrnm.Visible = true;
            btn_user_cancel.Visible = true;
        }

        protected void btn_ok_usrnm_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "Update Admin set Username='"+txt_usernm.Text+"' where Id='1'";
            SqlCommand cmd = new SqlCommand(query,con);

            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("select Username from Admin where Id='1'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet de = new DataSet();
            da.Fill(de, "tbres");
            lbl_admin.Text = de.Tables[0].Rows[0][0].ToString();
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            txt_usernm.Visible = false;
            btn_ok_usrnm.Visible = false;
            btn_user_cancel.Visible = false;
        }

        protected void btn_pswd_Click(object sender, EventArgs e)
        {
            txt_pswd.Visible = true;
            txt_cnfrm_pswd.Visible = true;
            btn_pswd_cancel.Visible = true;
            btn_k.Visible = true;
        }

        protected void btn_k_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "Update Admin set pswd='" + txt_pswd.Text+ "' where Id='1'";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();
            con.Close();
            txt_pswd.Visible = false;
            txt_cnfrm_pswd.Visible =false;
            btn_pswd_cancel.Visible = false;
            btn_k.Visible = false;
        }

        protected void btn_pswd_cancel_Click(object sender, EventArgs e)
        {
            txt_pswd.Visible = false;
            txt_cnfrm_pswd.Visible = false;
            btn_pswd.Visible = false;
            btn_pswd_cancel.Visible = false;
            btn_k.Visible = false;
        }

        protected void btn_user_cancel_Click(object sender, EventArgs e)
        {
            txt_usernm.Visible = false;
            btn_user_cancel.Visible = false;
            btn_ok_usrnm.Visible = false;
        }
    }
}