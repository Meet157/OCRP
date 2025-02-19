using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class forms_Regform : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click1(object sender, EventArgs e)
    {

        string insertquery = "insert into registration (uname,password,confirmpwd,email) values(@uname,@password,@confirmpwd,@email)";
        SqlCommand com = new SqlCommand(insertquery, conn);
        com.Parameters.AddWithValue("@uname", txtuname.Text);
        com.Parameters.AddWithValue("@password", txtcpwd.Text);
        com.Parameters.AddWithValue("@confirmpwd", txtconfirmpwd.Text);
        com.Parameters.AddWithValue("@email", txtemail.Text);
        conn.Open();
        com.ExecuteNonQuery();
        lblmsg.Text = "Registration is successfull.";
        lblmsg.ForeColor = System.Drawing.Color.Red;
        conn.Close();
    }
}