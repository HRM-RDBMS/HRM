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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] == null)
        {
            Response.Redirect("employee_login.aspx");
        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());

        con.Open();

        String query = "select employee_table.emp_name from employee_table where employee_table.emp_id in ( select emp_id from managers where manager_id in ( select employee_table.manager_id from employee_table where employee_table.emp_id = '"+Session["userId"].ToString()+"'))";

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

        query = "select * from employee_table where emp_id ='" + Session["userId"].ToString() + "'";
        SqlCommand cmd1 = new SqlCommand(query, con);
        SqlDataReader res1 = cmd1.ExecuteReader();
        res1.Read();
        String url = "~/candidates/" + res1[14].ToString();
        img.Style["background-image"] = Page.ResolveUrl(url);
        con.Close();

        con.Open();


        query = "select * from employee_status where emp_id ='" + Session["userId"].ToString() + "'";
        SqlCommand cmd2 = new SqlCommand(query, con);
        SqlDataReader res2 = cmd2.ExecuteReader();
        if(res2.Read())
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

        con.Open();
        query = "select count(*) from employee_assigned_projects where employee_id ='" + Session["userId"].ToString() + "'";
        SqlCommand cmd3 = new SqlCommand(query, con);
        SqlDataReader res3 = cmd3.ExecuteReader();
        if (res3.Read())
        {
            totalProjects.InnerText = ": " + res3[0].ToString() + " Projects";
        }


    }
}