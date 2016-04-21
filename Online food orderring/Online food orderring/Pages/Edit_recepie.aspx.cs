using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_food_orderring.Pages
{
    public partial class Edit_recepie : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_rid.Text = Session["rid"].ToString();
            if (!Page.IsPostBack)
            {
                

                GetFoodDetail();
            }
        }
        private SqlConnection GetConnection()
        {
            string connStr = ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString;
            
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            return con;
        }
        private void GetFoodDetail()
        {
            
            SqlConnection con = GetConnection();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("Update_Recepie", con);
            cmd.CommandType = CommandType.StoredProcedure;
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                IDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
            }

          // GridView1.DataSource = dt;
           GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetFoodDetail();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetFoodDetail();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int fid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string north = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtnorth")).Text;
            string nprice = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtnprice")).Text;
            string south = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsouth")).Text;
            string sprice = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsprice")).Text;
            string western = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtwestern")).Text;
            string wprice = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtwprice")).Text;
            SqlConnection con = GetConnection();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("Update_Food", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@F_Id ", fid);
            cmd.Parameters.AddWithValue("@North_indian", north);
            cmd.Parameters.AddWithValue("@N_price ", nprice);
            cmd.Parameters.AddWithValue("@South_indian ", south);
            cmd.Parameters.AddWithValue("@S_price", sprice);
            cmd.Parameters.AddWithValue("@Western", western);
            cmd.Parameters.AddWithValue("@W_price", wprice);
            cmd.ExecuteNonQuery();
            
            
           GridView1.EditIndex = -1;// no row in edit mode
            GetFoodDetail();
            con.Close();
            Response.Redirect("Edit_recepie.aspx");
        }

       

        

       

       

       

       

        
        
    }
}