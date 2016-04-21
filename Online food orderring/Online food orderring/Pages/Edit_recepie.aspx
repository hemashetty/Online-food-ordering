<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Edit_recepie.aspx.cs" Inherits="Online_food_orderring.Pages.Edit_recepie" %>

 <asp:Content ID="addrecp" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="setting.aspx" >Setting</a></li>|
                            <li ><a href="Add_recepie.aspx" >Add Recepie</a></li>|
                            <li class="active"><a href="Edit_recepie.aspx">Edit Recepie</a></li>
                            <li ><a href="Update.aspx">Delete</a></li>
                            <li ><a href="obtained_order.aspx">Orders</a></li>
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
    <asp:Content ID="proff" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_Id"  onrowcancelingedit="GridView1_RowCancelingEdit"
            onrowediting="GridView1_RowEditing"   onrowupdating="GridView1_RowUpdating" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="509px" Width="778px" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                 

                <asp:TemplateField HeaderText="F_Id" >
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("F_Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("F_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="North_indian">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnorth" runat="server" Text='<%# Eval("North_indian") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("North_indian") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="N_price" >
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnprice" runat="server" Text='<%# Eval("N_price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("N_price") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="South_indian" >
                    <EditItemTemplate>
                        <asp:TextBox ID="txtsouth" runat="server" Text='<%# Eval("South_indian") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("South_indian") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="S_price" >
                    <EditItemTemplate>
                        <asp:TextBox ID="txtsprice" runat="server" Text='<%# Eval("S_price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("S_price") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Western">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtwestern" runat="server" Text='<%# Eval("Western") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("Western") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="W_price" >
                    <EditItemTemplate>
                        <asp:TextBox ID="txtwprice" runat="server" Text='<%# Eval("W_price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# Eval("W_price") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Image" HeaderText="Edit" ShowEditButton="True"  EditImageUrl="../images/edit.png" UpdateImageUrl="../images/done.png"
            CancelImageUrl="../images/cancel.png"  >
                <ControlStyle Height="50px" Width="50px" />
                </asp:CommandField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT [F_Id], [North_indian], [N_price], [South_indian], [S_price], [Western], [W_price] FROM [Food] WHERE ([R_Id] = @R_Id)"   UpdateCommand="UPDATE [Food] SET [North_indian] = @North_indian, [N_price] = @N_price, [South_indian] = @South_indian, [S_price] = @S_price, [Western] = @Western, [W_price] = @W_price WHERE [F_Id] = @F_Id" DeleteCommand="DELETE FROM [Food] WHERE [F_Id] = @F_Id" InsertCommand="INSERT INTO [Food] ([North_indian], [N_price], [South_indian], [S_price], [Western], [W_price]) VALUES (@North_indian, @N_price, @South_indian, @S_price, @Western, @W_price)" >
            <DeleteParameters>
                <asp:Parameter Name="F_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="North_indian" Type="String" />
                <asp:Parameter Name="N_price" Type="Decimal" />
                <asp:Parameter Name="South_indian" Type="String" />
                <asp:Parameter Name="S_price" Type="Decimal" />
                <asp:Parameter Name="Western" Type="String" />
                <asp:Parameter Name="W_price" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="lbl_rid" Name="R_Id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="North_indian" Type="String" />
                <asp:Parameter Name="N_price" Type="Decimal" />
                <asp:Parameter Name="South_indian" Type="String" />
                <asp:Parameter Name="S_price" Type="Decimal" />
                <asp:Parameter Name="Western" Type="String" />
                <asp:Parameter Name="W_price" Type="Decimal" />
                <asp:Parameter Name="F_Id" Type="Int32" />
            </UpdateParameters>
            
          
          
         
          

        </asp:SqlDataSource>
   
    
        <br />
        <br />
   
    
        <asp:Label ID="lbl_rid" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
   
    
        <br />
   
    
   
</asp:Content>