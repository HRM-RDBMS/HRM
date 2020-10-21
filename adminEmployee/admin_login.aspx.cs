using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack)
        {
            password.Attributes["value"] = password.Text;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();
        String query = "select count(*) from admin  where user_id='" + username.Text + "' and password='" + password.Attributes["value"].ToString() +"'";
        SqlCommand cmd = new SqlCommand(query, con);
        int res = (Int32)cmd.ExecuteScalar();
        if (res == 1)
        {
            Session["admin"] = username.Text;
            Response.Redirect("../main.aspx");
        }
        else
        {
            Response.Write("Invalid Credentials");
        }
    }
}