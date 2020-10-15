using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class projects_project_delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("project_login.aspx");
        }
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        
        cmd.CommandText = "delete from projects where project_id='" + projectId.Text + "' ";
        cmd.ExecuteNonQuery();
        con.Close();
        //string str = "Deletion Was Successfull!!, Click ok to refresh Page";
        //this.ClientScript.RegisterStartupScript(typeof(Page), "Popup", "ConfirmApproval('" + str + "');", true);
        //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Deletion Was Successfull!!')", true);
        Response.Redirect("project_delete.aspx");
        
    }

    protected void search_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();

        String query = "select * from projects where project_id='" + projectId.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();

        managerID.Text = res[1].ToString();
        projectName.Text = res[2].ToString();
        //DateTime d = DateTime.ParseExact(res[3].ToString(), "dd/MM/yyyy", null);
        start_date.Text = res[3].ToString().Replace("12.00.00 AM", "");
        expectedDate.Text = res[4].ToString().Replace("12.00.00 AM", "");

        final_date.Text = res[5].ToString().Replace("12.00.00 AM", "");
        budget.Text = res[7].ToString();
        labourcost.Text = res[8].ToString();
        materialcost.Text = res[9].ToString();
        totalcost.Text = res[10].ToString();
        status.Text = res[11].ToString();


        //chanening color:
        final_date.ForeColor = System.Drawing.Color.Blue;
        projectId.ForeColor = System.Drawing.Color.Blue;
        managerID.ForeColor = System.Drawing.Color.Blue;
        projectName.ForeColor = System.Drawing.Color.Blue;
        start_date.ForeColor = System.Drawing.Color.Blue;
        expectedDate.ForeColor = System.Drawing.Color.Blue;
        budget.ForeColor = System.Drawing.Color.Blue;
        labourcost.ForeColor = System.Drawing.Color.Blue;
        materialcost.ForeColor = System.Drawing.Color.Blue;
        totalcost.ForeColor = System.Drawing.Color.Blue;
        status.ForeColor = System.Drawing.Color.Blue;


        con.Close();
        con.Open();
        query = "select count(*) from employee_assigned_projects where project_id='" + projectId.Text + "'";
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