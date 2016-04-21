<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Customer.aspx.cs" Inherits="Online_food_orderring.Pages.Customer" %>

<asp:Content ID="admin" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="Admin_setting.aspx" >Setting</a></li>|
                            <li ><a href="Restaurants.aspx" >Restaurant detail</a></li>|
                            <li class="active"><a href="Customer.aspx" >Customer detail</a></li>|
                            <li ><a href="Admin_order.aspx" >Order detail</a></li>|
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
<asp:Content ID="adcont" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="C_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Vertical" Height="331px" Width="773px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="C_Id" HeaderText="C_Id" InsertVisible="False" ReadOnly="True" SortExpression="C_Id" />
                            <asp:BoundField DataField="C_user" HeaderText="C_user" SortExpression="C_user" />
                            <asp:BoundField DataField="C_Add" HeaderText="C_Add" SortExpression="C_Add" />
                            <asp:BoundField DataField="C_Phone" HeaderText="C_Phone" SortExpression="C_Phone" />
                            <asp:BoundField DataField="C_Email" HeaderText="C_Email" SortExpression="C_Email" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#00CC00" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT [C_Id], [C_user], [C_Add], [C_Phone], [C_Email] FROM [Customer]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
   </asp:Content>