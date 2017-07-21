using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminAddAccount.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminSetCourse.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminSelectAllInfo.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}