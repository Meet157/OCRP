<%@ Page Title="" Language="C#" MasterPageFile="~/User/userMasterPage.master" AutoEventWireup="true" CodeFile="Regform.aspx.cs" Inherits="forms_Regform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 34px;
        }
        .style2
        {
            height: 46px;
        }
        #Reset1
        {
            width: 77px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center style="height: 383px">
<table border="2" style="height: 327px; width: 878px">
 <tr>
        <td colspan="2" class="style2" align="center" style="font-size: x-large; font-weight: bold" 
            bgcolor="#990033">
           Registration Form
        </td>
        </tr>


        <tr>
        <td class="style11">
            <asp:Label ID="lbluname" runat="server" Text="User Name"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="txtuname" runat="server" Height="38px" Width="319px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="please enter user name" ControlToValidate="txtuname" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td class="style11">
            <asp:Label ID="lblcpwd" runat="server" Text="Create Password"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="txtcpwd" runat="server" Height="36px" Width="313px" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="please enter password" ControlToValidate="txtcpwd" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td class="style11">
            <asp:Label ID="lblconfirmpwd" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="txtconfirmpwd" runat="server" Height="38px" Width="304px" 
                TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtcpwd" ControlToValidate="txtconfirmpwd" 
                ErrorMessage="password doesn't match" ForeColor="Red"></asp:CompareValidator>
        </td>
        </tr>
        <tr>
        <td class="style11">
            <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="style9">
            <asp:TextBox ID="txtemail" runat="server" Height="36px" Width="299px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="please enter correct email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ControlToValidate="txtemail" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
        </tr>
  
        <tr>
        <td colspan="2" class="style1" align="center">
            <asp:Button ID="btnlogin" runat="server" Text="Submit" 
                onclick="btnlogin_Click1" BackColor="#990033" Height="34px" Width="82px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#990033" Height="29px" 
                Text="Cancel" Width="79px" />
            </td>
        </tr>
  
        <tr>
        <td colspan="2" class="style1">
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/form/Login.aspx">Already have an account?Login</asp:HyperLink>
        </td>
        </tr>
  
      
        <tr>
        <td colspan="2" class="style1">
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
        </td>
        </tr>
  
      
</table>
</center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>










<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regform.aspx.cs" Inherits="form_Regform" %>

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