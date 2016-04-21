using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace Online_food_orderring.Pages
{
    public partial class south_restaurant_selection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_south_Click(object sender, EventArgs e)
        {
            DataTable dts = new DataTable();


            dts.Columns.AddRange(new DataColumn[4] { new DataColumn("R_Name"), new DataColumn("South_indian"), new DataColumn("S_price"), new DataColumn("Quantity") });

            foreach (GridViewRow row in GridView3.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[4].FindControl("chksSelect") as CheckBox);
                    if (chkRow.Checked)
                    {
                        string name = row.Cells[0].Text;

                        // string country = (row.Cells[].FindControl("lblCountry") as Label).Text;
                        string dieces = row.Cells[1].Text;
                        string price = row.Cells[2].Text;
                        string qnty= row.Cells[3].Text;
                        dts.Rows.Add(name, dieces, price, qnty);
                    }
                }
            }

            Session["Gridsouth"] = dts;
        }

      
    }
}