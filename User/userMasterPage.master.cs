using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_userMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            Button2.Visible = false;
            Button5.Visible = true;
            ImageButton3.Visible = true;
        }
        else
        {
            Button2.Visible = true;
            Button5.Visible = false;
            ImageButton3.Visible = true;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Response.Redirect("Recipepage.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

        Response.Redirect("addrecipepage.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        Response.Redirect("Aboutus.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Redirect("../form/login.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("addtofav.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Homepage.aspx");
    }
    
}
