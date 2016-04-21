using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Text;

namespace Online_food_orderring.Pages
{
    public partial class Restaurant_login : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            // con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
        }

        protected void btn_join_Click(object sender, EventArgs e)
        {
            Label2.Text = txt_code.Text + txt_mob_no.Text;
          

            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Insert"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@R_User", txtuser.Text.Trim());
                        cmd.Parameters.AddWithValue("@R_Name", txt_restaurant.Text.Trim());
                        cmd.Parameters.AddWithValue("@R_Phone", Label2.Text.Trim());
                        cmd.Parameters.AddWithValue("@R_Email", txt_email.Text.Trim());
                        cmd.Parameters.AddWithValue("@R_Add", txt_address.Text.Trim());
                        cmd.Parameters.AddWithValue("@R_Pswd", txt_pswd.Text.Trim());
                        //cmd.Parameters.AddWithValue("@CreatedDate", );
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    default:
                       message = "Registration successful.";
                      Response.Redirect("Login_restaurant.aspx");
                      //  SendActivationEmail(userId);
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }
        //private void SendActivationEmail(int userId)
        //{
        //    string constr = ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString;
        //    string activationCode = Guid.NewGuid().ToString();
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("INSERT INTO Activation_code VALUES(@UserId, @ActivationCode)"))
        //        {
        //            using (SqlDataAdapter sda = new SqlDataAdapter())
        //            {
        //                cmd.CommandType = CommandType.Text;
        //                cmd.Parameters.AddWithValue("@UserId", userId);
        //                cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
        //                cmd.Connection = con;
        //                con.Open();
        //                cmd.ExecuteNonQuery();
        //                con.Close();
        //            }
        //        }
        //    }
        //    using (MailMessage mm = new MailMessage("hlax.tech@gmail.com", txt_email.Text))
        //    {
        //        mm.Subject = "Account Activation";
        //        //StringBuilder sbEmailBody = new StringBuilder();
        //        //sbEmailBody.Append("Dear " + txtuser.Text.Trim() + ",<br/><br/>");
        //        //sbEmailBody.Append("Please click on the following link to activate your account");
        //        //sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost:51790/Pages/Activated.aspx?ActivationCode = " + activationCode);

        //        //sbEmailBody.Append("<br/><br/>");
        //        //sbEmailBody.Append("<b>Thanks</b>");
        //        string body = "Hello " + txtuser.Text.Trim() + ",";
        //        StringBuilder sbEmailBody = new StringBuilder();


        //        body += "<br /><br />Please click the following link to activate your account";

        //        //body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("Restaurant_login.aspx", "http://localhost:51790/Pages/Activated.aspx?ActivationCode = " + activationCode) + "'>Click here to activate your account.</a>";
        //        body += ("http://localhost:51790/Pages/Activated.aspx?ActivationCode =" + activationCode);
        //        body += "<br /><br />Thanks";
        //        //  mm.Body = sbEmailBody.ToString();
        //        mm.Body = body;
        //        mm.IsBodyHtml = true;
        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.EnableSsl = true;
        //        NetworkCredential NetworkCred = new NetworkCredential("hlax.tech@gmail.com", "hemadevi");
        //        smtp.UseDefaultCredentials = true;
        //        smtp.Credentials = NetworkCred;
        //        smtp.Port = 587;
        //        smtp.Send(mm);
        //    }
        //}
        

    }
}