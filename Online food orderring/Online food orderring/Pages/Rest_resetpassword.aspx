<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Rest_resetpassword.aspx.cs" Inherits="Online_food_orderring.Pages.Rest_resetpassword" %>

<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 class="text-center">Reset Password</h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 930px">
            <tr>
                <td class="auto-style2" style="width: 429px">&nbsp;</td>
                <td style="width: 452px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: x-large; width: 429px; text-align: right; height: 121px">New Password:</td>
                <td style="height: 121px; width: 452px">
                    <asp:TextBox ID="txt_pswd" runat="server" Height="45px" Width="324px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pswd" ErrorMessage="*Please enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: x-large; width: 429px; text-align: right">Confirm new password:</td>
                <td style="width: 452px">
                    <asp:TextBox ID="txt_cnfrm_pswd" runat="server" Height="48px" Width="321px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Please enter confirm password"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pswd" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Password does not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 429px">&nbsp;</td>
                <td style="width: 452px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_rest_pswd" runat="server" OnClick="btn_rest_pswd_Click" Text="Reset Password" Height="41px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 429px">&nbsp;</td>
                <td style="width: 452px">&nbsp;</td>
            </tr>
        </table>
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </div>
   </asp:Content>