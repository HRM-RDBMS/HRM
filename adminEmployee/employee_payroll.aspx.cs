using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class adminEmployee_employee_payroll : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
    String sel = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if(Session["admin"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }
        g1.Visible = false;
        g2.Visible = false;

        g3.Visible = false;
        g4.Visible = false;
        g5.Visible = false;
        g6.Visible = false;
        g7.Visible = false;
        g8.Visible = false;
        payslips.Visible = false;
        Label1.Visible = false;
        Label1.ForeColor = System.Drawing.Color.White;


    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text == "1")
        {
            g1.Visible = true;
        }
        else
        {
            g2.Visible = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Choose Search by Id or by Name')", true);
            return;
        }
        
        if (RadioButtonList1.Text == "1")
        {
            sel = DropDownList1.SelectedValue;
        }
        else
        {
            sel = DropDownList2.SelectedValue;
        }
        
        con.Open();
        String query = "select* from employee_salary_amount where employee_id='" + sel + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();
        basic.Value = res[1].ToString();

        g3.Visible = true;
        g4.Visible = true;
        g5.Visible = true;
        g6.Visible = true;
        g7.Visible = true;
        g8.Visible = true;
        g1.Visible = true;
        g2.Visible = true;
        con.Close();

    }

    protected void pay_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Choose Search by Id or by Name')", true);
            return;
        }

        if (RadioButtonList1.Text == "1")
        {
            sel = DropDownList1.SelectedValue;
        }
        else
        {
            sel = DropDownList2.SelectedValue;
        }
        if (total.Value.ToString() == "")
          {
              ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Enter Allowances ')", true);
              return;
          }
        else if(month.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Date Not selected ')", true);
            return;
        }
          else
          {
            con.Open();

            String query = "select * from employee_salary where employee_id ='" + sel + "' and month ='"+month.Text+"'";
            SqlCommand cmd2 = new SqlCommand(query, con);
            SqlDataReader res = cmd2.ExecuteReader();
            if (res.HasRows)
            {
                res.Read();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Payment for this month has been made! ')", true);
                return;
            }
            else
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
           
            cmd.CommandText = "INSERT INTO employee_salary( employee_id, month, basic, allowances, deductions, total) VALUES('"+sel+"', '"+month.Text+"', '"+Int32.Parse(basic.Value.ToString())+"', '"+Int32.Parse(allowances.Text)+"', '"+Int32.Parse(deductions.Value.ToString())+"', '"+Int32.Parse(total.Value.ToString())+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Payemt Done to Employee Successfully!!!')", true);




        }
        

       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Choose Search by Id or by Name')", true);
            return;
        }
        if (RadioButtonList1.Text == "1")
        {
            sel = DropDownList1.SelectedValue;
        }
        else
        {
            sel = DropDownList2.SelectedValue;
        }
        GridView1.Visible = false;
        Label1.Visible = false;
        payslips.Visible = true;

        con.Open();
        String query = " select * from employee_salary  where employee_id= '" + sel + "'";
        SqlCommand cmd4 = new SqlCommand(query, con);
        SqlDataReader res4 = cmd4.ExecuteReader();

        if (res4.HasRows)
        {


            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("Month");
            dataTable.Columns.Add("  |   Basic");
            dataTable.Columns.Add("  |   Allowances");
            dataTable.Columns.Add("  |   Deductions");
            dataTable.Columns.Add("  |   Total");
            SqlDataReader reader = res4;
            while (reader.Read())
            {
                DataRow row = dataTable.NewRow();
                row["Month"] = reader["month"].ToString().Replace("12.00.00 AM", ""); 
                row["  |   Basic"] = reader["basic"];
                row["  |   Allowances"] = reader["allowances"];
                row["  |   Deductions"] = reader["deductions"];
                row["  |   Total"] = reader["total"];
                dataTable.Rows.Add(row);
            }
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
            GridView1.Visible = true;
        }
        else
        {
            Label1.Visible = true;
        }
        con.Close();
    }
}