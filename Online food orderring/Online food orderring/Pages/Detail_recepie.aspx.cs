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
    public partial class Detail_recepie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView gvSelected = (GridView)Session["gvSelected"];
        }

      
    }
}