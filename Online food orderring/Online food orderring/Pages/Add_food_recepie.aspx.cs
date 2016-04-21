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
    public partial class Add_food_recepie : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
             con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            con.Open();
             if (!Page.IsPostBack)
            {
                //Remove the session when first time page loads.
                Session.Remove("clicks");
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            Session["clicks"] = txt_add_rows.Text;
            int rowCount =Convert.ToInt32(Session["clicks"]);
                  

            int columnCount = 6;

            Table table = new Table();

            table.ID = "table1";


            for (int i = 0; i < rowCount; i++)
            {

                TableRow row = new TableRow();

                for (int j = 0; j < columnCount; j++)
                {

                    TableCell cell = new TableCell();

                    TextBox TxtBoxU = new TextBox();


                    TxtBoxU.ID = "TextBoxU" + i.ToString();

                    cell.ID = "cell" + i.ToString();

                    cell.Controls.Add(TxtBoxU);

                    row.Cells.Add(cell);


                }


                table.Rows.Add(row);

            }


            Panel1.Controls.Add(table);
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            int rowCount = Convert.ToInt32(Session["clicks"]);
           int columnCount= 6;
            
            for (int i = 0; i < rowCount; i++)
            {


              
                    //TableCell cell = new TableCell();

                    //TextBox TxtBoxU = new TextBox();


                    //TxtBoxU.ID = "TextBoxU" + i.ToString();

                    //cell.ID = "cell" + i.ToString();

                    //cell.Controls.Add(TxtBoxU);

                    //row.Cells.Add(cell);
              
                    String query = "insert into Food (R_Id,North_indian)values  ('1','" + Request.Form["TextboxU" + i.ToString()] + "')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                
                


                


                

            }


         
        }

        }
    }
