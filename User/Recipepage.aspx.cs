using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_Recipepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["cat"] != null)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource2;
            DataList1.DataBind();

        }

        if (Request.QueryString["addtofav"] != null && Session["uname"] != null)
        {
            String query = "insert into Favourite(username,recipeid) values('" + Session["uname"].ToString() + "'," + Request.QueryString["addtofav"].ToString() + ")";
            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Product Added in Wishlist');</script>");
        }
        if (Session["uname"] == null)
        {
            if (Request.QueryString["addtofav"] != null)
            {
                Response.Write("<script>alert('Login to Your Account First. No Product Added in WishList');</script>");
            }
            Label20.Text = "Hello Guest,";


        }
        else
        {
            Label20.Text = "Hello " + Session["uname"].ToString();


        }

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {


        if (e.CommandName == "seefullrecipe")
        {
            Response.Redirect("seefullrecipe.aspx?id=" + e.CommandArgument.ToString());
        }

        Response.Redirect("Recipepage.aspx?addtofav=" + e.CommandArgument.ToString());
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Recipepage.aspx?cat=Veg");

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Recipepage.aspx?cat=Non-veg");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        Response.Redirect("Recipepage.aspx?cat=Dessert");

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
        SqlDataAdapter sda = new SqlDataAdapter("select *from adminrecipeid where(recipename like '%" + TextBox1.Text + "%')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("../form/Login.aspx");
        }
    }




    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (Session["uname"] != null)
        {
            Label lb = e.Item.FindControl("Label4") as Label;
            ImageButton btn = e.Item.FindControl("ImageButton2") as ImageButton;
            Label lb1 = e.Item.FindControl("Label19") as Label; SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
            String myquery = "Select * from Favourite where recipeid=" + lb1.Text + " and username='" + Session["uname"] + "'";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = conn;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);


            if (ds.Tables[0].Rows.Count > 0)
            {
                lb.Text = "Already in Wishlist ";

                btn.ImageUrl = "../Images/aftheart.jpeg";
                btn.Enabled = false;
            }
            else
            {
                lb.Text = "Click Heart to Add in Wishlist";
                btn.ImageUrl = "../Images/brfheart.jpeg";
            }
            conn.Close();
        }
        else
        {
            Label lb = e.Item.FindControl("Label4") as Label;
            ImageButton btn = e.Item.FindControl("ImageButton2") as ImageButton;
            lb.Text = "Click Heart to Add in Wishlist";
            btn.ImageUrl = "../Images/brfheart.jpeg";

        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("addtofav.aspx");
    }
}








//using System;
//using System.Data;
//using System.Data.SqlClient;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//public partial class User_Recipepage : System.Web.UI.Page
//{
//    private readonly string connectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=OnlineCookingReceipe;Integrated Security=True;";
//    protected void Page_Load(object sender, EventArgs e)
//    {
//        if (!IsPostBack)
//        {
//            // Bind data based on category filter if provided in the query string
//            if (Request.QueryString["cat"] != null)
//            {
//                BindDataByCategory(Request.QueryString["cat"]);
//            }
//            // Handle the add to favorites operation if the query string contains the appropriate value
//            else if (Request.QueryString["addtofav"] != null && Session["uname"] != null)
//            {
//                AddToFavorites(Request.QueryString["addtofav"].ToString(), Session["uname"].ToString());
//            }

//            // Display the username if the user is logged in
//            Label20.Text = Session["uname"] != null ? "Hello " + Session["uname"].ToString() : "Hello Guest";
//        }
//    }

//    private void BindDataByCategory(string category)
//    {
//        SqlDataSource2.SelectParameters["cattype"].DefaultValue = category;
//        DataList1.DataSourceID = "SqlDataSource2";  // Using the SQL DataSource directly
//        DataList1.DataBind();
//    }

//    private void AddToFavorites(string recipeId, string username)
//    {
//        using (SqlConnection conn = new SqlConnection(connectionString))
//        {
//            string query = "INSERT INTO favourite (username, recipeid) VALUES (@username, @recipeid)";
//            using (SqlCommand cmd = new SqlCommand(query, conn))
//            {
//                cmd.Parameters.AddWithValue("@username", username);
//                cmd.Parameters.AddWithValue("@recipeid", recipeId);

//                conn.Open();
//                cmd.ExecuteNonQuery();
//                Response.Write("<script>alert('Product Added in Wishlist');</script>");
//            }
//        }
//    }

//    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
//    {
//        if (e.CommandName == "seefullrecipe")
//        {
//            Response.Redirect("seefullrecipe.aspx?id=" + e.CommandArgument.ToString());
//        }
//        else if (e.CommandName == "addtofav")
//        {
//            Response.Redirect("Recipepage.aspx?addtofav=" + e.CommandArgument.ToString());
//        }
//    }

//    protected void LinkButton1_Click(object sender, EventArgs e)
//    {
//        Response.Redirect("Recipepage.aspx?cat=Veg");
//    }

//    protected void LinkButton2_Click(object sender, EventArgs e)
//    {
//        Response.Redirect("Recipepage.aspx?cat=Non-veg");
//    }

//    protected void LinkButton3_Click(object sender, EventArgs e)
//    {
//        Response.Redirect("Recipepage.aspx?cat=Dessert");
//    }

//    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
//    {
//        // Use parameterized query for searching recipes by name to prevent SQL injection
//        using (SqlConnection conn = new SqlConnection(connectionString))
//        {
//            string query = "SELECT * FROM adminrecipe WHERE recipename LIKE @recipename";
//            using (SqlDataAdapter sda = new SqlDataAdapter(query, conn))
//            {
//                sda.SelectCommand.Parameters.AddWithValue("@recipename", "%" + TextBox1.Text + "%");

//                DataTable dt = new DataTable();
//                sda.Fill(dt);

//                DataList1.DataSourceID = null;
//                DataList1.DataSource = dt;
//                DataList1.DataBind();
//            }
//        }
//    }

//    protected void Button1_Click(object sender, EventArgs e)
//    {
//        if (Session["uname"] == null)
//        {
//            Response.Redirect("../form/login.aspx");
//        }
//    }

//    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
//    {
//        Label lb = e.Item.FindControl("Label4") as Label;
//        ImageButton btn = e.Item.FindControl("ImageButton2") as ImageButton;
//        Label lb1 = e.Item.FindControl("Label19") as Label;

//        if (Session["uname"] != null)
//        {
//            CheckIfRecipeInFavorites(lb, btn, lb1.Text, Session["uname"].ToString());
//        }
//        else
//        {
//            lb.Text = "Click Heart to Add in Wishlist";
//            btn.ImageUrl = "../Images/brfheart.jpeg";
//        }
//    }

//    private void CheckIfRecipeInFavorites(Label lb, ImageButton btn, string recipeId, string username)
//    {
//        using (SqlConnection conn = new SqlConnection(connectionString))
//        {
//            string query = "SELECT * FROM favourite WHERE recipeid = @recipeid AND username = @username";
//            using (SqlCommand cmd = new SqlCommand(query, conn))
//            {
//                cmd.Parameters.AddWithValue("@recipeid", recipeId);
//                cmd.Parameters.AddWithValue("@username", username);

//                SqlDataAdapter da = new SqlDataAdapter(cmd);
//                DataSet ds = new DataSet();
//                da.Fill(ds);

//                if (ds.Tables[0].Rows.Count > 0)
//                {
//                    lb.Text = "Already in Wishlist";
//                    btn.ImageUrl = "../Images/aftheart.jpeg";
//                    btn.Enabled = false;
//                }
//                else
//                {
//                    lb.Text = "Click Heart to Add in Wishlist";
//                    btn.ImageUrl = "../Images/brfheart.jpeg";
//                }
//            }
//        }
//    }

//    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
//    {
//        Response.Redirect("addtofav.aspx");
//    }
//}
