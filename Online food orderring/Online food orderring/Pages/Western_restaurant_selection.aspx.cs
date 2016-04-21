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
    public partial class Western_restaurant_selection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_wester_Click(object sender, EventArgs e)
        {

            DataTable dtw = new DataTable();


            dtw.Columns.AddRange(new DataColumn[4] { new DataColumn("R_Name"), new DataColumn("Western"), new DataColumn("W_price"), new DataColumn("Quantity") });
            foreach (GridViewRow row in GridView4.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[4].FindControl("chkwSelect") as CheckBox);
                    if (chkRow.Checked)
                    {
                        string name = row.Cells[0].Text;

                        // string country = (row.Cells[].FindControl("lblCountry") as Label).Text;
                        string dieces = row.Cells[1].Text;
                        string price = row.Cells[2].Text;
                        string qnty = row.Cells[3].Text;
                        dtw.Rows.Add(name, dieces, price, qnty);
                    }
                }
            }

            Session["Gridwestern"] = dtw;
        }
    }
}