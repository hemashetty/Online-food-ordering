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
    public partial class test1 : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            con.Open();

            Label1.Text = "Success!";

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
         
           // Label1.Text = "hema";
           //// String query = "insert into Test (Id,recepie)values('1','"+Label1.Text+"')";
           // SqlCommand cmd = new SqlCommand("insert into Test (Id,recepie)values('1','" + Label1.Text + "')", con);
           // cmd.ExecuteNonQuery();
            //Response.Write("Successful!");
            //con.Close();
        }
    }
}