<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Western_restaurant_selection.aspx.cs" Inherits="Online_food_orderring.Pages.Western_restaurant_selection" %>

<asp:Content ID="south" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                         <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="Profile.aspx" >Profile</a></li>|
                            <li ><a href="North_restaurant_selection.aspx">North Indian Food</a></li>|
                            <li><a href="south_restaurant_selection.aspx">South Indian Food</a></li>|
                            <li class="active"><a href="Western_restaurant_selection.aspx">Western Food</a></li>
                            <li><a href="Order.aspx">Selected Order</a></li>
                            <li><a href="History.aspx">History</a></li>
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               </asp:Content>
<asp:Content ID="nrthcnt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <table class="auto-style1" style="width: 1223px">
            <tr>
                <td class="modal-sm" style="width: 172px">&nbsp;</td>
                <td>
    
                    Select Restaurant:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="R_Name" DataValueField="R_Name" Height="41px" Width="227px" >
                   <asp:ListItem Text="All Restaurants" Value="" />
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 172px">&nbsp;</td>
                <td>
                    &nbsp;<br />
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="western" CellPadding="4" ForeColor="#333333" GridLines="None" Width="770px" Height="473px" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="R_Name" HeaderText="R_Name" SortExpression="R_Name" />
                            <asp:BoundField DataField="Western" HeaderText="Western" SortExpression="Western" />
                            <asp:BoundField DataField="W_price" HeaderText="W_price" DataFormatString="{0:f}" SortExpression="W_price" />
                            
                            
                        <asp:TemplateField HeaderText="Quantity" Visible="False">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </ItemTemplate>
             </asp:TemplateField>
  <asp:TemplateField>
                <ItemTemplate>
<asp:CheckBox ID="chkwSelect" runat="server" />
</ItemTemplate>
</asp:TemplateField> 
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
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 172px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT DISTINCT [R_Name] FROM [Restaurant]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="western" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT Restaurant.R_Name, Food.Western, Food.W_price FROM Food INNER JOIN Restaurant ON Food.R_Id = Restaurant.R_Id" FilterExpression="R_Name = '{0}'">
                         <FilterParameters>
        <asp:ControlParameter Name="R_Name" ControlID="DropDownList1" PropertyName="SelectedValue" />
        
             </FilterParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="btn_wester" runat="server" OnClick="btn_wester_Click" Text="Order Now" />
                </td>
            </tr>
        </table>
    
    
</asp:Content>