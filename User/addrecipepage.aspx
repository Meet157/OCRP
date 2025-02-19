<%@ Page Title="" Language="C#" MasterPageFile="~/User/userMasterPage.master" AutoEventWireup="true" CodeFile="addrecipepage.aspx.cs" Inherits="User_addrecipepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 414px;
        }
        .style2
        {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
 <center>
<table border="2">
 <tr>
        <td colspan="2" bgcolor="#990033" style="font-size: x-large; font-weight: bold" 
            class="style2">
          Recipe Form(user)
        </td>
        </tr>

     
     
<tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
        </td>
        <td class="style1">
            <asp:TextBox ID="txtuname" runat="server" Width="237px"></asp:TextBox>
        </td>
        </tr>
<tr>
        <td>
            <asp:Label ID="lbllrname" runat="server" Text="Recipe Name"></asp:Label>
        </td>
        <td class="style1">
            <asp:TextBox ID="txtrname" runat="server" Width="231px"></asp:TextBox>
        </td>
        </tr>
 <tr>
        <td>
            <asp:Label ID="lblcat" runat="server" Text="Category"></asp:Label>
        </td>
        <td class="style1">
           
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Veg</asp:ListItem>
                <asp:ListItem>Non-veg</asp:ListItem>
                <asp:ListItem>Dessert</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>
    <tr>
        <td>
            <asp:Label ID="lbligr" runat="server" Text="Ingredients"></asp:Label>
        </td>
        <td class="style1">
            <asp:TextBox ID="txtigr" runat="server" Height="117px" TextMode="MultiLine"></asp:TextBox>
        </td>
        </tr>
   <tr>
        <td>
            <asp:Label ID="lbldesc" runat="server" Text="Description"></asp:Label>
        </td>
        <td class="style1">
            <asp:TextBox ID="txtdesc" runat="server" Height="95px" TextMode="MultiLine"></asp:TextBox>
        </td>
        </tr>
  <tr>
        <td>
            <asp:Label ID="lblptm" runat="server" Text="Preparation Time"></asp:Label>
        </td>
        <td class="style1">
            <asp:TextBox ID="txtptm" runat="server"></asp:TextBox>
        </td>
  </tr>
   <tr>
        <td>
            <asp:Label ID="lblctm" runat="server" Text=" Time">Total time</asp:Label>
        </td>
        <td class="style1">
            <asp:TextBox ID="txttottm" runat="server"></asp:TextBox>
        </td>
  </tr>
   <tr>
        <td>
            <asp:Label ID="lblquantity" runat="server" Text="Servings"></asp:Label>
        </td>
        <td class="style1">
             <asp:TextBox ID="txtserving" runat="server"></asp:TextBox> &nbsp;</td>
  </tr>   
   
    <tr>
        <td colspan="2">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
   </tr>
   
   <tr><td colspan="2">
       &nbsp;&nbsp;
           <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click1" />&nbsp;&nbsp;
               <asp:Button ID="Button3" runat="server" Text="Create New" onclick="Button3_Click1" />&nbsp;&nbsp;
           <asp:Button ID="Button4" runat="server" Text="Insert New" onclick="Button4_Click" />
   &nbsp;
       <asp:Button ID="Button5" runat="server" Text="Update" 
           onclick="Button5_Click" />
   &nbsp;</td></tr>
 </table>
     <asp:GridView ID="GridView1" runat="server">
     </asp:GridView>
 </center>
</asp:Content>










<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addrecipepage.aspx.cs" Inherits="User_addrecipepage" %>

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