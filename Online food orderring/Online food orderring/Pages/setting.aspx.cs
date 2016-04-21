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
    public partial class setting : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            con.Open();
            Session["Restrnt"].ToString();
            Session["pswd"].ToString();
            SqlCommand cmd = new SqlCommand("select * from Restaurant where R_User = '" + Session["Restrnt"].ToString() + "' and R_Pswd = '" + Session["pswd"].ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbres");
            lbl_usernm.Text = ds.Tables[0].Rows[0][1].ToString();
            lbl_email.Text = ds.Tables[0].Rows[0][4].ToString();
            lbl_addrs.Text = ds.Tables[0].Rows[0][5].ToString();
            
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
        }

        protected void btn_email_Click(object sender, EventArgs e)
        {
            txt_email.Visible = true;
            btn_emil_k.Visible = true;
            btn_emil_cancel.Visible = true;
        }

        protected void btn_emil_k_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update Restaurant  set R_Email ='" + txt_email.Text + "'where R_User='" + lbl_usernm.Text + "' ", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter("select R_Email from Restaurant where R_User='" + lbl_usernm.Text + "' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "uptemil");
            lbl_email.Text = ds.Tables[0].Rows[0][0].ToString();
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            txt_email.Visible = false;
            btn_emil_k.Visible = false;
            btn_emil_cancel.Visible = false;
        }

        protected void btn_addrs_Click(object sender, EventArgs e)
        {
            txt_add.Visible = true;
            btn_addr_k.Visible = true;
            btn_add_cancel.Visible = true;
        }

        protected void btn_addr_k_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update Restaurant set R_Add ='" + txt_add.Text + "'where R_User='" + lbl_usernm.Text + "' ", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter("select R_Add from Restaurant where R_User='" + lbl_usernm.Text + "' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "uptdd");
            lbl_addrs.Text = ds.Tables[0].Rows[0][0].ToString();
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            txt_add.Visible = false;
            btn_add_cancel.Visible = false;
            btn_addr_k.Visible = false;
        }

        protected void btn_pswd_k_Click(object sender, EventArgs e)
        {
            //SqlDataAdapter da = new SqlDataAdapter("update Restaurant set R_Pswd ='" + txt_pswd.Text + "'where R_User='" + lbl_usernm.Text + "' ", con);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "uptemil");
            con.Open();
            SqlCommand cmd = new SqlCommand("update Restaurant set R_Pswd ='" + txt_pswd.Text + "'where R_User='" + lbl_usernm.Text + "' ", con);
            cmd.ExecuteNonQuery();
            //SqlDataAdapter da = new SqlDataAdapter("select R_Pswd from Restaurant where R_User='" + lbl_usernm.Text + "' ", con);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "uptpswd");
            //lbl_addrs.Text = ds.Tables[0].Rows[0][0].ToString();
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            con.Close();
            txt_pswd.Visible = false;
            txt_pswd_cnfrm.Visible = false;
            btn_pswd_k.Visible = false;
            btn_pswd_cancel.Visible = false;
        }

        protected void btn_chng_pswd_Click(object sender, EventArgs e)
        {
            txt_pswd.Visible = true;
            txt_pswd_cnfrm.Visible = true;
            btn_pswd_k.Visible = true;
            btn_pswd_cancel.Visible = true;
        }

        protected void btn_emil_cancel_Click(object sender, EventArgs e)
        {
            txt_email.Visible = false;
            btn_emil_k.Visible = false;
            btn_emil_cancel.Visible = false;
        }

        protected void btn_add_cancel_Click(object sender, EventArgs e)
        {
            txt_add.Visible = false;
            btn_addr_k.Visible = false;
            btn_add_cancel.Visible = false;
        }

        protected void btn_pswd_cancel_Click(object sender, EventArgs e)
        {
            txt_pswd.Visible = false;
            txt_pswd_cnfrm.Visible = false;
            btn_pswd_cancel.Visible = false;
            btn_pswd_k.Visible = false;
        }
    }
}