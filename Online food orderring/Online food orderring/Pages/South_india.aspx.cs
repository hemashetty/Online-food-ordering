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
    public partial class South_india : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
            if (!Page.IsPostBack)
            {
                //Remove the session when first time page loads.
                Session.Remove("clicks");
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            int rowCount = 0;

            //initialize a session.
            rowCount = Convert.ToInt32(Session["clicks"]);

            rowCount++;

            //In each button clic save the numbers into the session.
            Session["clicks"] = rowCount;

            //Create the textboxes and labels each time the button is clicked.
            for (int i = 0; i < rowCount; i++)
            {
                TextBox TxtBoxR = new TextBox();
                TextBox TxtBoxP = new TextBox();

                Label lblR = new Label();
                Label lblP = new Label();

                TxtBoxR.ID = "TextBoxR" + i.ToString();
                TxtBoxP.ID = "TextBoxP" + i.ToString();

                lblR.ID = "LabelR" + i.ToString();
                lblP.ID = "LabelP" + i.ToString();

                lblR.Text = "Recepie Name " + (i + 1).ToString() + " : ";
                lblP.Text = "Price " + (i + 1).ToString() + " : ";

                //Add the labels and textboxes to the Panel.
                Panel1.Controls.Add(lblR);
                Panel1.Controls.Add(TxtBoxR);

                Panel1.Controls.Add(lblP);
                Panel1.Controls.Add(TxtBoxP);
            }
        }
         
        protected void btn_save_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            con.Open();  
            int rowCount = Convert.ToInt32(Session["clicks"]);
            for (int i = 0; i < rowCount; i++)
            {
                //string OptionID = "TextBoxR" + i;
                

                //string Optionp = "TextBoxP" + i;
                //TextBox tp = (TextBox)Panel1.FindControl(Optionp);

                String query = "insert into North_indian (North_indian,N_price)values('"+ Request.Form["TextBoxR"] + i.ToString()+"','"+ Request.Form["TextBoxP" ]+ i.ToString()+"')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }
    }
}