using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class projects_project_status : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("project_login.aspx");
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        projectId.Text = DropDownList1.Text;
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con1.Open();

        String query = "select * from projects where project_id='" + projectId.Text + "'";
        SqlCommand cmd1 = new SqlCommand(query, con1);
        SqlDataReader res = cmd1.ExecuteReader();
        res.Read();
        if(res[11].ToString() == "Completed" || res[11].ToString() == "Stopped")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Project is already Completed or Stopped')", true);
            return;
        }
        con1.Close();
        

        if (change_status.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Not Selected staus of project')", true);
            return;
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        if(change_status.Text == "Completed"  && end.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Final date is not seleccted')", true);
            return;
        }

        if (change_status.Text == "Stopped" && end.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Final date is not seleccted')", true);
            return;
        }
       

        if (end.Text == "")
        {
            cmd.CommandText = "update projects set status='" + change_status.SelectedValue + "' where project_id='" + projectId.Text + "' ";
        }
        else
        {
            cmd.CommandText = "update projects set final_date='" + end.Text + "', status='" + change_status.SelectedValue + "' where project_id='" + projectId.Text + "' ";
        }

       
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Updation Was Successfull!!')", true);
    }

    protected void search_Click(object sender, EventArgs e)
    {
        projectId.Text = DropDownList1.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();

        String query = "select * from projects where project_id='" + projectId.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();

        expectedLabel.Text = res[4].ToString().Replace("12.00.00 AM", "");
        current.Text = res[11].ToString();
        if(current.Text == "Completed" || current.Text == "Stopped")
        {
            ggh.Visible = true;
            final.Text = res[5].ToString().Replace("12.00.00 AM", "");
        }
        else
        {
            ggh.Visible = false;
        }

        con.Close();
    }
}