<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Order.aspx.cs" Inherits="Online_food_orderring.Pages.Order" %>

<asp:Content ID="nrth" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="Profile.aspx" >Profile</a></li>|
                            <li ><a href="North_restaurant_selection.aspx">North Indian Food</a></li>|
                            <li><a href="south_restaurant_selection.aspx">South Indian Food</a></li>|
                            <li><a href="Western_restaurant_selection.aspx">Western Food</a></li>
                            <li class="active"><a href="Order.aspx">Selected Order</a></li>
                            <li><a href="History.aspx">History</a></li>
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
<asp:Content ID="ordr" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 1378px">
            <tr>
                <td class="auto-style6">
        <asp:GridView ID="gvSelected" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    AutoGenerateColumns="False"  Width="401px" Height="165px" CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
    <Columns>
       





      <%-- 
        <asp:BoundField DataField="N_price" HeaderText="N_price" DataFormatString="{0:C}" ItemStyle-Width="150" HtmlEncode="False">
<ItemStyle Width="150px"></ItemStyle>--%>
       <%-- </asp:BoundField>--%>


        <asp:TemplateField HeaderText="R_Name" SortExpression="R_Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("R_Name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("R_Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="North_indian">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("North_indian") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("North_indian") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle Width="150px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="N_price">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("N_price") %>' ></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("N_price") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle Width="150px" />
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2"   runat="server"></asp:TextBox>
            </ItemTemplate>
              <FooterTemplate>
                    <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                </FooterTemplate>
             </asp:TemplateField>
       
    </Columns>

            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />

<HeaderStyle BackColor="#00CC00" ForeColor="White" Font-Bold="True"></HeaderStyle>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
    
                </td>
                <td class="auto-style7">
                    <asp:GridView ID="gvSouth" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" Width="452px" Height="165px" CellPadding="4" ForeColor="#333333" >
                        <AlternatingRowStyle BackColor="White" />
                   <Columns>
       <%--<asp:BoundField DataField="Dieces" HeaderText="Dieces" ItemStyle-Width="150" />--%>

                       <asp:TemplateField HeaderText="R_Name">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("R_Name") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("R_Name") %>'></asp:Label>
                           </ItemTemplate>
                           <ItemStyle Width="150px" />
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="South_indian">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("South_indian") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label3" runat="server" Text='<%# Bind("South_indian") %>'></asp:Label>
                           </ItemTemplate>
                           <ItemStyle Width="150px" />
                       </asp:TemplateField>

                       <asp:TemplateField HeaderText="S_price" SortExpression="S_price">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("S_price") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("S_price") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
         <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2"   runat="server"></asp:TextBox>
            </ItemTemplate>
             </asp:TemplateField>
    </Columns>

                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />

<HeaderStyle BackColor="#00CC00" ForeColor="White" Font-Bold="True"></HeaderStyle>
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                </td>
                <td>
                    <asp:GridView ID="gvWestern" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" Width="427px" Height="167px" CellPadding="4" ForeColor="#333333"  >
                        <AlternatingRowStyle BackColor="White" />
                   <Columns>
       <%--<asp:BoundField DataField="Dieces" HeaderText="Dieces" ItemStyle-Width="150" />--%>

                       <asp:TemplateField HeaderText="R_Name">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("R_Name") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("R_Name") %>'></asp:Label>
                           </ItemTemplate>
                           <ItemStyle Width="150px" />
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Western">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Western") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("Western") %>'></asp:Label>
                           </ItemTemplate>
                           <ItemStyle Width="150px" />
                       </asp:TemplateField>

                       <asp:TemplateField HeaderText="W_price" SortExpression="W_price">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("W_price") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label3" runat="server" Text='<%# Bind("W_price") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
         
            
                 <asp:TemplateField HeaderText="Quantity" >
            <ItemTemplate>
                <asp:TextBox ID="TextBox2"   runat="server"></asp:TextBox>
            </ItemTemplate>
             </asp:TemplateField>
            
             
    </Columns>

                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />

<HeaderStyle BackColor="#00CC00" ForeColor="White" Font-Bold="True"></HeaderStyle>
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
                <td class="auto-style6" style="height: 48px">
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Total" Visible="False" />
    
        <asp:Label ID="Label1" runat="server" Text="0.00" Visible="False"></asp:Label>
                </td>
                <td class="auto-style7" style="height: 48px">
                    <asp:Button ID="btn_sth" runat="server" OnClick="btn_sth_Click" Text="Total" Visible="False" />
&nbsp;<asp:Label ID="lbl_sth" runat="server" Text="0.00" Visible="False"></asp:Label>
                </td>
                <td style="height: 48px">
                    <asp:Button ID="btn_wtrn" runat="server" OnClick="btn_wtrn_Click" Text="Total" Visible="False" />
&nbsp;<asp:Label ID="lbl_wtrn" runat="server" Text="0.00" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
    
        <asp:Button ID="btn_total" runat="server" OnClick="btn_total_Click" Text="TOTAL AMOUNT" />
        <asp:Label ID="lbl_total" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
        <asp:Button ID="btn_insert" runat="server" OnClick="btn_insert_Click" Text="ORDER NOW" />
    
        <br />
    
   </asp:Content>
