using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class candidates_candidate_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
            Response.Redirect("~/candidateSelections/select_candidates.aspx");
        if(Session["userId"] != null)
        {
            Response.Redirect("../candidate_menu.aspx");
        }
        if (this.IsPostBack)
        {
            pswd.Attributes["value"] = pswd.Text;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());

        con.Open();

        string query = "select count(*) from candidate_details where id='" + candidateId.Text + "' and password='" + pswd.Attributes["value"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        int res = (Int32)cmd.ExecuteScalar();
        if (res == 1)
        {
            Session["userId"] = candidateId.Text;
            Response.Redirect("../candidate_menu.aspx");
        }
        else
        {
            Response.Write("Invalid Credentials");
        }
    }
}