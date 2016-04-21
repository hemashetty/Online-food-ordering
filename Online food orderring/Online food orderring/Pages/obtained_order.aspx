<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="obtained_order.aspx.cs" Inherits="Online_food_orderring.Pages.obtained_order" %>


    <asp:Content ID="prof" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="setting.aspx" >Setting</a></li>|
                            <li ><a href="Add_recepie.aspx" >Add Recepie</a></li>|
                            <li ><a href="Edit_recepie.aspx">Edit Recepie</a></li>
                            <li ><a href="Update.aspx">Delete</a></li>
                     <li class="active"><a href="obtained_order.aspx">Orders</a></li>
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
<asp:Content ID="proff" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="nav-justified">
            <tr>
                <td class="modal-sm" style="width: 198px">Sorted</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 198px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="O_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Vertical" Height="587px" Width="975px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="O_Id" HeaderText="O_Id" InsertVisible="False" ReadOnly="True" SortExpression="O_Id" />
                <asp:BoundField DataField="R_Name" HeaderText="R_Name" SortExpression="R_Name" />
                <asp:BoundField DataField="F_Name" HeaderText="F_Name" SortExpression="F_Name" />
                <asp:BoundField DataField="F_Type" HeaderText="F_Type" SortExpression="F_Type" />
                <asp:BoundField DataField="Dieces" HeaderText="Dieces" SortExpression="Dieces" />
                <asp:BoundField DataField="C_Id" HeaderText="C_Id" SortExpression="C_Id" />
                <asp:BoundField DataField="Pay" HeaderText="Pay" SortExpression="Pay" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online food orderConnectionString %>" SelectCommand="SELECT * FROM [Order] WHERE ([R_Name] = @R_Name)" >
            <SelectParameters>
                <asp:SessionParameter Name="R_Name" SessionField="restaurant" Type="String" />
            </SelectParameters>
           
        </asp:SqlDataSource>
    
    
 </asp:Content>
