using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class form_login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        String uname;
        String pass;
       
        SqlCommand cmd = new SqlCommand("select * from userlogin where uname=@uname and password=@password", conn);
        cmd.Parameters.AddWithValue("@uname", txtusername.Text);
        cmd.Parameters.AddWithValue("@password", txtpassword.Text);

        cmd.Connection = conn;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
       
        if (ds.Tables[0].Rows.Count > 0)
        {
            uname = ds.Tables[0].Rows[0]["uname"].ToString();
            pass = ds.Tables[0].Rows[0]["password"].ToString();

            conn.Close();
            if (uname == txtusername.Text && pass == txtpassword.Text)
            {
                Session["uname"] = uname;

                Response.Redirect("../User/Homepage.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid Username or Password - Relogin with Correct Username Password";
            }
        }
        else
        {
            lblmsg.Text = "Invalid Username or Password - Relogin with Correct Username Password";
        }
    }
}