using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_addtofav : System.Web.UI.Page
{
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
    //    String myquery = "select * from adminrecipe where adminrecipeid IN(select recipeid from favourite where uname='" + Session["uname"].ToString() + "')";
    //    if (Session["uname"] == null)
    //    {
    //        // Handle the situation where the session is null, e.g., redirect to login page
    //        Response.Redirect("login.aspx");
    //    }
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = myquery;
    //    cmd.Connection = con;
    //    SqlDataAdapter da = new SqlDataAdapter();
    //    da.SelectCommand = cmd;
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    GridView1.DataSource = ds;
    //    GridView1.DataBind();
    //    con.Close();

    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        // Check if session variable is null before proceeding
        if (Session["uname"] == null)
        {
            // Handle session not being available
            Response.Redirect("../form/login.aspx");
            return;
        }

        // Proceed with database operation
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");

        // Create the query using the session value
        //string myquery = "SELECT * FROM adminrecipe WHERE adminrecipeid AS recipeid IN (SELECT recipeid FROM favourite WHERE uname = @uname)";
        string myquery = "SELECT adminrecipeid AS recipeid, recipename, cattype, ingre, description, ptime, tottime, serving, rimg " +
                     "FROM adminrecipe WHERE adminrecipeid IN (SELECT recipeid FROM favourite WHERE uname=@uname)";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@uname", Session["uname"].ToString());

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();

        try
        {
            con.Open();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            // Log or display error
            Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
        }
        finally
        {
            con.Close(); // Ensure the connection is closed
        }
    }

}