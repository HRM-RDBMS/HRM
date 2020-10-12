using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class projects_project_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("project_login.aspx");
        }
        string script = string.Format("javascript:document.getElementById('{0}').innerText = {1}.options[{1}.selectedIndex].value;",
           Label1.ClientID,
           DropDownList1.ClientID);
        DropDownList1.Attributes.Add("onChange", script);

      
        
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        String g = DropDownList1.Text;
        Label1.Text = g;
        if (Label1.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Dob is empty')", true);
            return;
        }
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-P9TCKPP;Initial Catalog=Test;Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            int total = int.Parse(labour.Text) + int.Parse(material.Text);
            String res = "Started";
            cmd.CommandText = "INSERT INTO projects( name, manager_id, start_date, expected_date, budget, labor, material, total, status) VALUES('"+projectname.Text+"', '"+Label1.Text+"', '"+start.Text+"', '"+expected.Text+"', '"+int.Parse(budget.Text)+"', '"+int.Parse(labour.Text)+"', '"+int.Parse(material.Text)+"', '"+total+"', '"+res+"');";

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("../project_menu.aspx");
        }
        
    }

    
}