using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Web.Security;

public partial class main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        if (Session["user"] != null)
        {
            mywelcome.InnerText = "Welcome " + Session["user"].ToString() + " !";
        }
        else if (Session["guest"] != null)
        {
            mywelcome.InnerText = " Welcome " + Session["guest"].ToString() + ", GUEST";
        }
        else
        {
            Response.Redirect("Login_v3/login.aspx");
        }
        
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        // Session.Remove("user");
        //Session.Remove("guest");
        //Session.Remove("candidate");
        //Session.Clear();
         Session.RemoveAll();
        // Session.Abandon();
        // Response.Write("<script> alert('Successfuly Logged Out...')</script>");

       
        Response.Redirect("main.aspx");
    }

    protected void candidate_details(object sender, EventArgs e)
    {
        //Response.Redirect("Candidate_Profile.html");
        if (Session["candidate"] != null)
        {
            Response.Redirect("Candidate_Profile.html");
        }
        else
        {
            Response.Redirect("Candidate_Login.html");
        }
    }
}