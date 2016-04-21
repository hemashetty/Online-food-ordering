<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Admin_order.aspx.cs" Inherits="Online_food_orderring.Pages.Admin_order" %>


<asp:Content ID="admin" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="Admin_setting.aspx" >Setting</a></li>|
                            <li ><a href="Restaurants.aspx" >Restaurant detail</a></li>|
                            <li ><a href="Customer.aspx" >Customer detail</a></li>|
                            <li class="active"><a href="Admin_order.aspx" >Order detail</a></li>|
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
<asp:Content ID="adcont" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="O_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Vertical" Height="382px" Width="783px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="O_Id" HeaderText="O_Id" InsertVisible="False" ReadOnly="True" SortExpression="O_Id" />
                <asp:BoundField DataField="R_Name" HeaderText="R_Name" SortExpression="R_Name" />
                <asp:BoundField DataField="F_Name" HeaderText="F_Name" SortExpression="F_Name" />
                <asp:BoundField DataField="F_Type" HeaderText="F_Type" SortExpression="F_Type" />
                <asp:BoundField DataField="Datetime" HeaderText="Datetime" SortExpression="Datetime" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT [O_Id], [R_Name], [F_Name], [F_Type], [Datetime] FROM [Order]"></asp:SqlDataSource>
    
    </asp:Content>
  
