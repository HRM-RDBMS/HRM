using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class candidates_candidate_registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-P9TCKPP;Initial Catalog=Test;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(this.IsPostBack)
        {
            pwd2.Attributes["value"] = pwd2.Text;

            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int count = 0;
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con1.Open();

        String query = "select count(*) from candidate_details where email_id='"+email1.Text+"';";
        SqlCommand cmd = new SqlCommand(query, con1);

        
        Label1.Text = cmd.ExecuteScalar().ToString();
        Label2.Text = email1.Text;
        count = (Int32)cmd.ExecuteScalar();
        
        if (count == 1)
        {
            Response.Write("ggh");
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error: An account with this email Id already Exists')", true);
            
        }
        else
        {
            /*
             
            SqlCommand command = con.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "INSERT INTO candidate_details(email_id, password) VALUES('" + Text2.Text + "', '" + pwd2.Attributes["value"].ToString() + "')";
            command.ExecuteNonQuery();
            con.Close();
            Response.Redirect("candidate_login");
            */
        }
    }
}