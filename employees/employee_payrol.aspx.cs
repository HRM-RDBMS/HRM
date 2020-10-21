using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class employees_employee_payrol : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] == null)
        {
            Response.Redirect("employee_login.aspx");
        }

        Label1.Visible = false;

        

        con.Open();
        String query = "select* from employee_salary where employee_id ='" + Session["userId"].ToString() + "'";
        SqlCommand cmd6 = new SqlCommand(query, con);
        SqlDataReader res6 = cmd6.ExecuteReader();

        if (res6.HasRows)
        {
           

            DataTable dataTable2 = new DataTable();
            dataTable2.Columns.Add("Pay Month");
            dataTable2.Columns.Add("Basic Salary");
            dataTable2.Columns.Add("Allowances");
            dataTable2.Columns.Add("Deductions");
            dataTable2.Columns.Add("Total Salary");
            SqlDataReader reader2 = res6;
            while (reader2.Read())
            {
                DataRow row1 = dataTable2.NewRow();
               
                row1["Pay Month"] = reader2["month"].ToString().Replace("12.00.00 AM", "");
                row1["Basic Salary"] = reader2["basic"];
                row1["Allowances"] = reader2["allowances"];
                row1["Deductions"] = reader2["deductions"];
                row1["Total Salary"] = reader2["total"];
                dataTable2.Rows.Add(row1);
            }
            GridView1.DataSource = dataTable2;
            GridView1.DataBind();
            GridView1.Visible = true;
        }
        else
        {
            Label1.Visible = true;
            GridView1.Visible = false;
        }


        con.Close();
    }
}