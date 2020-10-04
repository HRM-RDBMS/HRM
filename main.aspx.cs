using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        if (Session["user"] != null)
        {
            mywelcome.InnerText = "Welcome " + Session["user"] + " !";
        }
        else if (Session["guest"] != null)
        {
            mywelcome.InnerText = " Welcome " + Session["guest"] + ", GUEST";
        }
        else
        {
            Response.Redirect("Login_v3/login.aspx");
        }
        */
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login_v3/login.aspx");
    }
}