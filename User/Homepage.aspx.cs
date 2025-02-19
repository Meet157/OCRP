using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



public partial class User_Homepage : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["uname"] != null)
        {
            Label13.Text = "Loggind in as " + Session["uname"].ToString();


        }
        else
        {
            Label13.Text = "Hello User";

        }

    }

    protected void Buttonveg_Click(object sender, EventArgs e)
    {
        Response.Redirect("seefullrecipe.aspx?cat=Veg");
    }
    protected void ImageButtonveg_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("seefullrecipe.aspx?cat=Veg");
    }
    protected void Buttonnonveg_Click(object sender, EventArgs e)
    {
        Response.Redirect("seefullrecipe.aspx?cat=Non-veg");
    }
    protected void ImageButtonnonveg_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("seefullrecipe.aspx?cat=Non-veg");
    }

    protected void ImageButtondes_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("seefullrecipe.aspx?cat=Dessert");
    }


    protected void Buttondes_Click(object sender, EventArgs e)
    {
        Response.Redirect("seefullrecipe.aspx?cat=Dessert");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        string insertquery = "insert into feedback (uname,subject,message) values(@uname,@subject,@message)";
        SqlCommand com = new SqlCommand(insertquery, conn);
        com.Parameters.AddWithValue("@uname", txtuname.Text);
        com.Parameters.AddWithValue("@subject", txtsub.Text);
        com.Parameters.AddWithValue("@message", txtmsg.Text);

        conn.Open();
        com.ExecuteNonQuery();
        lblmsg.Text = "Feedback submitted succesfully";
        lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
        conn.Close();
    }
}