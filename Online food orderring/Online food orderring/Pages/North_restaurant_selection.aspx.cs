using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_food_orderring.Pages
{
    public partial class North_restaurant_selection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_north_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();


            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("North_indian"), new DataColumn("N_price"), new DataColumn("R_Name"), new DataColumn("Quantity") });
            foreach (GridViewRow row in GridView2.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[4].FindControl("chkSelect") as CheckBox);
                    if (chkRow.Checked)
                    {
                        string name = row.Cells[0].Text;

                        // string country = (row.Cells[].FindControl("lblCountry") as Label).Text;
                        string country = row.Cells[1].Text;
                        string dieces = row.Cells[2].Text;
                        string qunty = row.Cells[3].Text;
                        dt.Rows.Add(name, country, dieces, qunty);
                    }
                }
            }
            Session["GridData"] = dt;
        }
    }
}