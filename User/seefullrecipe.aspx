<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User/userMasterPage.master" CodeFile="seefullrecipe.aspx.cs" Inherits="User_seefullrecipe" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <br />
               <table class="style11" bgcolor="#990033">
                <tr>
                    <td rowspan="3" class="style18">
                        <asp:Image ID="Image1" runat="server" Height="322px" 
                            ImageUrl='<%# Eval("rimg") %>' Width="344px" />
                    </td>
                    <td class="style15" align="center" >
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("recipename") %>' 
                            Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style16" align="center">
                        <asp:Label ID="Label13" runat="server" Text="Prep time:"   Font-Bold="True"></asp:Label>
                        &nbsp;<asp:Label ID="Label16" runat="server" Text='<%# Eval("ptime") %>'   Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13"  align="center">
                        <asp:Label ID="Label14" runat="server" Text="Total time:"   Font-Bold="True"></asp:Label>
                        &nbsp;<asp:Label ID="Label17" runat="server" Text='<%# Eval("tottime") %>'   Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Servings:"   Font-Bold="True"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("servings") %>'  Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td  class="style19"  align="center">
                        <asp:Label ID="Label1" runat="server" Text="Ingredients:"  Font-Bold="True"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label19" runat="server"   Font-Bold="True"
                            Text='<%# Eval("ingre") %>'></asp:Label>
                    </td>
                        <td  class="style17"  align="center">
                         <asp:Label ID="Label2" runat="server" Text="Method:"  Font-Bold="True"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label20" runat="server"   Font-Bold="True"
                                Text='<%# Eval("description") %>'></asp:Label>
                    </td>
                </tr>
               
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [adminrecipe] WHERE ([recipename] = @recipename)">
        <SelectParameters>
            <asp:QueryStringParameter Name="recipename" QueryStringField="id" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource> 

    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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
</html>
--%>