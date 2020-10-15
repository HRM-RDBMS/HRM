using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class candidateSelections_add_candidateTo_employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("../admin_login.aspx");
        }
        if (Request.QueryString["cand_id"] == null)
        {
            Response.Redirect("select_candidates.aspx");
        }
        Label6.Text = Request.QueryString["cand_id"].ToString();
    }

    protected void add_candidate_Click(object sender, EventArgs e)
    {
        //int id = Int32.Parse(Request.QueryString["cand_id"]);
        if(post2.SelectedValue == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error: Candidate Not Selected')", true);
            return;
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
            con.Open();
            String query = "select * from candidate_details where id ='" + Request.QueryString["cand_id"].ToString() + "';";
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

            int man = Int32.Parse(DropDownList2.SelectedValue);
            if(post2.SelectedValue == "Senior Manager" || post2.SelectedValue == "Assitant Manager" || post2.SelectedValue == "Manager")
            {
                man = 102;
            }
            //insert to selection
            //candiddate_id
            //designaton,  manager_id, hiring_dt, joining_dt, dept_id
            con.Open();
            String current_date = DateTime.Now.ToString("dd/MM/yyyy");
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "insert into selection (candidate_id, designation, manager_id, hiring_dt, joining_dt, dept_id) values('"+id+"', '"+post2.SelectedValue.ToString()+"', '"+man+"', '"+current_date+"', '"+dt.Text+"', '"+DropDownList1.SelectedValue.ToString()+"')";
            cmd2.ExecuteNonQuery();
            con.Close();




            //updaet candidate_details
            //set review =1
           
            con.Open();
            SqlCommand cmd3 = con.CreateCommand();
            cmd3.CommandType = CommandType.Text;
            cmd3.CommandText = "update candidate_details set review='1' where id='" + id + "'";
            cmd3.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Candidate has been offered the Job')", true);
        }



    }
}