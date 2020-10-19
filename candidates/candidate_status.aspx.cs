using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class candidates_candidate_status : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        ms7.Visible = false;
        go_to_employee.Visible = false;
        if (Session["userId"] == null)
        {
            Response.Redirect("candidate_login.aspx");
        }


        con.Open();
        String query = " select * from candidate_details where id='" + Session["userId"].ToString() + "';";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader res = cmd.ExecuteReader();
        res.Read();
        candidate_id.Text = res[0].ToString();
        candidate_name.Text = res[1].ToString();
        message.Text = "<p>Thank you for taking the time to meet with our team about the <b style='color:red'><u>" + res["post_applied"] + "</u></b> role at our company." +
            " It was a pleasure to learn more about your skills and accomplishments. Unfortunately, our team did not select you for further consideration.<p>";
        if(res["review"].ToString() != "1")
        {
            review.Text = "Not Yet, Please have Patience!!!";
            con.Close();
            message.Visible = false;
            ms1.Visible = false;
            ms2.Visible = false;
            ms3.Visible = false;
            ms4.Visible = false;
            ms5.Visible = false;
            ms6.Visible = false;
            Div1.Visible = false;
           

        }
        else
        {
            review.Text = "Yes";
            con.Close();
            con.Open();
            query = " select * from selection where candidate_id='" + Session["userId"].ToString() + "';";
            SqlCommand cmd2 = new SqlCommand(query, con);
            SqlDataReader res2 = cmd2.ExecuteReader();
            if (res2.Read())
            {
                offer.Text = "Yes";
                message.Text = "Congratulation You are given the Job role of <b style='color:red'><u>" + res2["designation"] + "</u></b> at our company. Looking forward for your Acceptance!!";
                position.Text = res2[1].ToString();
                joining.Text = res2[4].ToString().Replace("12.00.00 AM", "");
                hired.Text = res2[3].ToString().Replace("12.00.00 AM", "");
                Label1.Text = res2[7].ToString();
            }
            else
            {
                offer.Text = "No";
                reject.Visible = false;
                accept.Visible = false;
                position.Visible = false;
                joining.Visible = false;
                reject.Visible = false;
                hired.Visible = false;
                ms1.Visible = false;
                ms2.Visible = false;
                ms3.Visible = false;
                ms4.Visible = false;
                ms5.Visible = false;
                ms6.Visible = false;
                Div1.Visible = false;

            }
            if(res2["accepted"].ToString() == "2")
            {
                ms7.Visible = true;
                ms6.Visible = false;
                ms5.Visible = false;
                ms4.Visible = false;
            }
            con.Close();

        }
        con.Open();
        query = "select * from candidate_employee where candidate_id='" + Session["userId"].ToString() + "' ";
        SqlCommand cmd3 = new SqlCommand(query, con);
        SqlDataReader res3 = cmd3.ExecuteReader();
        if (res3.Read())
        {
            int employee_id = Int32.Parse(res3[0].ToString());
            employee.Text = "Your Employee ID: " + employee_id + "\nYour passowrd is the Same";
            ms7.Visible = true;
            ms6.Visible = false;
            go_to_employee.Visible = true;
        }
        con.Close();


    }

    protected void reject_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update selection set accepted='2' where candidate_id='"+Session["userId"].ToString()+"'";
        cmd.ExecuteNonQuery();
        con.Close();
       // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('')", true);
       // Response.Redirect("<script language='javascript'>window.alert('Your Rejected this Offer Successfully!!');window.location='candidate_status.aspx';</script>");

        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your Rejected this Offer Successfully!!');window.location ='candidate_status.aspx';", true);
    }

    protected void accept_Click(object sender, EventArgs e)
    {
        
        
        //getting candidate values
        con.Open();
        String query = "select * from candidate_details where id = '" + Session["userId"].ToString() + "'";
        SqlCommand cmd3 = new SqlCommand(query, con);
        SqlDataReader res = cmd3.ExecuteReader();
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

        //getting values from seletion
        con.Open();
        query = " select * from selection where candidate_id='" + Session["userId"].ToString() + "';";
        SqlCommand cmd4 = new SqlCommand(query, con);
        SqlDataReader res4 = cmd4.ExecuteReader();
        res4.Read();
        String des = res4[1].ToString();
        String hiring = res4[3].ToString();
        String joining = res4[4].ToString();
        String dept = res4[5].ToString();
        String manager = res4[2].ToString();
        String salary = res4[7].ToString();
        con.Close();

        

        //inserting to employee_table
        con.Open();
        SqlCommand cmd2 = con.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "insert into employee_table(emp_name, emp_pass, dob, gender, address, mobile_code, mobile_num, email_id, designation, hiring_dt, joining_dt, profile_pic) values('"+name+"', '"+pass+"', '"+dob+"', '"+gender+"', '"+address+"', '"+mobile_code+"', '"+mobile_num+"', '"+email+"', '"+des+"', '"+hiring+"' , '"+joining+"', '"+profile_pic+"' );";
        cmd2.ExecuteNonQuery();
        con.Close();


        //updating selection table
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update selection set accepted='1' where candidate_id='" + Session["userId"].ToString() + "'";
        cmd.ExecuteNonQuery();
        con.Close();

        //getting employee_id
        con.Open();
        query = " select * from employee_table where emp_id=(select MAX(emp_id) from employee_table)";
        SqlCommand cmd5 = new SqlCommand(query, con);
        SqlDataReader res5 = cmd5.ExecuteReader();
        res5.Read();
        String employee_id = res5[0].ToString();
        con.Close();

        //insert employee_dept
        con.Open();
        SqlCommand cmd6 = con.CreateCommand();
        cmd6.CommandType = CommandType.Text;
        cmd6.CommandText = "insert into employee_dept (employee_id, dept_id) values ('" + employee_id + "', '" + dept + "')"; 
        cmd6.ExecuteNonQuery();
        con.Close();

        //insertint into employee_salary_amount
        con.Open();
        SqlCommand cmd22 = con.CreateCommand();
        cmd22.CommandType = CommandType.Text;
        cmd22.CommandText = "insert into employee_salary_amount(employee_id, basic_salry) values('"+employee_id+"', '"+salary+"');";
        cmd22.ExecuteNonQuery();
        con.Close();

        //insert employee_under_managers
        con.Open();
        SqlCommand cmd7 = con.CreateCommand();
        cmd7.CommandType = CommandType.Text;
        cmd7.CommandText = "insert into employee_under_managers (manager_id, employee_id) values('"+manager+"', '"+employee_id+"')";
        cmd7.ExecuteNonQuery();
        con.Close();

        //insert candidate_employee
        con.Open();
        SqlCommand cmd8 = con.CreateCommand();
        cmd8.CommandType = CommandType.Text;
        cmd8.CommandText = "insert into candidate_employee ( employee_id, candidate_id) values('" + employee_id + "', '"+Session["userId"].ToString()+"')";
        cmd8.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Welcome to the Company!');window.location ='candidate_status.aspx';", true);
        employee.Text = "Your Employee ID: " + employee_id + "\nYour passowrd is the Same";
        ms7.Visible = true;
        ms6.Visible = false;

    }

    protected void go_to_employee_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../employees/employee_login.aspx");
    }
}