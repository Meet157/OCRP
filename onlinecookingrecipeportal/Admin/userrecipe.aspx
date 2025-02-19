<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="userrecipe.aspx.cs" Inherits="Admin_userrecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Recipes Added by User" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" />
    
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="userrecipeid" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="userrecipeid" HeaderText="userrecipeid" 
            InsertVisible="False" ReadOnly="True" SortExpression="userrecipeid" />
        <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
        <asp:BoundField DataField="recipename" HeaderText="recipename" 
            SortExpression="recipename" />
        <asp:BoundField DataField="cattype" HeaderText="cattype" 
            SortExpression="cattype" />
        <asp:BoundField DataField="ingre" HeaderText="ingre" SortExpression="ingre" />
        <asp:BoundField DataField="description" HeaderText="description" 
            SortExpression="description" />
        <asp:BoundField DataField="ptime" HeaderText="ptime" SortExpression="ptime" />
        <asp:BoundField DataField="tottime" HeaderText="tottime" 
            SortExpression="tottime" />
        <asp:BoundField DataField="serving" HeaderText="serving" 
            SortExpression="serving" />
    </Columns>
</asp:GridView>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OnlineCoockingReceipe.mdf;Integrated Security=True;User Instance=True" 
    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [UserRecipe]">
</asp:SqlDataSource>
<br />
<br />
</asp:Content>









