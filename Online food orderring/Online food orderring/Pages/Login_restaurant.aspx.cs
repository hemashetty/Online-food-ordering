using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace Online_food_orderring.Pages
{
    public partial class Login_restaurant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Validate_User"))
                {

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@R_User", txt_user.Text);
                    cmd.Parameters.AddWithValue("@R_Pswd", txt_pswd.Text);
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
                string message = string.Empty;
                switch (userId)
                {
                        
                    case -1:
                        message = "Username and/or password is incorrect.";
                        break;
                    case -2:
                      message = "Account has not been activated.";
                        break;
                    default:
                        Session["Restrnt"] = txt_user.Text;
                        Session["pswd"] = txt_pswd.Text;
                        con.Open();
                        
             SqlCommand cmd = new SqlCommand("select * from Restaurant where R_User = '" + Session["Restrnt"].ToString() + "' and R_Pswd = '" + Session["pswd"].ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbres");
            Session["restaurant"]= ds.Tables[0].Rows[0][2].ToString();
            
            
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

                        Response.Redirect("setting.aspx");
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }

      

       
    }
}