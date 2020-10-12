using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class candidate_menu : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userId"] == null)
        {
            Response.Redirect("candidates/candidate_login.aspx");
        }

        con.Open();
        String query = "select name from candidate_details where id='"+ Session["userId"].ToString()+"';";
        SqlCommand cmd = new SqlCommand(query, con);
        String res = cmd.ExecuteScalar().ToString();
        res = "Hai " + res + " !!!";
        g.InnerText = res;
        gg.InnerHtml = res;
        gg1.InnerText = res;
        ggh.InnerText = res;

        userid.Text = "Application No: " + Session["userId"].ToString();
        userid.ForeColor = System.Drawing.Color.Red;
    }

    protected void delete_profile_Click(object sender, EventArgs e)
    {

    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("candidates/candidate_login.aspx");
    }
}