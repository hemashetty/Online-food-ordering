﻿using System;
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
    public partial class Rest_resetpassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);

            con.Open();
            Label2.Text = Request.QueryString["uid"];
            cmd = new SqlCommand("select UserId from Rest_ResetPassword where Id='" + Label2.Text + "' ", con);
            Label3.Text = cmd.ExecuteScalar().ToString();
        }

        protected void btn_rest_pswd_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("Update Restaurant set R_Pswd='" + txt_pswd.Text + "' where R_Id='" + Label3.Text + "'", con);

            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("Delete from Rest_ResetPassword where UserId='" + Label3.Text + "'", con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Password changed Succeful";
            Response.Redirect("Login_restaurant.aspx");
        }
    }
}