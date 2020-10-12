using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class projects_project_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("project_login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        projectId.Text= DropDownList1.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();

        String query = "select * from projects where project_id='"+projectId.Text+"'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();

        managerId.Text = res[1].ToString();
        projectName.Text = res[2].ToString();
        //DateTime d = DateTime.ParseExact(res[3].ToString(), "dd/MM/yyyy", null);
        startLabel.Text = res[3].ToString().Replace("12.00.00 AM", "");
        expectedLabel.Text = res[4].ToString().Replace("12.00.00 AM", ""); 


        budget.Text = res[7].ToString();
        labour.Text = res[8].ToString();
        material.Text = res[9].ToString();
        total.Text = res[10].ToString();


        //chanening color:
        projectId.ForeColor = System.Drawing.Color.Green;
        managerId.ForeColor = System.Drawing.Color.Green;
        projectName.ForeColor = System.Drawing.Color.Green;
        startLabel.ForeColor = System.Drawing.Color.Green;
        expectedLabel.ForeColor = System.Drawing.Color.Green;
        budget.ForeColor = System.Drawing.Color.Green;
        labour.ForeColor = System.Drawing.Color.Green;
        material.ForeColor = System.Drawing.Color.Green;
        total.ForeColor = System.Drawing.Color.Green;

        con.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if(budget.Text == "" || labour.Text == "" || material.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Fetch data using Search')", true);
        }

        if (start.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Select new start Date')", true);
        }

        if (expected.Text == "")
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Select new expeccted Date')", true);

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-P9TCKPP;Initial Catalog=Test;Integrated Security=True");
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        int total = int.Parse(labour.Text) + int.Parse(material.Text);
        cmd.CommandText = "update projects set start_date='" + start.Text + "', expected_date='" + expected.Text + "', budget='" + int.Parse(budget.Text) + "', labor='" + int.Parse(labour.Text) + "', material='" + int.Parse(material.Text) + "', total='" + total + "' where project_id='"+projectId.Text+"' ";
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Updation Was Successfull!!')", true);
        
    }

   
}