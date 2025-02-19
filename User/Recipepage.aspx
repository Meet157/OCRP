<%@ Page Title="" Language="C#" MasterPageFile="~/User/userMasterPage.master" AutoEventWireup="true" CodeFile="Recipepage.aspx.cs" Inherits="User_Recipepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            text-align: center;
        }
        .style11
        {
            Border:1px solid black;
            
            }
        .style19
        {
            height: 94px;
            width: 178px;
        }
        .style20
        {
            width: 178px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="text-align: left">
    <asp:Label ID="Label3" runat="server" Text="Categories:" Font-Bold="True" 
        Font-Size="35px"></asp:Label>&nbsp;<asp:LinkButton ID="LinkButton1" 
        runat="server" Font-Size="30px" onclick="LinkButton1_Click">Veg</asp:LinkButton>
&nbsp; |
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="30px" 
        onclick="LinkButton2_Click">Non-Veg</asp:LinkButton>
&nbsp; |&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="30px" 
        onclick="LinkButton3_Click">Dessert</asp:LinkButton>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
       <asp:TextBox ID="TextBox1" runat="server" Height="38px" 
                style="margin-left: 0px; margin-top: 0px;" Width="456px" 
        BackColor="#CCCCCC" ToolTip="Search Recipes here"></asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                ImageUrl="~/Images/searchicon.jpeg" Width="50px" 
                onclick="ImageButton1_Click" />
    </div>
    <p style="text-align: center">
        <asp:Label ID="Label20" runat="server" Text="Label" Font-Bold="True" 
            Font-Size="Larger"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </p>
    <p style="text-align: center">
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" 
            onitemcommand="DataList1_ItemCommand" 
            BorderColor="Black" BorderWidth="2px" Height="400px" 
            onitemdatabound="DataList1_ItemDataBound">
            <ItemTemplate>
                 <table class="style11" bgcolor="#990033">
                
                <tr>
                    <td rowspan="2" class="style14"  align="center">
                        <asp:Image ID="Image1" runat="server" Height="300px" 
                            ImageUrl='<%# Eval("rimg") %>' Width="193px" />
                    </td>
                    <td class="style19"  align="center">
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("recipename") %>'  Font-Bold="True" Font-Size="Large"></asp:Label>
                        
                        <br />
                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("recipeid") %>'></asp:Label>
                        
                    </td>
                </tr>
                
                <tr>
                    <td class="style20"  align="center">
                      <asp:Label ID="Label5" runat="server" Text="Category:" Font-Bold="True"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("cattype") %>' Font-Bold="True"></asp:Label><br />
                     <asp:Label ID="Label1" runat="server" Text="Prep time:" Font-Bold="True"></asp:Label>
                        &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("ptime") %>' Font-Bold="True"></asp:Label><br />
                        <asp:Label ID="Label14" runat="server" Text="Total time:" Font-Bold="True"></asp:Label>
                        &nbsp;<asp:Label ID="Label17" runat="server" Text='<%# Eval("tottime") %>' Font-Bold="True"></asp:Label><br />
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Servings:" Font-Bold="True"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("serving") %>' Font-Bold="True"></asp:Label><br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td  class="style18" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Text="SEE FULL RECIPE" 
                            CommandArgument='<%#Eval("recipename")%>' CommandName="seefullrecipe" 
                            Font-Bold="True" Font-Size="Large"  />
                        &nbsp;</td>
                </tr>
            <tr>
                    <td  class="style18" colspan="2">
                       &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            CommandArgument='<%#Eval("recipeid")%>' CommandName="addtofav" Height="35px" 
                            Width="35px"  />
                        &nbsp;</td>
                </tr>
            </table>
        
<br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [adminrecipe]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            
            SelectCommand="SELECT * FROM [adminrecipe] WHERE ([cattype] = @cattype)">
            <SelectParameters>
                <asp:QueryStringParameter Name="cattype" QueryStringField="cat" 
                    Type="String" />
               
            </SelectParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>






