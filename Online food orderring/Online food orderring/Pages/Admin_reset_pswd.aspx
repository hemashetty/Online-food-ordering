<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Admin_reset_pswd.aspx.cs" Inherits="Online_food_orderring.Pages.Admin_reset_pswd" %>

<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 class="text-center">Reset Password</h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="height: 470px; width: 1182px">
            <tr>
                <td class="auto-style2" style="width: 34%; font-size: large; text-align: right; height: 74px;">Username</td>
                <td class="modal-sm" style="width: 470px; height: 74px">
                    &nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_usrnm" runat="server" Height="37px" Width="327px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_usrnm" ErrorMessage="*Please enter username"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 34%; font-size: large; text-align: right; height: 19px;">Enter new password</td>
                <td class="modal-sm" style="width: 470px; height: 19px">
                    &nbsp;<br />
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_pswd" runat="server" Height="37px" TextMode="Password" Width="327px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pswd" ErrorMessage="*Please enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 34%; font-size: large; text-align: right; height: 13px;">Enter confirm password<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style1" style="width: 470px; height: 13px">
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_cnfrm_pswd" runat="server" Height="37px" Width="327px" style="font-size: small" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_cnfrm_pswd" CssClass="auto-style1" ErrorMessage="*Please enter the confirm password" style="font-size: medium"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pswd" ControlToValidate="txt_cnfrm_pswd" CssClass="auto-style1" ErrorMessage="*Password does not match" style="font-size: medium"></asp:CompareValidator>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_chng_pswd" runat="server" OnClick="btn_chng_pswd_Click" Text="Change Password" CssClass="auto-style1" EnableTheming="True" Font-Size="Larger" Height="45px" style="font-size: medium" Width="242px" />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 34%; height: 58px"></td>
                <td style="height: 58px; width: 470px;">
                    &nbsp;</td>
            </tr>
        </table>
   </asp:Content>