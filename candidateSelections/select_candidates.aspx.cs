using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class candidateSelections_select_candidates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("../adminEmployee/admin_login.aspx");
        }
    }

    protected void search_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();
        int num = Int32.Parse( DropDownList1.SelectedValue);
        String query = "select * from candidate_details where id = '"+DropDownList1.SelectedValue+"'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();
        //candidate_name.Text = DropDownList1.SelectedValue;
        
        candidate_name.Text = res[1].ToString();

        candidate_dob.Text = res[2].ToString().Replace("12.00.00 AM", "");
        candidate_gender.Text = res[3].ToString();
        address.Value = res[4].ToString();
        candidate_num.Text = res[6].ToString();
        candidate_qual.Text = res[7].ToString();
        candidate_apply.Text = res[13].ToString().Replace("12.00.00 AM", "");
        candidate_exp.Text = res[8].ToString();
        candidate_post.Text = res[9].ToString();
        candidate_ref.Text = res[10].ToString();
       

        String link = "~/candidates/";
        String link2 = "~/candidates/";
        Img1.Attributes["src"] =link + res[11].ToString();
        output.Attributes["src"] =link2 + res[12].ToString();

        
    }

    protected void reject_Click(object sender, EventArgs e)
    {
       if(candidate_name.Text =="")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error: Candidate Not Selected')", true);
            return;
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
            con.Open();
            String query = "select * from candidate_details where id = '" + DropDownList1.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader res = cmd.ExecuteReader();
            res.Read();

            int id = Int32.Parse(res[0].ToString());
            String name = res[1].ToString();
            String dob = res[2].ToString();
            String gender = res[3].ToString();
            String address = res[4].ToString();
            String mobile_code = res[5].ToString();
            String mobile_num = res[6].ToString();
            String qualification = res[7].ToString();
            String expereience = res[8].ToString();
            String post = res[9].ToString();
            String references = res[10].ToString();
            String cv = res[11].ToString();
            String profile_pic = res[12].ToString();
            String apply = res[13].ToString();
            String email = res[14].ToString();
            String pass = res[15].ToString();
            con.Close();

            //updation to candidate_table
            con.Open();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "update candidate_details set review='1' where id='"+id+"'";
            cmd2.ExecuteNonQuery();
            con.Close();

            //inserttion to rejected_candidates
            con.Open();
            SqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandText = "insert into rejected_candidates (candidate_id, name, dob, gender, address, mobile_code, mobile_num, experience, post_applied, referencess, cv, profile_pic, email_id) values ('"+id+"', '"+name+"' ,'"+dob+"' ,'"+gender+"', '"+address+"', '"+mobile_code+"', '"+mobile_num+"', '"+expereience+"', '"+post+"', '"+references+"', '"+cv+"', '"+profile_pic+"' ,'"+email+"')";
            cmd3.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Candidate was Rejected successfully')", true);
            return;


        }

    }

    protected void accept_Click(object sender, EventArgs e)
    {
        if (candidate_name.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error: Candidate Not Selected')", true);
            return;
        }
        else
        {
            /*SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
            con.Open();
            String query = "select * from candidate_details where id = '" + DropDownList1.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader res = cmd.ExecuteReader();
            res.Read();

            int id = Int32.Parse(res[0].ToString());
            con.Close();*/
            string url;
            url = "add_candidateTo_employee.aspx?cand_id=" + DropDownList1.SelectedValue;
            Response.Redirect(url);

            
        }
    }
}