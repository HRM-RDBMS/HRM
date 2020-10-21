using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



public partial class testing : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        String query = "select projects.name,projects.final_date from projects  where status='Stopped' and project_id in(select project_id from employee_assigned_projects where employee_id=20202001)";
        SqlCommand cmd4 = new SqlCommand(query, con);
        SqlDataReader res4 = cmd4.ExecuteReader();
       
        
           // Label1.Text = res4[0].ToString() + " " + res4[1].ToString();
            stopgrid.DataSource = res4;
            stopgrid.DataBind();
            // stoplabel.Visible = false;
            stopgrid.Visible = true;
        

        con.Close();

    }

    protected void Gvbind()
    {
        
    }
}