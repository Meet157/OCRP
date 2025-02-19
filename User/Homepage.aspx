<%@ Page Title="" Language="C#" MasterPageFile="~/User/userMasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="User_Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
  

        .style5
        {
            text-align: center;
        height: 40px;
    }
        .style10
        {
            text-align: center;
        }
        #Reset1
        {
            width: 97px;
        }
        .style11
        {
        width: 635px;
    }
    .style12
    {
        width: 161px;
    }
    .style13
    {
        width: 161px;
        height: 72px;
    }
    .style14
    {
        width: 635px;
        height: 72px;
    }
    .style15
    {
        width: 161px;
        height: 61px;
    }
    .style16
    {
        width: 635px;
        height: 61px;
    }
    .style17
    {
        text-align: center;
        height: 55px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Label" 
            Font-Size="XX-Large"></asp:Label>&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        </p>
   
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table border="2" style="width: 1176px; height: 409px; margin-left: 5px">
<tr>
        <td colspan="2" class="style5" 
            style="font-weight: bolder; font-size: x-large; color: #FFFFFF;" 
            bgcolor="#990033">
          Leave a Comment
        </td>
        </tr>
<tr>
        <td class="style15">
            <asp:Label ID="Label8" runat="server" Text="UserName"></asp:Label>
        </td>
        <td class="style16">
            <asp:TextBox ID="txtuname" runat="server" style="margin-left: 18px" 
                Width="928px" Height="41px"></asp:TextBox>
        </td>
 </tr>
 <tr>
        <td class="style13">
            <asp:Label ID="Label9" runat="server" Text="Subject"></asp:Label>
        </td>
        <td class="style14">
            <asp:TextBox ID="txtsub" runat="server" style="margin-left: 15px" Width="932px" 
                Height="49px"></asp:TextBox>
        </td>
 </tr>
 
  <tr>
        <td class="style12">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Message" style="text-align: center"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td class="style11">
         <asp:TextBox ID="txtmsg" runat="server" style="margin-left: 8px" Height="193px" 
                TextMode="MultiLine" ToolTip="Enter your Message" Width="939px"></asp:TextBox>
            &nbsp;</td>
 </tr>
 <tr>
        <td colspan="2" class="style17">
            <asp:Button ID="btnfeedsub" runat="server" Text="Submit" 
                onclick="Button2_Click" Height="29px" Width="111px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <input id="Reset1" style="font-size: medium; font-weight: normal" type="reset" 
                value="reset" /></td>
 </tr>
 <tr>
        <td colspan="2" class="style10">
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
        </td>
 </tr>
</table>
    <br />
</asp:Content>










<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
