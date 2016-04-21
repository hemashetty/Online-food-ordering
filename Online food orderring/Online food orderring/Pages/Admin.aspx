<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Admin.aspx.cs" Inherits="Online_food_orderring.Pages.Admin" %>
<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 class="text-center">Login</h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 794px; height: 148px">
            <tr>
                <td class="modal-sm" style="width: 435px; height: 65px; text-align: right;">Admin name</td>
                <td style="height: 65px">
                    &nbsp;
                    <asp:TextBox ID="txt_admin" runat="server" Height="43px" Width="260px"></asp:TextBox>
                    <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_admin" ErrorMessage="*Please enter username"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 435px; text-align: right;">Password</td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="txt_pswd" runat="server" Height="43px" TextMode="Password" Width="260px"></asp:TextBox>
                    <br />
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pswd" ErrorMessage="*Please enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 435px; height: 55px"></td>
                <td style="height: 55px">
                    <asp:Button ID="btn_admin_logn" runat="server" OnClick="btn_admin_logn_Click" Text="Login" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Admin_reset_pswd.aspx">Forgot Password?</asp:HyperLink>
                </td>
            </tr>
        </table>
  
    </asp:Content>