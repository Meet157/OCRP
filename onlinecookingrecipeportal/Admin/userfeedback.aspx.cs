﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_userfeedback : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Meet\onlinecookingrecipeportal\App_Data\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (Session["adminname"] == null)
            {
                Response.Redirect("admin_login.aspx");
            }
        }
        conn.Open();
       
        conn.Close();
    }
}