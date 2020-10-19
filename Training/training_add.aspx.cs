using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Training_training_add : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("../adminEmployee/admin_login.aspx");
        }

    }
    protected void tccode_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }

    protected void reset1_Click(object sender, EventArgs e)
    {
        Response.Redirect("training_add.aspx");
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        if(trainingname.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Training name is empty ')", true);
            return;
        }
        else if(description.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Description is empty ')", true);
            return;
        }
        else if(company.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Company name is empty ')", true);
            return;
        }
        else if(place.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Place of Training is empty ')", true);
            return;
        }
        else if(time.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Training time is empty ')", true);
            return;
        }
        else if(edate.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Training end date is empty ')", true);
            return;
        }
        else if(sdate.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Training start date is empty ')", true);
            return;
        }
        else
        {
            con.Open();
            SqlCommand command = con.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = "INSERT INTO training_details (name, description, start_date, end_date, company, place) VALUES('"+trainingname.Text+"', '"+description.Text+"', '"+sdate.Text+"', '"+edate.Text+"', '"+company.Text+"', '"+place.Text+"')";
            command.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ScriptKey", "alert('New Training has been created succesfully');window.location='training_view.aspx'; ", true);


        }
    }
}