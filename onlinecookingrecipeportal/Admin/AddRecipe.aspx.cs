using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AddRecipe : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminname"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.PostedFile.FileName;
            string filepath = "~/Images/" + filename;

            // Save the file to the server
            FileUpload1.PostedFile.SaveAs(Server.MapPath(filepath));

            // Create the SQL query using parameters
            string query = "INSERT INTO adminrecipe (recipename, cattype, ingre, description, ptime, tottime, serving, rimg) " +
                           "VALUES (@RecipeName, @Category, @Ingredients, @Description, @PrepTime, @TotalTime, @Servings, @ImagePath)";

            // Open the connection
            using (SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True"))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Add parameters to the query
                        cmd.Parameters.AddWithValue("@RecipeName", txtrname.Text);
                        cmd.Parameters.AddWithValue("@Category", DropDownList1.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Ingredients", txtigr.Text);
                        cmd.Parameters.AddWithValue("@Description", txtdesc.Text);
                        cmd.Parameters.AddWithValue("@PrepTime", txtptm.Text);
                        cmd.Parameters.AddWithValue("@TotalTime", txttottm.Text);
                        cmd.Parameters.AddWithValue("@Servings", txtserving.Text);
                        cmd.Parameters.AddWithValue("@ImagePath", filepath);

                        // Execute the query
                        cmd.ExecuteNonQuery();

                        // Display success message
                        lblmsg.Text = "Recipe added successfully!";
                        lblmsg.ForeColor = System.Drawing.Color.Blue;
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                    lblmsg.Text = "Error: " + ex.Message;
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
        else
        {
            lblmsg.Text = "Please select an image to upload.";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
    }

    //protected void btnlogin_Click(object sender, EventArgs e)
    //{

    //    if (FileUpload1.HasFile)
    //    {
    //        string filename = FileUpload1.PostedFile.FileName;
    //        string filepath = "../onlinecookingrecipeportal/Images/" + FileUpload1.FileName;
    //        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);
    //        conn.Open();
    //        SqlCommand cmd = new SqlCommand("Insert into adminerecipe values('" + txtrname.Text + "','" + DropDownList1.SelectedItem.Value + "','" + txtigr.Text + "','" + txtdesc.Text + "','" + txtptm.Text + "','" + txttottm.Text + "','" + txtserving.Text + "','" + filepath + "')", conn);
    //        cmd.ExecuteNonQuery();
    //        conn.Close();
    //        lblmsg.Text = "recipe added";
    //        lblmsg.ForeColor = System.Drawing.Color.Blue;

    //    }
    //}

    protected void Button6_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from adminrecipe where recipename='" + txtrname.Text + "'";
        cmd.ExecuteNonQuery();
        conn.Close();
        lblmsg.Text = "Record deleted Successfully...";
        lblmsg.ForeColor = System.Drawing.Color.Blue;
    }
//    protected void Button7_Click(object sender, EventArgs e)
//    {
//        conn.Open();
//        SqlCommand cmd = conn.CreateCommand();
//        cmd.CommandType = CommandType.Text;
//        cmd.CommandText = "update adminrecipe set recipeid='" + txtrecipeid.Text + "',recipename='" + txtrname.Text + "', cattype='" + DropDownList1.SelectedItem.Value + "', ingre='" + txtigr.Text + "',description='" +
//txtdesc.Text + "', ptime='" + txtptm.Text + "', tottime='" + txttottm.Text + "', servings='" + txtserving.Text + "' where recipename='" + txtrname.Text + "'";

//        cmd.ExecuteNonQuery();
//        conn.Close();
//        lblmsg.Text = "Record Updated Successfully...";
//        lblmsg.ForeColor = System.Drawing.Color.Blue;
//    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        // Open the database connection
        conn.Open();

        // Create a command with parameterized query
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        // Parameterized UPDATE query
        cmd.CommandText = @"
        UPDATE adminrecipe 
        SET 
            recipename = @RecipeName, 
            cattype = @CatType, 
            ingre = @Ingredients, 
            description = @Description, 
            ptime = @PTime, 
            tottime = @TotalTime, 
            serving = @Servings 
        WHERE  adminrecipeid = @RecipeID";

        // Add parameters to the command
        //cmd.Parameters.AddWithValue("@RecipeID", txtrecipeid.Text.Trim());
        cmd.Parameters.AddWithValue("@RecipeName", txtrname.Text.Trim());
        cmd.Parameters.AddWithValue("@CatType", DropDownList1.SelectedItem.Value.Trim());
        cmd.Parameters.AddWithValue("@Ingredients", txtigr.Text.Trim());
        cmd.Parameters.AddWithValue("@Description", txtdesc.Text.Trim());
        cmd.Parameters.AddWithValue("@PTime", txtptm.Text.Trim());
        cmd.Parameters.AddWithValue("@TotalTime", txttottm.Text.Trim());
        //cmd.Parameters.AddWithValue("@Servings", txtserving.Text.Trim());
        int servings;
        if (int.TryParse(txtserving.Text.Trim(), out servings))
        {
            cmd.Parameters.AddWithValue("@Servings", servings);
        }
        else
        {
            // If parsing fails, you can set a default value or return an error
            lblmsg.Text = "Please enter a valid number for servings.";
            lblmsg.ForeColor = System.Drawing.Color.Red;
            conn.Close();
            return;
        }
        // Parameter for where clause (recipename in the WHERE condition)
        cmd.Parameters.AddWithValue("@RecipeID", txtrecipeid.Text.Trim());

        try
        {
            // Execute the query
            cmd.ExecuteNonQuery();

            // Display success message
            lblmsg.Text = "Record Updated Successfully...";
            lblmsg.ForeColor = System.Drawing.Color.Blue;
        }
        catch (Exception ex)
        {
            // Handle any errors that may have occurred
            lblmsg.Text = "Error: " + ex.Message;
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        finally
        {
            // Close the connection
            conn.Close();
        }
    }

}