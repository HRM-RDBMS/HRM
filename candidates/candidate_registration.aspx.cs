using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class candidates_candidate_registration : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {


        if (this.IsPostBack)
        {
            pwd1.Attributes["value"] = pwd1.Text;

            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
    



        //Label1.Text = cmd.ExecuteScalar().ToString();
        //Label2.Text = email1.Text;
       
        if (username.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Username is empty')", true);
            return;
        }
        else if(email1.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('EmailID is empty')", true);
            return;
        }
        else if(pwd1.Text == "" || pwd2.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('password is empty')", true);
            return;
        }
        else if(pwd1.Text.Length < 6)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password is less than 6 chars')", true);
                return;
            }

        else
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
            con1.Open();
            String query = "select count(*) from candidate_details where email_id='" + email1.Text + "';";
            SqlCommand cmd = new SqlCommand(query, con1);
           int count = (Int32)cmd.ExecuteScalar();
            if (count == 1)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error: An account with this email Id already Exists')", true);
                return;
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-P9TCKPP;Initial Catalog=Test;Integrated Security=True");
                con.Open();

                SqlCommand command = con.CreateCommand();
                command.CommandType = CommandType.Text;
                command.CommandText = "INSERT INTO candidate_details(name, email_id, password) VALUES('" + username.Text + "' ,'" + email1.Text + "', '" + pwd1.Attributes["value"].ToString() + "')";
                command.ExecuteNonQuery();

                String query2 = "select id from candidate_details where email_id = '" + email1.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con1);
                String response = cmd2.ExecuteScalar().ToString();
                // Label1.Text = response;
                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Succesfully Registered with Application Id: ' + response')", true);

                //Response.Redirect("candidate_login.aspx");
                //*/
                Session["userId"] = response;
                //Session["userName"] = username.Text;

                Response.Redirect("candidate_login.aspx");

                con.Close();
            }
            ///*
            
            con1.Close();
        }
        
    }
}