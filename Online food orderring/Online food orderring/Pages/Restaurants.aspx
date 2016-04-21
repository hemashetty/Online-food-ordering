<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Restaurants.aspx.cs" Inherits="Online_food_orderring.Pages.Restaurants" %>

<asp:Content ID="admin" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="Admin_setting.aspx" >Setting</a></li>|
                             <li class="active"><a href="Restaurants.aspx" >Restaurant detail</a></li>|
                            <li ><a href="Customer.aspx" >Customer detail</a></li>|
                            <li><a href="Admin_order.aspx" >Order detail</a></li>|
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
<asp:Content ID="adcont" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 791px; height: 282px">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="R_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Vertical" HorizontalAlign="Center" Height="333px" Width="797px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="R_User" HeaderText="R_User" SortExpression="R_User" />
                            <asp:BoundField DataField="R_Id" HeaderText="R_Id" InsertVisible="False" ReadOnly="True" SortExpression="R_Id" />
                            <asp:BoundField DataField="R_Name" HeaderText="R_Name" SortExpression="R_Name" />
                            <asp:BoundField DataField="R_Phone" HeaderText="R_Phone" SortExpression="R_Phone" />
                            <asp:BoundField DataField="R_Email" HeaderText="R_Email" SortExpression="R_Email" />
                            <asp:BoundField DataField="R_Add" HeaderText="R_Add" SortExpression="R_Add" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" SortExpression="CreatedDate" />
                            <asp:BoundField DataField="lastLoginDate" HeaderText="lastLoginDate" SortExpression="lastLoginDate" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT [R_User], [R_Id], [R_Name], [R_Phone], [R_Email], [R_Add], [CreatedDate], [lastLoginDate] FROM [Restaurant]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
   
    </asp:Content>