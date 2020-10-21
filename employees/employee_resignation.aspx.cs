using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class employees_employee_resignation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] == null)
        {
            Response.Redirect("employee_login.aspx");
        }
        Label1.Visible = false;
        empID.Text = Session["userId"].ToString();

    }

    protected void status_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();
        String query = "select * from resignation where emp_id='" + Session["userId"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        if(res.Read())
        {
            

            String response = "Your resignation request: " + res[4].ToString() + " with reason:(' " + res[1].ToString() + " ') is :- " + res[3].ToString();
            Label1.Text = response;
        }
        
        Label1.Visible = true;
        con.Close();
    }

    protected void resign_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();

        //checking
        String query = "select * from resignation where emp_id='" + empID.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        if (res.Read())
        {
            if(res[3].ToString() == "Approved")
            {
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your Request is Approved ')", true);
            }

            else if(res[3].ToString() == "Denied")
                {
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your Request is Denied ')", true);

            }
            else
            {
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Request already Submitted, Please keep calm ^-^, HR will review your request shortly ')", true);
                return;
            }
               
        }
        else
        {
            con.Close();
        }
        

        if (reason.Value.ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Reason field is Empty')", true);
            return;
        }
        else if(dt.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Select a Date ')", true);
            return;
        }
        else
        {

            con.Open();
                String status = "Pending";
                SqlCommand command = con.CreateCommand();
                command.CommandType = CommandType.Text;
                command.CommandText = "INSERT INTO resignation(emp_id, reason, date, status) VALUES('" + empID.Text + "' ,'" + reason.Value.ToString() + "', '" + dt.Text + "', '" + status + "')";
                command.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Resignation Request was done Successfully ')", true);
            

           
        }
       

    }
}