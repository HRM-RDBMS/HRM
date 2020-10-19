using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class departmentAdd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = " insert into department_details values" +
            "('" + TextBox3.Text + "', '" + TextBox1.Text + "')";
        cmd.ExecuteNonQuery();

        con.Close();
        Response.Redirect("departmentView.aspx");
    }
}