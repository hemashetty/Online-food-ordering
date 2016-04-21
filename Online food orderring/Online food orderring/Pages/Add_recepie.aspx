<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Add_recepie.aspx.cs" Inherits="Online_food_orderring.Pages.Add_recepie" %>


    <asp:Content ID="addrecp" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="setting.aspx" >Setting</a></li>|
                            <li class="active"><a href="Add_recepie.aspx" >Add Recepie</a></li>|
                      <li><a href="Edit_recepie.aspx">Edit Recepie</a></li>
                            <li ><a href="Update.aspx">Delete</a></li>
                            <li ><a href="obtained_order.aspx">Orders</a></li>
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
<asp:Content ID="proff" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 785px; height: 308px">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">Add Recepie</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><span class="auto-style4">
                    <br />
                    TYPE OF RECEPIE</span><br />
                </td>
                <td class="auto-style5">NAME OF RECEPIE</td>
                <td class="auto-style4">PRICE</td>
            </tr>
            <tr>
                <td class="auto-style6">North Indian Recepie</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_nrth_indian" runat="server" Height="37px" Width="287px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txt_nrth_price" runat="server" Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">South Indian Recepie</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_south_recepie" runat="server" Width="287px" Height="37px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txt_south_price" runat="server" Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Western Indian Recepie</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_western_rec" runat="server" Width="287px" Height="37px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txt_western_price" runat="server" Height="31px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="btn_add" runat="server" CssClass="auto-style1" Height="35px" OnClick="btn_add_Click" Text="ADD" Width="109px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Content>
 