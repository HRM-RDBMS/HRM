﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login_v3_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
 
         con.Open();


        //String query= "select count(* from admin  where user_id=' "+TextBox1.Text+"' and password='"+TextBox2.Text+"'";
        String query = "select count(*) from admin  where user_id='"+useridText.Text+"' and password='"+passwordText.Text+"'";
        SqlCommand cmd = new SqlCommand(query, con);

        String output = cmd.ExecuteScalar().ToString();
        Response.Write(output);
        if (output == "1")
        {
            Response.Redirect("../main.html");
        }
        else
        {
            Response.Write("Your userID and Password is incorrect:!!! " + output);
        }
    }
}