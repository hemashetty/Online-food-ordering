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
    public partial class Restaurant_selection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void GetSelectedRecords(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();


            dt.Columns.AddRange(new DataColumn[3] { new DataColumn("North_indian"), new DataColumn("N_price"), new DataColumn("R_Name") });
            foreach (GridViewRow row in GridView2.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[3].FindControl("chkSelect") as CheckBox);
                    if (chkRow.Checked)
                    {
                        string name = row.Cells[0].Text;
                        
                       // string country = (row.Cells[].FindControl("lblCountry") as Label).Text;
                        string country = row.Cells[1].Text;
                        string dieces = row.Cells[2].Text;
                        
                        dt.Rows.Add(name, country, dieces);
                    }
                }
            }
            Session["GridData"] = dt;
            Response.Redirect("Order.aspx");
            //gvSelected.DataSource = dt;
            
            //gvSelected.DataBind();

            lbl_items.Visible = true;
        }


        protected void GetsSelectedRecords(object sender, EventArgs e)
        {
            DataTable dts = new DataTable();

            
            dts.Columns.AddRange(new DataColumn[3] {new DataColumn("R_Name"), new DataColumn("South_indian"), new DataColumn("S_price") });
            
            foreach (GridViewRow row in GridView3.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[3].FindControl("chksSelect") as CheckBox);
                    if (chkRow.Checked)
                    {
                        string name = row.Cells[0].Text;
                        
                        // string country = (row.Cells[].FindControl("lblCountry") as Label).Text;
                        string dieces = row.Cells[1].Text;
                        string price = row.Cells[2].Text;
                        ;
                        dts.Rows.Add(name, dieces, price);
                    }
                }
            }

            gvSouth.DataSource = dts;

            gvSouth.DataBind();
            lbl_items.Visible = true;
        }


        protected void GetwSelectedRecords(object sender, EventArgs e)
        {
            DataTable dtw = new DataTable();


            dtw.Columns.AddRange(new DataColumn[3] { new DataColumn("R_Name"), new DataColumn("Western"), new DataColumn("W_price") });
            foreach (GridViewRow row in GridView4.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[3].FindControl("chkwSelect") as CheckBox);
                    if (chkRow.Checked)
                    {
                        string name = row.Cells[0].Text;

                        // string country = (row.Cells[].FindControl("lblCountry") as Label).Text;
                        string dieces = row.Cells[1].Text;
                        string price = row.Cells[2].Text;

                        dtw.Rows.Add(name, dieces, price);
                    }
                }
            }

            gvWestern.DataSource = dtw;

            gvWestern.DataBind();

            lbl_items.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //int sum = 0;

            // TextBox txt;

            // foreach (GridViewRow row in gvSelected.Rows)
            // {
            //     txt = (TextBox)row.Cells[3].FindControl("TextBox2");

            //     sum += Convert.ToInt32(txt.Text);
            // }
            // Label2.Text = sum.ToString();
        }

 

      
       
 

      
      
       

       
       
    }
}