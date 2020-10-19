using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class employees_employee_leave : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] == null)
        {
            Response.Redirect("employee_login.aspx");
        }
        GridView1.Visible = false;
        Label4.Visible = false;
        Label3.Text = Session["userId"].ToString();
    }

    protected void status_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "select * from Leave where employe_id  ='" + Session["userId"].ToString() + "'";
        SqlCommand cmd6 = new SqlCommand(query, con);
        SqlDataReader res6 = cmd6.ExecuteReader();
        if (res6.HasRows)
        {
           

            DataTable dataTable2 = new DataTable();
            dataTable2.Columns.Add("Leave Reason");
            dataTable2.Columns.Add("From");
            dataTable2.Columns.Add("Till");
            dataTable2.Columns.Add("Approval");
            SqlDataReader reader2 = res6;
            while (reader2.Read())
            {
                DataRow row1 = dataTable2.NewRow();
                row1["Leave Reason"] = reader2["reason"];
                row1["From"] = reader2["dt_from"].ToString().Replace("12.00.00 AM", "");
                row1["Till"] = reader2["till"].ToString().Replace("12.00.00 AM", "");
                row1["Approval"] = reader2["approval"];
                dataTable2.Rows.Add(row1);
            }
            GridView1.DataSource = dataTable2;
            GridView1.DataBind();
            GridView1.Visible = true;
        }
        else
        {
            Label4.Visible = true;
        }


        con.Close();
    }

    protected void leave_Click(object sender, EventArgs e)
    {

    }

    protected void apply_Click(object sender, EventArgs e)
    {
        if(dt_till.Text == "" || dt_from.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please enter Dates')", true);
            return;
        }
        else if(reason.Value.ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please state your Reason')", true);
            return;
        }
        else
        {
            con.Open();
            String msg = "Pending";
            SqlCommand command = con.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "INSERT INTO Leave(employe_id, dt_from, till, reason, approval) VALUES('" + Label3.Text + "' ,'" + dt_from.Text + "', '" + dt_till.Text + "', '" + reason.Value.ToString() + "', '"+msg+"' )";
            command.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ScriptKey", "alert('Leave Request was done Successfully');window.location='employee_leave.aspx'; ", true);
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Leave Request was done Successfully ')", true);

        }
    }
}