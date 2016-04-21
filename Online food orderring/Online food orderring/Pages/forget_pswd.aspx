<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget_pswd.aspx.cs" MasterPageFile="~/Pages/pagesmenu.Master" Inherits="Online_food_orderring.Pages.forget_pswd" %>

<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 class="text-center">Forget Password</h1>
</asp:Content>
<asp:Content ID="cont" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 1058px; height: 49px">
            <tr>
                <td class="auto-style2" style="text-align: right; width: 254px; height: 22px; font-size: x-large">Email:</td>
                <td style="height: 22px; width: 531px">
                    &nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;
                    <asp:TextBox ID="txt_email" runat="server" Height="41px" Width="441px"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*Email is incorrect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter Email ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 18px; width: 254px"></td>
                <td style="height: 18px; width: 531px">
                    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_frgt" runat="server" Text="Change password" OnClick="btn_frgt_Click" Height="36px" Width="210px" />
                    <br />
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
                </td>
            </tr>
        </table>
    <div style="height: 173px">
    
    </div>
   
</asp:Content>