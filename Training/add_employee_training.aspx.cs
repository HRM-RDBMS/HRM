using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Training_add_employee_training : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("../adminEmployee/admin_login.aspx");
        }
    }

    protected void search_Click(object sender, EventArgs e)
    {
        projectId.Text = DropDownList1.Text;
    }

    protected void add_Click(object sender, EventArgs e)
    {
        if (projectId.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Training Id is not selected')", true);

            return;
        }
        else if (employeeId.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Employee Id is not selected')", true);

            return;
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
            con.Open();
            String query = "select * from employee_training_details where employee_id='"+employeeId.Text+"' and training_id='"+projectId.Text+"'";
            SqlCommand cmd1 = new SqlCommand(query, con);
            SqlDataReader res1 = cmd1.ExecuteReader();
            if (res1.HasRows)
            {
                res1.Read();
                String ggh = res1[1].ToString();
                con.Close();
                if (ggh == employeeId.Text)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Employee is already undergoing This Training')", true);

                    return;

                }
            }
            else
            {
                con.Close();
            }

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            String pen = "Pending";
            cmd.CommandText = "INSERT INTO employee_training_details( training_id, employee_id, training_status) VALUES('" + projectId.Text + "', '" + employeeId.Text + "', '"+pen+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ScriptKey", "alert('Employee is successfully assigned to the training');window.location='training_view.aspx'; ", true);

        }
    }

    protected void employee_search_Click(object sender, EventArgs e)
    {
        employeeId.Text = DropDownList3.Text;
    }
}