using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminEmployee_employee_status : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }

        g1.Visible = false;
        g2.Visible = false;
        pending.Visible = false;
        stopped.Visible = false;
        completed.Visible = false;
        completedlabel.Visible = false;
        stoppedlabel.Visible = false;
        pendingLabel.Visible = false;

        g3.Visible = false;
        g4.Visible = false;
        g5.Visible = false;
        g6.Visible = false;
        g7.Visible = false;
        g8.Visible = false;
        g9.Visible = false;
        g10.Visible = false;
        g11.Visible = false;
        Div1.Visible = false;





    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Choose Search by Id or by Name')", true);
            return;
        }
        String sel = "";
        if (RadioButtonList1.Text == "1")
        {
            sel = DropDownList1.SelectedValue;
        }
        else
        {
            sel = DropDownList2.SelectedValue;
        }

        //employee name
        con.Open();
        String query = "select employee_table.emp_name from employee_table where employee_table.emp_id = '" + sel + "'";
        SqlCommand empnm = new SqlCommand(query, con);
        Label11.Text = empnm.ExecuteScalar().ToString();
        con.Close();

        //managers details
        con.Open();
        query = "select employee_table.emp_name from employee_table where emp_id in( select emp_id from managers where manager_id in(select manager_id from employee_under_managers where employee_under_managers.employee_id = '" + sel + "'))";
        SqlCommand cmdID = new SqlCommand(query, con);
        Label2.Text = cmdID.ExecuteScalar().ToString();


        query = "select employee_under_managers.manager_id from employee_under_managers where employee_under_managers.employee_id = '" + sel + "'";
        SqlCommand cmdMn = new SqlCommand(query, con);
        Label1.Text = cmdMn.ExecuteScalar().ToString();
        con.Close();


        //pendings
        con.Open();
        query = "select projects.name,projects.expected_date from projects where status='Pending' and project_id in(select project_id from employee_assigned_projects where employee_id ='" + sel + "')";
        SqlCommand cmd6 = new SqlCommand(query, con);
        SqlDataReader res6 = cmd6.ExecuteReader();
        if (res6.HasRows)
        {
            DataTable dataTable2 = new DataTable();
            dataTable2.Columns.Add("Name of Project");
            dataTable2.Columns.Add(" | Expected End Date");
            SqlDataReader reader2 = res6;
            while (reader2.Read())
            {
                DataRow row1 = dataTable2.NewRow();
                row1["Name of Project"] = reader2["name"];
                row1[" | Expected End Date"] = reader2["expected_date"].ToString().Replace("12.00.00 AM", "");
                dataTable2.Rows.Add(row1);
            }
            pending.DataSource = dataTable2;
            pending.DataBind();
            pending.Visible = true;
        }
        else
        {
            pendingLabel.Visible = true;
        }
        con.Close();


        //completed
        con.Open();
        query = "select projects.name,projects.final_date from projects where status='Completed' and project_id in(select project_id from employee_assigned_projects where employee_id ='" + sel + "')";
        SqlCommand cmd5 = new SqlCommand(query, con);
        SqlDataReader res5 = cmd5.ExecuteReader();
        if (res5.HasRows)
        {
            DataTable dataTable1 = new DataTable();
            dataTable1.Columns.Add("Name of Project");
            dataTable1.Columns.Add(" | Finished Date");
            SqlDataReader reader1 = res5;
            while (reader1.Read())
            {
                DataRow row1 = dataTable1.NewRow();
                row1["Name of Project"] = reader1["name"];
                row1[" | Finished Date"] = reader1["final_date"].ToString().Replace("12.00.00 AM", "");
                dataTable1.Rows.Add(row1);
            }
            completed.DataSource = dataTable1;
            completed.DataBind();
            completed.Visible = true;
        }
        else
        {
            completedlabel.Visible = true;
        }
        con.Close();


        //stopped
        con.Open();
        query = "select projects.name,projects.final_date from projects  where status='Stopped' and project_id in(select project_id from employee_assigned_projects where employee_id ='" + sel + "')";
        SqlCommand cmd4 = new SqlCommand(query, con);
        SqlDataReader res4 = cmd4.ExecuteReader();

        if (res4.HasRows)
        {
            

            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("Name of Project");
            dataTable.Columns.Add(" | Date of Termination");
            SqlDataReader reader = res4;
            while (reader.Read())
            {
                DataRow row = dataTable.NewRow();
                row["Name of Project"] = reader["name"];
                row[" | Date of Termination"] = reader["final_date"].ToString().Replace("12.00.00 AM", "");
                dataTable.Rows.Add(row);
            }
            stopped.DataSource = dataTable;
            stopped.DataBind();
            stopped.Visible = true;
        }
        else
        {
            stoppedlabel.Visible = true;
        }
        con.Close();

        g3.Visible = true;
        g4.Visible = true;
        g5.Visible = true;
        g6.Visible = true;
        g7.Visible = true; 
        g8.Visible = true;
        g9.Visible = true;
        g10.Visible = true; 
        g11.Visible = true;
        Div1.Visible = true;



    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(RadioButtonList1.Text == "1")
        {
           g1.Visible = true;
        }
        else
        {
            g2.Visible = true;
        }
    }
}