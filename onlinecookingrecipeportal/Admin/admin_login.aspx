<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="Admin_admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="height: 249px">
<table border="2" style="height: 258px; width: 545px">
<tr>
        <td colspan="2" bgcolor="Black" 
            style="font-size: x-large; font-weight: bold; color: #0000FF">
           Login Form(Admin)
        </td>
        </tr>
<tr>
        <td>
            <asp:Label ID="lblusername" runat="server" Text="UserName"></asp:Label>
        </td>
        <td class="style1">
            <asp:TextBox ID="txtusername" runat="server" Height="35px" 
                style="margin-left: 0px" Width="144px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtusername" ErrorMessage="Please enter user name" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="style1">
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="35px" 
                Width="139px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtpassword" ErrorMessage="Enter correct password" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td colspan="2">
            <asp:Button ID="btnlogin" runat="server" Text="Log-in" onclick="btnlogin_Click" 
                />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncancel" runat="server" Text="Cancel" />
        </td>
        </tr>
       
        <tr>
        <td colspan="2">
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
           </td>
        </tr>
</table>
</center>
</asp:Content>









<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="Admin_admin_login" %>

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
</html>--%>
