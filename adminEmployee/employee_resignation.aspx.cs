using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminEmployee_employee_resignation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }
        g2.Visible = false;
        g4.Visible = false;
        g5.Visible = false;
        g6.Visible = false;
        GridView1.Visible = false;
        GridView2.Visible = false;
        refresh.Visible = false;

        con.Open();
        String query = "select count(*) from resignation where status='Pending'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();
        String text = res[0].ToString();
        if (text != "0")
        {

            Label1.Text = res[0].ToString() + " Employess Request are Pending";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Label1.Text = "No Pending Request";
            Label1.ForeColor = System.Drawing.Color.Green;
        }
        con.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        String id = DropDownList1.SelectedValue;
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update resignation set status='Denied' where emp_id='"+id+"'";  
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Employee's Resignation was Denied Sucessfully ')", true);
        Response.Redirect("employee_resignation.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String id = DropDownList1.SelectedValue;
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update resignation set status='Approved' where emp_id='" + id + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Employee's Resignation was Approved Sucessfully ')", true);
        Response.Redirect("employee_resignation.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        grids.Visible = false;
        String id = DropDownList1.SelectedValue;
        con.Open();
        String query = "select * from resignation where emp_id = '" + id + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        if (res.Read())
        {
            reason.Text = res[1].ToString();
            date.Text = res[2].ToString().Replace("12.00.00 AM", "");
            res.Close();
        }
        else
        {
            Response.Redirect("employee_resignation.aspx");
        }
       

        query = "select * from employee_table where emp_id='"+id+"'";
        SqlCommand cmd2 = new SqlCommand(query, con);
        SqlDataReader res2 = cmd2.ExecuteReader();
        res2.Read();
        employeename.Text = res2[1].ToString();
        con.Close();




        g2.Visible = true;
        g4.Visible = true;
        g5.Visible = true;
        g6.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        g1.Visible = false;
        GridView1.Visible = true;
        GridView2.Visible = false;
        bt.Visible = false;
        refresh.Visible = true;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        g1.Visible = false;
        GridView2.Visible = true;
        GridView1.Visible = false;
        bt.Visible = false;
        refresh.Visible = true;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("employee_resignation.aspx");
    }
}