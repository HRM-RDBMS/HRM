using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class projects_add_employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void search_Click(object sender, EventArgs e)
    {
        
        projectId.Text = DropDownList1.Text;


        

    }

    protected void employee_search_Click(object sender, EventArgs e)
    {
        employeeId.Text = DropDownList3.Text;

        
    }

    protected void add_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();
        String query = "select employee_assigned_projects.employee_id from employee_assigned_projects where project_id='"+projectId.Text+"'";
        SqlCommand cmd1 = new SqlCommand(query, con);
        SqlDataReader res1 = cmd1.ExecuteReader();
        res1.Read();
        String ggh = res1[0].ToString();
        con.Close();
        if(ggh == employeeId.Text)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Employee is already working on this Project')", true);
            
            return;
            
        }
        else
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO employee_assigned_projects( project_id, employee_id) VALUES('"+projectId.Text+"', '"+employeeId.Text+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Employee is Successfully added to the Project')", true);
            
        }
        
    }
}