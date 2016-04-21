using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_food_orderring.Pages
{
    public partial class Order : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["user"].ToString();
            //Session["pswd"].ToString();
            Session["cid"].ToString();

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online food orderConnectionString"].ConnectionString);
            
            if (!IsPostBack)
            {
                if (Session["GridData"] != null)
                {
                    gvSelected.DataSource = Session["GridData"];
                    gvSelected.DataBind();
                    Button1.Visible = true;
                    
                }
                if(Session["Gridsouth"] != null)
                {
                    gvSouth.DataSource = Session["Gridsouth"];
                    gvSouth.DataBind();
                    btn_sth.Visible = true;
                }
                if(Session["Gridwestern"] != null)
                {
                    gvWestern.DataSource = Session["Gridwestern"];
                    gvWestern.DataBind();
                    btn_wtrn.Visible = true;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Decimal sum = 0;
            Decimal total = 0;
            Label lbl;
           
            TextBox txt;
            foreach (GridViewRow row in gvSelected.Rows)
            {
               
                lbl = (Label)row.Cells[1].FindControl("Label2");
                txt = (TextBox)row.Cells[3].FindControl("TextBox2");
                total= Decimal.Parse(lbl.Text) * Decimal.Parse(txt.Text);
                sum += total;
               
            }
            Label1.Text = sum.ToString();
          
           
           
        }

        protected void btn_pay_Click(object sender, EventArgs e)
        {
            string url = "https://www.paypal.com/us/cgi-bin/webscr";
            var builder = new StringBuilder();
            builder.Append(url);
            builder.AppendFormat("?cmd=_xclick&business={0}", HttpUtility.UrlEncode("shetty.hema@rocketmail.com"));
            builder.Append("&lc=US&no_note=0&currency_code=USD");
            builder.AppendFormat("&amount={0}", string.Format("{0:F2}", decimal.Parse(lbl_total.Text)));

            Response.Redirect(builder.ToString());

        }

        protected void btn_sth_Click(object sender, EventArgs e)
        {
            lbl_sth.Visible = true;
            Decimal sum = 0;
            Decimal total = 0;
            Label lbl;

            TextBox txt;
            foreach (GridViewRow row in gvSouth.Rows)
            {

                lbl = (Label)row.Cells[1].FindControl("Label1");
                txt = (TextBox)row.Cells[3].FindControl("TextBox2");
                total = Decimal.Parse(lbl.Text) * Decimal.Parse(txt.Text);
                sum += total;

            }
            lbl_sth.Text = sum.ToString();
        }

        protected void btn_wtrn_Click(object sender, EventArgs e)
        {
            lbl_wtrn.Visible = true;
            Decimal sum = 0;
            Decimal total = 0;
            Label lbl;

            TextBox txt;
            foreach (GridViewRow row in gvWestern.Rows)
            {

                lbl = (Label)row.Cells[1].FindControl("Label3");
                txt = (TextBox)row.Cells[3].FindControl("TextBox2");
                total = Decimal.Parse(lbl.Text) * Decimal.Parse(txt.Text);
                sum += total;

            }
            lbl_wtrn.Text = sum.ToString();
        }

        protected void btn_total_Click(object sender, EventArgs e)
        {
            decimal tot;
           
                tot = Convert.ToDecimal(Label1.Text) + Convert.ToDecimal(lbl_sth.Text) + Convert.ToDecimal(lbl_wtrn.Text);
                lbl_total.Text = tot.ToString();

                lbl_total.Visible = true;
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            if (Session["GridData"] != null)
            {

                Label rnm;
                Label lbl;
                Label nrthnm;

                Decimal total;
                TextBox txt;
                foreach (GridViewRow row in gvSelected.Rows)
                {
                    rnm = (Label)row.Cells[0].FindControl("Label1");
                    nrthnm = (Label)row.Cells[1].FindControl("Label3");
                    lbl = (Label)row.Cells[2].FindControl("Label2");

                    txt = (TextBox)row.Cells[3].FindControl("TextBox2");
                  total = Decimal.Parse(lbl.Text) * Decimal.Parse(txt.Text);
                  
                    con.Open();
                    String query = "insert into [Order](R_Name,F_Name,F_Type,Dieces,C_Id,Pay,Datetime)values('" + rnm.Text + "','" + nrthnm.Text + "','North indian','"+Convert.ToInt32(txt.Text)+"','"+Convert.ToInt32(Session["cid"].ToString())+"','"+total.ToString()+"',GETDATE())";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    String sql = "insert into History(C_Id,R_Name,F_Name,Quantity,Price,ordertime)values('" + Convert.ToInt32(Session["cid"].ToString()) + "','" + rnm.Text + "','" + nrthnm.Text + "','" + Convert.ToInt32(txt.Text) + "','" + total.ToString() + "',GETDATE())";
                    SqlCommand cm = new SqlCommand(sql, con);
                    cm.ExecuteNonQuery();
                    con.Close();
                      
                }
                
          
            }
            if(Session["Gridsouth"] != null)
            {

                Label rsnm;
                Label sdice;
                Label  sthnm;

                Decimal stotal;
                TextBox qnty;
                foreach (GridViewRow row in gvSouth.Rows)
                {
                    rsnm = (Label)row.Cells[0].FindControl("Label2");
                    sthnm = (Label)row.Cells[1].FindControl("Label3");
                    sdice = (Label)row.Cells[2].FindControl("Label1");

                    qnty = (TextBox)row.Cells[3].FindControl("TextBox2");
                    stotal = Decimal.Parse(sdice.Text) * Decimal.Parse(qnty.Text);

                    con.Open();
                    String query = "insert into [Order](R_Name,F_Name,F_Type,Dieces,C_Id,Pay,Datetime)values('" + rsnm.Text + "','" + sthnm.Text + "','South indian','" + Convert.ToInt32(qnty.Text) + "','" + Convert.ToInt32(Session["cid"].ToString()) + "','" + stotal.ToString() + "',GETDATE())";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    String sql = "insert into History(C_Id,R_Name,F_Name,Quantity,Price,ordertime)values('" + Convert.ToInt32(Session["cid"].ToString()) + "','" + rsnm.Text + "','" + sthnm.Text + "','" + Convert.ToInt32(qnty.Text) + "','" + stotal.ToString() + "',GETDATE())";
                    SqlCommand cm = new SqlCommand(sql, con);
                    cm.ExecuteNonQuery();
                    con.Close();
                }

            }

            if(Session["Gridwestern"] != null)
            {
                Label rwnm;
                Label wdice;
                Label wthnm;

                Decimal wtotal;
                TextBox qnty;
                foreach (GridViewRow row in gvWestern.Rows)
                {
                    rwnm = (Label)row.Cells[0].FindControl("Label1");
                    wthnm = (Label)row.Cells[1].FindControl("Label2");
                    wdice = (Label)row.Cells[2].FindControl("Label3");

                    qnty = (TextBox)row.Cells[3].FindControl("TextBox2");
                    wtotal = Decimal.Parse(wdice.Text) * Decimal.Parse(qnty.Text);

                    con.Open();
                    String query = "insert into [Order](R_Name,F_Name,F_Type,Dieces,C_Id,Pay,Datetime)values('" + rwnm.Text + "','" + wthnm.Text + "','Western','" + Convert.ToInt32(qnty.Text) + "','" + Convert.ToInt32(Session["cid"].ToString()) + "','" + wtotal.ToString() + "',GETDATE())";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    String histry = "insert into History(C_Id,R_Name,F_Name,Quantity,Price,ordertime)values(" + Convert.ToInt32(Session["cid"].ToString()) + ",'" + rwnm.Text + "','" + wthnm.Text + "'," + Convert.ToInt32(qnty.Text) + ",'" + wtotal.ToString() + "',GETDATE())";
                    SqlCommand cm = new SqlCommand(histry, con);
                    cm.ExecuteNonQuery();
                    con.Close();
                }

            }
            string url = "https://www.paypal.com/us/cgi-bin/webscr";
            var builder = new StringBuilder();
            builder.Append(url);
            builder.AppendFormat("?cmd=_xclick&business={0}", HttpUtility.UrlEncode("shetty.hema@rocketmail.com"));
            builder.Append("&lc=US&no_note=0&currency_code=USD");
            builder.AppendFormat("&amount={0}", string.Format("{0:F2}", decimal.Parse(lbl_total.Text)));

            Response.Redirect(builder.ToString());
        }

     

        


                
        }

        
    }
