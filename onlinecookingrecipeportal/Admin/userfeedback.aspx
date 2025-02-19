<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="userfeedback.aspx.cs" Inherits="Admin_userfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="text-align: center; font-size: xx-large; font-weight: bolder; color: #0000FF; height: 35px; background-color:Black;">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            Text="Feedback from users"></asp:Label>
       </div> <br />
          <p style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Height="228px" Width="1184px">
            <Columns>
                <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                <asp:BoundField DataField="subject" HeaderText="subject" 
                    SortExpression="subject" />
                <asp:BoundField DataField="message" HeaderText="message" 
                    SortExpression="message" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Feedback]" 
            ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
    </p>
</asp:Content>









<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userfeedback.aspx.cs" Inherits="Admin_userfeedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
--%>