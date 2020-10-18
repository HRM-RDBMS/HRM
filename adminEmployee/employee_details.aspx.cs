﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class adminEmployee_employee_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(RadioButtonList1.Text =="" )
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Choose Search by Id or by Name')", true);
            return;
        }
        String sel = "";
        if(RadioButtonList1.Text == "1")
        {
            sel = DropDownList1.SelectedValue;
        }
        else
        {
            sel = DropDownList2.SelectedValue;
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
        con.Open();
        String query = "select * from employee_table where emp_id='"+sel+"'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();
        employeeId.Text = res[0].ToString();
        employee_name.Text = res[1].ToString();
        dob.Text = res[3].ToString();
        gender.Text = res[4].ToString();
        address.Text = res[5].ToString();
        mobil.Text = res[6].ToString() + " " + res[7].ToString();
        email.Text = res[8].ToString();
        designation.Text = res[9].ToString();
        hiring.Text = res[10].ToString();
        joined.Text = res[11].ToString();

        output.Attributes["src"] = "~/candidates/" + res[12].ToString();
    }
}