using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class candidates_candidate_add : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-P9TCKPP;Initial Catalog=Test;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(this.IsPostBack)
        {
            pwd.Attributes["value"] = pwd.Text;
        }
        

    }
 

    protected void submit_Click(object sender, EventArgs e)
    {
        if (candidate_name.Text == "")
        {
            // Response.Write("<script>alert('Candidate Name cannot be empty')</script>")
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Candiate Name is empty')", true);
            return;
        }
        else if (dob.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Dob is empty')", true);
            return;
        }
        else if (gender.SelectedValue.ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Gender is empty')", true);
            return;
        }
        else if (address.ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Address is empty')", true);
            return;
        }

        else if (mobile_code.SelectedValue.ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Select Country code')", true);
            return;
        }

        else if (contact.ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mobile number is empty')", true);
            return;
        }

        else if (qualifications.SelectedValue.ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('select Qaulifications')", true);
            return;
        }

        else if (experience.SelectedValue.ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Select Experience')", true);
            return;
        }

        else if (post.SelectedValue.ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Select Post')", true);
            return;
        }
        else if (references.ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Enter References')", true);
            return;
        }
        else if (email.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Enter Email')", true);
            return;
        }
        else if (pwd.Attributes["value"].ToString() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password cannot be empty')", true);
        }
        else if((!terms.Checked))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Accept terms and condition ')", true);
            return;
        }
        else
        {



            con.Open();

            profile_pic.SaveAs(Server.MapPath("profile_pics/") + Path.GetFileName(profile_pic.FileName));
            String profile_link = "profile_pics/" + Path.GetFileName(profile_pic.FileName);

            cv_pic.SaveAs(Server.MapPath("cv/") + Path.GetFileName(cv_pic.FileName));
            String cv_link = "cv/" + Path.GetFileName(cv_pic.FileName);

            String current_date = DateTime.Now.ToString("dd/MM/yyyy");


            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into candidate_details values" +
                "('" + candidate_name.Text + "', '" + dob.Text + "', '" + gender.Text.ToString() + "', '" + address.Value.ToString() + "', '" + mobile_code.SelectedValue.ToString() + "','" + contact.Value.ToString() + "', '" + qualifications.SelectedValue.ToString() + "', '" + experience.SelectedValue.ToString() + "', '" + post.SelectedValue.ToString() + "', '" + references.Value.ToString() + "', '" + cv_link + "', '" + profile_link + "', '" + current_date + "', '" + email.Text + "', '" + pwd.Attributes["value"].ToString() + "')";

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("candidate_add.aspx");
        }
    }
}