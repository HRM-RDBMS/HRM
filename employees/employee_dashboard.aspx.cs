using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class employees_employee_dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] == null)
        {
            Response.Redirect("employee_login.aspx");
        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());

        con.Open();

        String query = "select * from employee_table where emp_id ='" + Session["userId"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();

        name.InnerText =": " + res[1].ToString();
        dob.InnerText = ": " + res[3].ToString().Replace("12.00.00 AM", "");

        String num =": " + res[6].ToString() + " " + res[7].ToString();
        pho_num.InnerText = num;

        email.InnerText =": " + res[8].ToString();
        String url= "~/candidates/" +res[13].ToString();
        img.Style["background-image"] = Page.ResolveUrl(url);

        addres.InnerText = ": " + res[5].ToString();
        nm.InnerText = name.InnerText;

        
    }
}