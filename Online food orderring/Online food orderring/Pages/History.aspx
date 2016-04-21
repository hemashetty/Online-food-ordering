<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="History.aspx.cs" Inherits="Online_food_orderring.Pages.History" %>
<asp:Content ID="nrth" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="Profile.aspx" >Profile</a></li>|
                            <li ><a href="North_restaurant_selection.aspx">North Indian Food</a></li>|
                            <li><a href="south_restaurant_selection.aspx">South Indian Food</a></li>|
                            <li><a href="Western_restaurant_selection.aspx">Western Food</a></li>
                            <li><a href="Order.aspx">Selected Order</a></li>
                            <li class="active"><a href="History.aspx">History</a></li>
                            <li><a href="logout.aspx">Log Out</a></li>
                            
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
<asp:Content ID="hstry" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="height: 371px; width: 861px;">
            <tr>
                <td style="height: 91px"></td>
                <td class="auto-style2" style="width: 810px; height: 91px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; History</td>
                <td style="height: 91px"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 810px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="519px" Width="803px" style="margin-top: 42px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="R_Name" HeaderText="R_Name" SortExpression="R_Name" />
                            <asp:BoundField DataField="F_Name" HeaderText="F_Name" SortExpression="F_Name" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="ordertime" HeaderText="ordertime" SortExpression="ordertime" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT [R_Name], [F_Name], [Quantity], [Price], [ordertime] FROM [History]"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="btn_hist" runat="server" OnClick="btn_hist_Click" Text="Delete" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
   </asp:Content>