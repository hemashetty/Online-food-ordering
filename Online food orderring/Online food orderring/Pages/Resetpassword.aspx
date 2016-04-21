<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Resetpassword.aspx.cs" Inherits="Online_food_orderring.Pages.Resetpassword" %>

<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 class="text-center">Reset Password</h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 885px; height: 265px">
            <tr>
                <td class="auto-style2" style="font-size: x-large; text-align: right">Set New Password:</td>
                <td>
                    <br />
                    <asp:TextBox ID="txt_pswd" runat="server" Height="41px" Width="441px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_pswd" ErrorMessage="*Please enter the password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-size: x-large; text-align: right">Confirm New Password:</td>
                <td>
                    <br />
                    <asp:TextBox ID="txt_cnfrm_pswd" runat="server" Height="41px" Width="441px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Please enter the confirm password"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pswd" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Password does not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_rst_pswd" runat="server" OnClick="btn_rst_pswd_Click" Text="Reset Password" Height="38px" Width="191px" />
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </div>
   </asp:Content>