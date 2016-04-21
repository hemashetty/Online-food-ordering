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
    public partial class customer_registration : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            con.Open();
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
           
            String query = "insert into Customer(C_user,C_pswd,C_Add,C_Phone,C_Email)values('"+txt_username.Text+"','"+txt_pswd.Text+"','"+txt_addr.Text+"', "+txt_no.Text+", '"+txt_email.Text+"') ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["user"] = txt_username.Text;
            Session["email"] = txt_email.Text;
            Response.Redirect("Login_customer.aspx");
        }

       
    }
}