using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["TestConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        
        SqlCommand cmd = new SqlCommand("select * from employee", con);
        con.Open();
        DropDownList1.DataSource = cmd.ExecuteReader();
        
        DropDownList1.DataBind();

    }
}