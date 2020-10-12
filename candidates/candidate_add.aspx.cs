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
        if (Session["userId"] == null)
        {
            Response.Redirect("candidate_login.aspx");
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());

        con.Open();
        String query = "select name,readyOnly from candidate_details where id='" + Session["userId"].ToString() + "';";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();

        candidateID.Text = Session["userId"].ToString();
        candidate_name.Text = res[0].ToString();
        if(res[1].ToString() == "1")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Cannot Change Details Anymore'); window.location='../candidate_menu.aspx';", true);
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Cannot Change Details ')", true);
            //Response.Redirect("../candidate_menu.aspx");

        }


        con.Close();

    }
 

    protected void submit_Click(object sender, EventArgs e)
    {
        
        if (dob.Text == "")
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
        
        
        
        else if((!terms.Checked))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Accept terms and condition ')", true);
            return;
        }
        else
        {



            con.Open();

            profile_pic.SaveAs(Server.MapPath("profile_pics/") + candidateID.Text + Path.GetFileName(profile_pic.FileName) );
            String profile_link = "profile_pics/" + candidate_name.Text + Path.GetFileName(profile_pic.FileName) ;

            cv_pic.SaveAs(Server.MapPath("cv/") + candidateID.Text + Path.GetFileName(cv_pic.FileName));
            String cv_link = "cv/" + candidateID.Text + Path.GetFileName(cv_pic.FileName) ;

            String current_date = DateTime.Now.ToString("dd/MM/yyyy");

            int num = 1;
           SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update candidate_details set dob='" + dob.Text + "', gender='" + gender.Text.ToString() + "', address='" + address.Value.ToString() + "', mobile_code='" + mobile_code.SelectedValue.ToString() + "', mobile_num='" + contact.Value.ToString() + "', qualifications='" + qualifications.SelectedValue.ToString() + "', experience='" + experience.SelectedValue.ToString() + "', post_applied='" + post.SelectedValue.ToString() + "', referencess='"+references.Value.ToString() +"', cv='" + cv_link + "', profile_pic='" + profile_link + "', applying_date='" + current_date + "', readyOnly='"+num+"' where id='" + Session["userId"].ToString() + "';";

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("../candidate_menu.aspx");
          
        }
    }
}