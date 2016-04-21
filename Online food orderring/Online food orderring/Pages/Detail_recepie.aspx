<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail_recepie.aspx.cs" Inherits="Online_food_orderring.Pages.Detail_recepie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:GridView ID="gvSelected" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="North_indian" HeaderText="North_indian" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="N_price" HeaderText="N_price" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
       <%--<asp:BoundField DataField="Dieces" HeaderText="Dieces" ItemStyle-Width="150" />--%>

        <asp:TemplateField>
        <ItemTemplate>
            <asp:TextBox ID="TextBox1" runat="server" Text=""></asp:TextBox>
        </ItemTemplate>
    </asp:TemplateField>

    </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>
</asp:GridView>
    
    </div>
    </form>
</body>
</html>
