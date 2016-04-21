<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restaurant_selection.aspx.cs" Inherits="Online_food_orderring.Pages.Restaurant_selection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 334px;
        }
        .auto-style3 {
            width: 315px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 419px;
        }
        .auto-style6 {
            width: 363px;
        }
        .auto-style7 {
            width: 334px;
            height: 184px;
        }
        .auto-style8 {
            width: 315px;
            height: 184px;
        }
        .auto-style9 {
            height: 184px;
        }
        .auto-style10 {
            width: 139%;
            height: 222px;
            margin-top: 0px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            margin-left: 280px;
        }
    </style>


   


</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style12">
    
        <p class="auto-style13">
            Select Restaurant:
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="R_Name" DataValueField="R_Name" Height="69px" Width="183px" >
                   <asp:ListItem Text="All Restaurants" Value="" />
        </asp:DropDownList>
        &nbsp;
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT DISTINCT [R_Name] FROM [Restaurant]"></asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="classification" Width="438px" CellPadding="4" ForeColor="#333333" GridLines="None">
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

                         <asp:TemplateField>
<ItemTemplate>
<asp:CheckBox ID="chkSelect" runat="server" />
</ItemTemplate>
</asp:TemplateField> 

                
            </Columns>
            
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
            
        </asp:GridView>
                </td>
                <td class="auto-style8">
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" CssClass="auto-style4" CellPadding="4" ForeColor="#333333" GridLines="None" Width="411px" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="R_Name" HeaderText="R_Name" SortExpression="R_Name" />
                            <asp:BoundField DataField="South_indian" HeaderText="South_indian" SortExpression="South_indian" />
                            <asp:BoundField DataField="S_price" HeaderText="S_price" SortExpression="S_price" />
                             <asp:TemplateField>
<ItemTemplate>
<asp:CheckBox ID="chksSelect" runat="server" />
</ItemTemplate>
</asp:TemplateField> 

                
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
                <td class="auto-style9">
                    <br />
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="western" CellPadding="4" ForeColor="#333333" GridLines="None" Width="356px" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="R_Name" HeaderText="R_Name" SortExpression="R_Name" />
                            <asp:BoundField DataField="Western" HeaderText="Western" SortExpression="Western" />
                            <asp:BoundField DataField="W_price" HeaderText="W_price" SortExpression="W_price" />
                             <asp:TemplateField>
<ItemTemplate>
<asp:CheckBox ID="chkwSelect" runat="server" />
</ItemTemplate>
</asp:TemplateField> 

                
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
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
                <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnGetSelected" runat="server" Text="Order North indian food" OnClick="GetSelectedRecords" Height="51px" Width="205px" />
<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_south" runat="server" Text="Order South indian food" OnClick="GetsSelectedRecords" Height="45px" Width="215px" />
                </td>
                <td class="auto-style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_western" runat="server" Text="Order western food" OnClick="GetwSelectedRecords" Height="42px" Width="175px" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="classification" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT Food.North_indian, Food.N_price, Restaurant.R_Name FROM Food INNER JOIN Restaurant ON Food.R_Id = Restaurant.R_Id" FilterExpression="R_Name = '{0}'">
            <FilterParameters>
        <asp:ControlParameter Name="R_Name" ControlID="DropDownList1" PropertyName="SelectedValue" />
        
             </FilterParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>

        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_items" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Larger" Font-Underline="True" Text="SELECTED ITEMS" Visible="False"></asp:Label>

        <br />
        <table class="auto-style10">
            <tr>
                <td class="auto-style5">
                    <br />
        <asp:GridView ID="gvSelected" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    AutoGenerateColumns="False"  Width="335px">
    <Columns>
       





        <asp:BoundField DataField="North_indian" HeaderText="North_indian" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
       

        <asp:TemplateField HeaderText="N_price">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("N_price") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("N_price") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle Width="150px" />
        </asp:TemplateField>

        <asp:BoundField DataField="R_Name" HeaderText="R_Name" SortExpression="R_Name" Visible="False" />

       <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </ItemTemplate>
          
        </asp:TemplateField>
        <asp:TemplateField>
<ItemTemplate>
<asp:CheckBox ID="chkSelec" runat="server" />
</ItemTemplate>
</asp:TemplateField> 
    </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>
</asp:GridView>
        &nbsp;&nbsp; </td>
                <td class="auto-style6">
                    <br />
                    <asp:GridView ID="gvSouth" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" Width="328px" >
                   <Columns>
        <asp:BoundField DataField="R_Name" HeaderText="R_Name" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="South_indian" HeaderText="South_indian" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
       <%--<asp:BoundField DataField="Dieces" HeaderText="Dieces" ItemStyle-Width="150" />--%>

        <asp:BoundField DataField="S_price" HeaderText="S_price" SortExpression="S_price" />
         
    </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>
                        </asp:GridView>
        &nbsp;&nbsp; </td>
                <td>
                    <br />
                    <asp:GridView ID="gvWestern" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" Width="334px" >
                   <Columns>
        <asp:BoundField DataField="R_Name" HeaderText="R_Name" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="Western" HeaderText="Western" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
       <%--<asp:BoundField DataField="Dieces" HeaderText="Dieces" ItemStyle-Width="150" />--%>

        <asp:BoundField DataField="W_price" HeaderText="W_price" SortExpression="W_price" />

    </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>
                        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT Food.South_indian, Food.S_price, Restaurant.R_Name FROM Food INNER JOIN Restaurant ON Food.R_Id = Restaurant.R_Id" FilterExpression="R_Name='{0}'">
                         <FilterParameters>
        <asp:ControlParameter Name="R_Name" ControlID="DropDownList1" PropertyName="SelectedValue" />
        
             </FilterParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style6">
                    <asp:SqlDataSource ID="western" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT Restaurant.R_Name, Food.Western, Food.W_price FROM Food INNER JOIN Restaurant ON Food.R_Id = Restaurant.R_Id" FilterExpression="R_Name = '{0}'">
                         <FilterParameters>
        <asp:ControlParameter Name="R_Name" ControlID="DropDownList1" PropertyName="SelectedValue" />
        
             </FilterParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />

        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

        <br />

        &nbsp;<br />
    
    </div>
    </form>
</body>
</html>
