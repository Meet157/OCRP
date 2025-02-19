using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_admin_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from adminlogin where adminname=@adminname and password=@password", con);
        cmd.Parameters.AddWithValue("@adminname", txtusername.Text);
        cmd.Parameters.AddWithValue("@password", txtpassword.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (dt.Rows.Count > 0)
        {
            Session["adminname"] = txtusername.Text;
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            lblmsg.Text = "username or password is incorrect";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
    }
}