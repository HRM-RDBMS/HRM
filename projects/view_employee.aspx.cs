using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class projects_view_employee : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("project_login.aspx");
        }
    }

    protected void search_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        
        projectId.Text = DropDownList1.Text;
       

        con.Open();
        String query = "select count(*) from employee_assigned_projects where project_id='" + projectId.Text + "'";
        SqlCommand cmd1 = new SqlCommand(query, con);
        SqlDataReader res1 = cmd1.ExecuteReader();
        res1.Read();
        Label1.Text = res1[0].ToString();
        Label1.ForeColor = System.Drawing.Color.Red;
        con.Close();

        con.Open();
       query = " select employee_table.emp_name from employee_table where emp_id in(select employee_assigned_projects.employee_id from employee_assigned_projects where project_id ='" + projectId.Text + "')";
        SqlCommand cmd2 = new SqlCommand(query, con);
        DropDownList2.DataSource = cmd2.ExecuteReader();
        DropDownList2.DataTextField = "emp_name";
        DropDownList2.DataBind();
        con.Close(); 
    }
}