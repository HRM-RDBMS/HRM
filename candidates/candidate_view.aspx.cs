using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class candidates_candidate_view : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] == null)
        {
            Response.Redirect("candidate_login.aspx");
        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();

        String query = "select * from candidate_details where id ='" + Session["userId"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();

        candidate_id.Text = res[0].ToString();
        candidate_name.Text = res[1].ToString();
        //  DateTime dt = Convert.ToDateTime(res[2].ToString());
        candidate_dob.Text = res[2].ToString().Replace("12.00.00 AM", "");
        candidate_gender.Text = res[3].ToString();
        address.Value = res[4].ToString();
        candidate_num.Text = res[6].ToString();
        candidate_qual.Text = res[7].ToString();
        candidate_apply.Text = res[13].ToString().Replace("12.00.00 AM", "");
        candidate_exp.Text = res[8].ToString();
        candidate_post.Text = res[9].ToString();
        candidate_ref.Text = res[10].ToString();
        candidate_email.Text = res[14].ToString();

        Img1.Attributes["src"] = res[11].ToString();
        output.Attributes["src"] = res[12].ToString();



    }
}