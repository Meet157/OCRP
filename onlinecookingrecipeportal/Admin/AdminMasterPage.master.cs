using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminname"] != null)
        {
            Label1.Text = "Welcome Admin";
            Button2.Visible = false;
            Button5.Visible = true;
        }
        else
        {
            Label1.Text = "Please Login first";
            Button2.Visible = true;
            Button5.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddRecipe.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userrecipe.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("userfeedback.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_login.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("AdminHome.aspx");
        Label2.Text = "You have logged out successfully..";
    }
}
