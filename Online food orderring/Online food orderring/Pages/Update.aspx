<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Update.aspx.cs" Inherits="Online_food_orderring.Pages.Update" %>

<asp:Content ID="del" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


   <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                           <li ><a href="setting.aspx" >Setting</a></li>|
                            <li ><a href="Add_recepie.aspx" >Add Recepie</a></li>|
                            <li ><a href="Edit_recepie.aspx">Edit Recepie</a></li>
                            <li class="active"><a href="Update.aspx">Delete</a></li>
                     <li ><a href="obtained_order.aspx">Orders</a></li>
                            
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
   
    </asp:Content>
<asp:Content ID="up" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="text-left">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDeleteRecord" runat="server" Text="Delete" OnClick="btnDeleteRecord_Click" Height="43px" Width="124px" />
    
         <br />
    
         <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="F_Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style1" Height="552px" Width="880px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                 <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:CheckBox ID="chkDel" runat="server" />  
                    </ItemTemplate> 
                       </asp:TemplateField> 
                <asp:BoundField DataField="F_Id" HeaderText="F_Id" InsertVisible="False" ReadOnly="True" SortExpression="F_Id" />
                <asp:BoundField DataField="North_indian" HeaderText="North_indian" SortExpression="North_indian" />
                <asp:BoundField DataField="N_price" HeaderText="N_price" SortExpression="N_price" />
                <asp:BoundField DataField="South_indian" HeaderText="South_indian" SortExpression="South_indian" />
                <asp:BoundField DataField="S_price" HeaderText="S_price" SortExpression="S_price" />
                <asp:BoundField DataField="Western" HeaderText="Western" SortExpression="Western" />
                <asp:BoundField DataField="W_price" HeaderText="W_price" SortExpression="W_price" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT [F_Id], [North_indian], [N_price], [South_indian], [S_price], [Western], [W_price] FROM [Food] WHERE ([R_Id] = @R_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="R_Id" SessionField="rid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    &nbsp;</div>
   
</asp:Content>