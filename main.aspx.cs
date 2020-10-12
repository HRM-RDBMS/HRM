using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Web.Security;
using System.Runtime.CompilerServices;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["admin"] != null)
        {
            HyperLink1.Visible = false;
            HyperLink2.Visible = true;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
            con.Open();
            String query = "select name from admin  where user_id='" + Session["admin"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader res = cmd.ExecuteReader();
            res.Read();
            mywelcome.InnerText = "Welcome " + res[0].ToString() + "!";
        }
            
        else
        {
            HyperLink2.Visible = false;
            HyperLink1.Visible = true;
        }
            
    }
   
   

    protected void btn_Click(object sender, EventArgs e)
    {
        Response.Write("herllo");
        Response.Redirect("admin_login.aspx");

    }

    protected void btn2_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Response.Redirect("main.aspx");
    }
}