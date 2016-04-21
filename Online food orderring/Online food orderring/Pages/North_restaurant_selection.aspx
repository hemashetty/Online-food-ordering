<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="North_restaurant_selection.aspx.cs" Inherits="Online_food_orderring.Pages.North_restaurant_selection" %>

<asp:Content ID="nrth" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="Profile.aspx" >Profile</a></li>|
                            <li class="active"><a href="North_restaurant_selection.aspx">North Indian Food</a></li>|
                            <li><a href="south_restaurant_selection.aspx">South Indian Food</a></li>|
                            <li><a href="Western_restaurant_selection.aspx">Western Food</a></li>
                            <li><a href="Order.aspx">Selected Order</a></li>
                            <li><a href="History.aspx">History</a></li>
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
    <asp:Content ID="nrthcnt" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 952px; height: 477px">
            <tr>
                <td class="auto-style2" style="font-size: x-large; height: 90px; width: 410px">&nbsp;</td>
                <td style="height: 90px">
    
                    Select Restaurant:&nbsp;
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="R_Name" DataValueField="R_Name" Height="41px" Width="227px" >
                   <asp:ListItem Text="All Restaurants" Value="" />
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 410px">&nbsp;</td>
                <td>
                    <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="classification" Width="770px" CellPadding="4" ForeColor="#333333" GridLines="None" Height="473px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="North_indian" HeaderText="North_indian" SortExpression="North_indian" />
                <asp:BoundField DataField="N_price" HeaderText="N_price" DataFormatString="{0:f}" SortExpression="N_price" HtmlEncode="False" />
                <asp:BoundField DataField="R_Name" HeaderText="R_Name" SortExpression="R_Name" />
      
              <%--  <asp:TemplateField HeaderText="R_Name" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("R_Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="Quantity" Visible="False">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" Text="1" runat="server"></asp:TextBox>
            </ItemTemplate>
          
        </asp:TemplateField>
                         <asp:TemplateField>
<ItemTemplate>
<asp:CheckBox ID="chkSelect" runat="server" />
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
                <td class="auto-style2" style="width: 410px">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_north" runat="server" OnClick="btn_north_Click" Text="Order Now" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 410px">
        <asp:SqlDataSource ID="classification" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT Food.North_indian, Food.N_price, Restaurant.R_Name FROM Food INNER JOIN Restaurant ON Food.R_Id = Restaurant.R_Id" FilterExpression="R_Name = '{0}'">
            <FilterParameters>
        <asp:ControlParameter Name="R_Name" ControlID="DropDownList1" PropertyName="SelectedValue" />
        
             </FilterParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT DISTINCT [R_Name] FROM [Restaurant]"></asp:SqlDataSource>
                    </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
   
</asp:Content>