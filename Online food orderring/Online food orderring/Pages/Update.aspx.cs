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
    public partial class Update : System.Web.UI.Page
    {
//        SqlConnection con;
        string cs = ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                //Displaying the Data  
                showData();
                //Adding an Attribute to Server Control(i.e. btnDeleteRecord)  
                btnDeleteRecord.Attributes.Add("onclick", "javascript:return DeleteConfirm()");
            }  
        }
        //Method for Displaying Data 
        protected void showData()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(cs); 
            SqlDataAdapter adapt = new SqlDataAdapter("select * from Food", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
           // GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        //Method for Deleting Record  
        protected void DeleteRecord(int fid)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand com = new SqlCommand("delete from Food where F_Id=@ID", con);
            com.Parameters.AddWithValue("@ID", fid);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
        protected void btnDeleteRecord_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow grow in GridView1.Rows)
            {
                //Searching CheckBox("chkDel") in an individual row of Grid  
                CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");
                //If CheckBox is checked than delete the record with particular empid  
                if (chkdel.Checked)
                {
                    int fid = Convert.ToInt32(grow.Cells[1].Text);
                    DeleteRecord(fid);
                }
            }
            //Displaying the Data in GridView  
            showData(); 
        }
    }
}