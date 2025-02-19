<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddRecipe.aspx.cs" Inherits="Admin_AddRecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #Reset1
        {
            width: 61px;
        }
        .style1
        {
            height: 28px;
        }
        .style5
        {
            height: 28px;
            width: 422px;
        }
        .style6
        {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
    <center>
<table border="2">
 <tr>
        <td colspan="2" style="font-size: x-large; font-weight: bold; color: #0000FF;" 
            bgcolor="Black" class="style6" align="center">
          Recipe Form(Admin)
        </td>
        </tr>
<tr>
        <td class="style1">
            <asp:Label ID="Label2" runat="server" Text="Recipe Id"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="txtrecipeid" runat="server" Width="266px"></asp:TextBox>
        </td>
        </tr>
<tr>
        <td class="style1">
            <asp:Label ID="lbllrname" runat="server" Text="Recipe Name"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="txtrname" runat="server" Width="266px"></asp:TextBox>
        </td>
        </tr>
 <tr>
        <td>
            <asp:Label ID="lblcat" runat="server" Text="Category"></asp:Label>
        </td>
        <td class="style5">
           
            <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="161px">
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
        <td class="style5">
            <asp:TextBox ID="txtigr" runat="server" Height="129px" TextMode="MultiLine" 
                Width="341px"></asp:TextBox>
        </td>
        </tr>
   <tr>
        <td>
            <asp:Label ID="lbldesc" runat="server" Text="Description"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="txtdesc" runat="server" Height="115px" TextMode="MultiLine" 
                Width="329px"></asp:TextBox>
        </td>
        </tr>
  <tr>
        <td>
            <asp:Label ID="lblptm" runat="server" Text="Preparation Time"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="txtptm" runat="server" Width="325px"></asp:TextBox>
        </td>
  </tr>
   <tr>
        <td>
            <asp:Label ID="lblctm" runat="server" Text=" Time">Total time</asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="txttottm" runat="server" Width="325px"></asp:TextBox>
        </td>
  </tr>
   <tr>
        <td>
            <asp:Label ID="lblquantity" runat="server" Text="Servings"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="txtserving" runat="server" Width="310px"></asp:TextBox>
        </td>
  </tr>   
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Image"></asp:Label>
        </td>
        <td class="style5">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="297px" />
        </td>
  </tr> 
   <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnlogin" runat="server" Text="Submit" 
                onclick="btnlogin_Click" BackColor="Black" ForeColor="Blue" Width="76px" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Cancel"  BackColor="Black" ForeColor="Blue" Width="76px"/> &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Delete" BackColor="Black" ForeColor="Blue" Width="76px"/> &nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Button ID="Button7" runat="server" onclick="Button7_Click" BackColor="Black" ForeColor="Blue" Width="76px"
                Text="Update" />
        </td>
   </tr>
   

   <tr>
        <td colspan="2">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
   </tr>
   

 </table>
 </center>
</asp:Content>










