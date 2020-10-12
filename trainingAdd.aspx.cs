using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class trainingAdd : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString""].ConnectionString);
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-P9TCKPP;Initial Catalog=Test;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        
        string script = string.Format("javascript:document.getElementById('{0}').innerText = {1}.options[{1}.selectedIndex].value;",
            Label1.ClientID,
            DropDownList1.ClientID);
        DropDownList1.Attributes.Add("onChange", script);
    }


    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string script = string.Format("javascript:document.getElementById('{0}').innerText = {1}.options[{1}.selectedIndex].value;",
            Label1.ClientID,
            DropDownList1.ClientID);
        DropDownList1.Attributes.Add("onChange", script);

        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = " insert into training_details values" +
            "('" + TextBox4.Text + "', '" + DropDownList1.Text + "', '" + Label1.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "', '" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox8.Text + "', '" + TextBox5.Text + "' )";
        cmd.ExecuteNonQuery();

        con.Close();

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
      /*  SqlConnection con = new SqlConnection("Data Source=DESKTOP-P9TCKPP;Initial Catalog=Test;Integrated Security=True");
        con.Open();

        SqlCommand cmd = new SqlCommand("select IDENT_CURRENT('training_details')+1  ", con);
        //cmd.Parameters.AddWithValue();

        SqlDataReader da = cmd.ExecuteReader();
        while(da.Read())
        {
            TextBox3.Text = da.GetValue(0).ToString();

        }
        con.Close();
      */
    }

}