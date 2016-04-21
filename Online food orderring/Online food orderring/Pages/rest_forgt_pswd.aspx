<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="rest_forgt_pswd.aspx.cs" Inherits="Online_food_orderring.Pages.rest_forgt_pswd" %>

<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 class="text-center">Forget Password</h1>
</asp:Content>
<asp:Content ID="cont" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 777px; height: 197px">
            <tr>
                <td class="auto-style2" style="width: 390px; height: 97px; text-align: right;">Email</td>
                <td class="auto-style1" style="width: 359px; height: 97px;">
                    &nbsp;
                    <br />
                    <br />
&nbsp;<asp:TextBox ID="txt_email" runat="server" Height="40px" Width="344px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter email id"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter correct email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 390px">&nbsp;</td>
                <td class="auto-style1" style="width: 359px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_frgt_pswd" runat="server" OnClick="btn_frgt_pswd_Click" Text="Forget Password" />
                </td>
            </tr>
            <tr>
                <td style="width: 390px" class="modal-sm">&nbsp;</td>
                <td style="width: 359px">
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </asp:Content>
