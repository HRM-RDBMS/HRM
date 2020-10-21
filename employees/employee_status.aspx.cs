using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class employees_employee_status : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] == null)
        {
            Response.Redirect("employee_login.aspx");
        }

        if (!IsPostBack)
        {
            pendingg();
            completedd();
            ended();
            pendingtrain();
            completedtrain();
        }



        //con.Open();

        /*String query = "select employee_table.emp_name from employee_table where employee_table.emp_id in(select managers.emp_id from managers where manager_id in(select employee_under_managers.manager_id from employee_under_managers where employee_under_managers.employee_id = '" + Session["userId"].ToString() + "'))";

        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        if (res.Read())
        {
            supervisor.InnerText = ": " + res[0].ToString();
        }
        else
        {
            supervisor.InnerText = ": No Data";
        }
        con.Close();
        con.Open();

        String query = "select * from employee_table where emp_id ='" + Session["userId"].ToString() + "'";
        SqlCommand cmd1 = new SqlCommand(query, con);
        SqlDataReader res1 = cmd1.ExecuteReader();
        res1.Read();
        String url = "~/candidates/" + res1[12].ToString();
        img.Style["background-image"] = Page.ResolveUrl(url);
        con.Close();

        con.Open();


        query = "select * from employee_status where emp_id ='" + Session["userId"].ToString() + "'";
        SqlCommand cmd2 = new SqlCommand(query, con);
        SqlDataReader res2 = cmd2.ExecuteReader();
        if (res2.Read())
        {
            division.InnerText = ": " + res2[1].ToString();
            position.InnerText = ": " + res2[2].ToString();
            wrkgrp.InnerText = ": " + res2[3].ToString();
        }
        else
        {
            division.InnerText = ": Not yet assigned";
            position.InnerText = ": Not yet assigned";
            wrkgrp.InnerText = ": Not yet assigned";
        }
        con.Close();
        */
        con.Open();
        String query = "select count(*) from employee_assigned_projects where employee_id ='" + Session["userId"].ToString() + "'";
        SqlCommand cmd3 = new SqlCommand(query, con);
        SqlDataReader res3 = cmd3.ExecuteReader();
        if (res3.Read())
        {
            totalProjects.InnerText = ": " + res3[0].ToString() + " Projects";
        }
        con.Close();

        con.Open();
        query = "select count(*) from employee_training_details where employee_id='" + Session["userId"].ToString() + "'";
        SqlCommand cmd4 = new SqlCommand(query, con);
        SqlDataReader res4 = cmd3.ExecuteReader();
        if (res4.Read())
        {
            totaltraing.InnerText = ": " + res4[0].ToString() + " Trainings";
        }
        con.Close();








    }

    protected void pendingtrain()
    {
        con.Open();
        String query = "select training_details.name,training_details.company from training_details where training_id in(select employee_training_details.training_id from employee_training_details where training_status='Pending' and employee_id ='" + Session["userId"].ToString() + "')";
        SqlCommand cmd6 = new SqlCommand(query, con);
        SqlDataReader res6 = cmd6.ExecuteReader();

        if (res6.HasRows)
        {
            Label1.Visible = false;

            DataTable dataTable2 = new DataTable();
            dataTable2.Columns.Add("Name of Training");
            dataTable2.Columns.Add("Company");
            SqlDataReader reader2 = res6;
            while (reader2.Read())
            {
                DataRow row1 = dataTable2.NewRow();
                row1["Name of training"] = reader2["name"];
                row1["Company"] = reader2["company"];
                dataTable2.Rows.Add(row1);
            }
            GridView2.DataSource = dataTable2;
            GridView2.DataBind();
            GridView2.Visible = true;
        }
        else
        {
            Label1.Visible = true;
        }


        con.Close();
    }

    protected void completedtrain()
    {
        con.Open();
        String query = "select training_details.name,training_details.company from training_details where training_id in(select employee_training_details.training_id from employee_training_details where training_status='Completed' and employee_id ='" + Session["userId"].ToString() + "')";
        SqlCommand cmd6 = new SqlCommand(query, con);
        SqlDataReader res6 = cmd6.ExecuteReader();

        if (res6.HasRows)
        {
            Label2.Visible = false;

            DataTable dataTable2 = new DataTable();
            dataTable2.Columns.Add("Name of Training");
            dataTable2.Columns.Add("Company");
            SqlDataReader reader2 = res6;
            while (reader2.Read())
            {
                DataRow row1 = dataTable2.NewRow();
                row1["Name of training"] = reader2["name"];
                row1["Company"] = reader2["company"];
                dataTable2.Rows.Add(row1);
            }
            GridView3.DataSource = dataTable2;
            GridView3.DataBind();
            GridView3.Visible = true;
        }
        else
        {
            Label2.Visible = true;
        }


        con.Close();
    }

    protected void pendingg()
    {

        con.Open();
        String query = "select projects.name,projects.start_date from projects where status='Pending' and project_id in(select project_id from employee_assigned_projects where employee_id ='" + Session["userId"].ToString() + "')";
        SqlCommand cmd6 = new SqlCommand(query, con);
        SqlDataReader res6 = cmd6.ExecuteReader();

        if (res6.HasRows)
        {
            pendinglabel.Visible = false;

            DataTable dataTable2 = new DataTable();
            dataTable2.Columns.Add("Name of Project");
            dataTable2.Columns.Add(" | Expected End Date");
            SqlDataReader reader2 = res6;
            while (reader2.Read())
            {
                DataRow row1 = dataTable2.NewRow();
                row1["Name of Project"] = reader2["name"];
                row1[" | Expected End Date"] = reader2["start_date"].ToString().Replace("12.00.00 AM", "");
                dataTable2.Rows.Add(row1);
            }
            pendinggrid.DataSource = dataTable2;
            pendinggrid.DataBind();
        }
        else
        {
            pendinglabel.Visible = true;
        }


        con.Close();
    }



    protected void completedd()
    {
        
        con.Open();
        String query = "select projects.name,projects.start_date from projects where status='Completed' and project_id in(select project_id from employee_assigned_projects where employee_id ='" + Session["userId"].ToString() + "')";
        SqlCommand cmd5 = new SqlCommand(query, con);
        SqlDataReader res5 = cmd5.ExecuteReader();

        if (res5.HasRows)
        {
            Label11.Visible = false;

            DataTable dataTable1 = new DataTable();
            dataTable1.Columns.Add("Name of Project");
            dataTable1.Columns.Add(" | Finished Date");
            SqlDataReader reader1 = res5;
            while (reader1.Read())
            {
                DataRow row1 = dataTable1.NewRow();
                row1["Name of Project"] = reader1["name"];
                row1[" | Finished Date"] = reader1["start_date"].ToString().Replace("12.00.00 AM", "");
                dataTable1.Rows.Add(row1);
            }
            GridView1.DataSource = dataTable1;
            GridView1.DataBind();
        }
        else
        {
            Label11.Visible = true;
        }


        con.Close();
    }

    protected void ended()
    {
        //stopped projects
        con.Open();
        String query = "select projects.name,projects.final_date from projects  where status='Stopped' and project_id in(select project_id from employee_assigned_projects where employee_id ='" + Session["userId"].ToString() + "')";
        SqlCommand cmd4 = new SqlCommand(query, con);
        SqlDataReader res4 = cmd4.ExecuteReader();

        if (res4.HasRows)
        {
            stp.Visible = false;

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
            stopgrid.DataSource = dataTable;
            stopgrid.DataBind();
        }
        else
        {
            stp.Visible = false;
        }
        con.Close();
    }



}