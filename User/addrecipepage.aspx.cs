using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_addrecipepage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("../form/login.aspx");
        }
        disp();

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from userrecipe where recipename='" + txtrname.Text + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Text = "Record deleted Successfully...";
        lblmsg.ForeColor = System.Drawing.Color.Blue;
        disp();

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        txtrname.Text = " ";
        DropDownList1.Text = " ";
        txtigr.Text = " ";
        txtdesc.Text = " ";
        txtptm.Text = " ";
        txttottm.Text = " ";
        txtserving.Text = " ";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        String q1 = "insert into userrecipe (uname,recipename,cattype,ingre,description,ptime,tottime,serving) values (@uname,@recipename,@cattype,@ingre,@description,@ptime,@tottime,@serving)";

        SqlCommand cmd1 = new SqlCommand(q1, con);

        cmd1.Parameters.AddWithValue("@uname", txtuname.Text);
        cmd1.Parameters.AddWithValue("@recipename", txtrname.Text);
        cmd1.Parameters.AddWithValue("@cattype", DropDownList1.SelectedItem.Value);
        cmd1.Parameters.AddWithValue("@ingre", txtigr.Text);
        cmd1.Parameters.AddWithValue("@description", txtdesc.Text);
        cmd1.Parameters.AddWithValue("@ptime", txtptm.Text);
        cmd1.Parameters.AddWithValue("@tottime", txttottm.Text);
        cmd1.Parameters.AddWithValue("@serving", txtserving.Text);


        con.Open();
        cmd1.ExecuteNonQuery();
        lblmsg.Text = "New Recipe Added...";
        lblmsg.ForeColor = System.Drawing.Color.Blue;
        con.Close();
        disp();
    }
    public void disp()
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from userrecipe";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update userrecipe set recipename='" + txtrname.Text + "', cattype='" + DropDownList1.SelectedItem.Value + "', ingre='" + txtigr.Text + "',description='" +
txtdesc.Text + "', ptime='" + txtptm.Text + "', tottime='" + txttottm.Text + "', serving='" + txtserving.Text + "' where recipename='" + txtrname.Text + "'";

        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Text = "Record Updated Successfully...";
        lblmsg.ForeColor = System.Drawing.Color.Blue;
        disp();

    }
}