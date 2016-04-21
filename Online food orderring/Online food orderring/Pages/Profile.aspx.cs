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
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            con.Open();
            Session["user"].ToString();
            Session["pswd"].ToString();
            SqlCommand cmd = new SqlCommand("select * from Customer where C_user = '" + Session["user"].ToString() + "' and C_pswd = '" +Session["pswd"].ToString()+ "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbres");
            lbl_usernm.Text= ds.Tables[0].Rows[0][1].ToString();
            lbl_emil.Text = ds.Tables[0].Rows[0][5].ToString();
            lbl_add.Text = ds.Tables[0].Rows[0][3].ToString();
           
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
        }

        protected void btn_email_Click(object sender, EventArgs e)
        {
            //SqlDataAdapter da = new SqlDataAdapter("update Customer set C_Email ='" + txt_email.Text + "'where C_user='" + lbl_usernm.Text + "' ", con);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "uptemil");
            txt_email.Visible = true;
            btn_cancel_emil.Visible = true;
            btn_emil_ok.Visible = true;
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            //SqlDataAdapter da = new SqlDataAdapter("update Customer set C_Add ='" + txt_add.Text + "'where C_user='" + lbl_usernm.Text + "' ", con);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "uptemil");
            txt_add.Visible = true;
            btn_add_cancel.Visible = true;
            btn_add_ok.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        //    SqlDataAdapter da = new SqlDataAdapter("update Customer set C_pswd ='" + txt_pswd.Text + "'where C_user='" + lbl_usernm.Text + "' ", con);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds, "uptemil");
            txt_pswd.Visible = true;
            txt_pswd_cnfrm.Visible = true;
            btn_ok_pswd.Visible = true;
            btn_cancel_pswd.Visible = true;
        }

        protected void btn_emil_ok_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update Customer set C_Email ='" + txt_email.Text + "'where C_user='" + lbl_usernm.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            btn_cancel_emil.Visible = false;
            txt_email.Visible = false;
            btn_emil_ok.Visible = false;
            con.Open();
            SqlCommand cm = new SqlCommand("select C_Email from Customer where C_user = '" + Session["user"].ToString() + "' and C_pswd = '" + Session["pswd"].ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet de = new DataSet();
            da.Fill(de, "tbres");
            lbl_emil.Text = de.Tables[0].Rows[0][0].ToString();
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
        }

        protected void btn_cancel_emil_Click(object sender, EventArgs e)
        {
            txt_email.Visible = false;
            btn_cancel_emil.Visible = false;
            btn_emil_ok.Visible = false;
        }

        protected void btn_add_ok_Click(object sender, EventArgs e)
        {
          
            con.Open();
            string query = "update Customer set C_Add ='" + txt_add.Text + "'where C_user='" + lbl_usernm.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            txt_add.Visible = false;
            btn_add_cancel.Visible = false;
            btn_add_ok.Visible = false;
            con.Open();
            SqlCommand cm = new SqlCommand("select C_Add from Customer where C_user = '" + Session["user"].ToString() + "' and C_pswd = '" + Session["pswd"].ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet de = new DataSet();
            da.Fill(de, "tbres");
            lbl_add.Text = de.Tables[0].Rows[0][0].ToString();
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
           
        }

        protected void btn_add_cancel_Click(object sender, EventArgs e)
        {
            txt_add.Visible = false;
            btn_add_ok.Visible = false;
            btn_add_cancel.Visible = false;
        }

        protected void btn_ok_pswd_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update Customer set C_pswd='" + txt_pswd.Text + "'where C_user='" + lbl_usernm.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            txt_pswd.Visible = false;
            txt_pswd_cnfrm.Visible = false;
            btn_cancel_pswd.Visible = false;
            btn_ok_pswd.Visible = false;

        }

        protected void btn_cancel_pswd_Click(object sender, EventArgs e)
        {
            txt_pswd.Visible = false;
            txt_pswd_cnfrm.Visible = false;
            btn_ok_pswd.Visible = false;
            btn_cancel_pswd.Visible = false;
        }
    }
}