<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="setting.aspx.cs" Inherits="Online_food_orderring.Pages.setting" %>

<asp:Content ID="prof" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                           <li class="active"><a href="setting.aspx" >Setting</a></li>|
                            <li ><a href="Add_recepie.aspx" >Add Recepie</a></li>|
                            <li ><a href="Edit_recepie.aspx">Edit Recepie</a></li>
                            <li ><a href="Update.aspx">Delete</a></li>
                     <li ><a href="obtained_order.aspx">Orders</a></li>

                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
<asp:Content ID="proff" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 851px; height: 478px">
            <tr>
                <td class="auto-style1" style="height: 42px; width: 274px;">&nbsp;</td>
                <td style="height: 42px" class="auto-style2">
                    Settings</td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 42px; width: 274px; text-align: right;">Username:</td>
                <td style="height: 42px">
                    &nbsp;&nbsp;
                    <asp:Label ID="lbl_usernm" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right; width: 274px">Email<br />
                    <asp:Button ID="btn_email" runat="server" OnClick="btn_email_Click" Text="Change Email" Width="141px" ValidationGroup="emil" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="lbl_email" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;
                    <asp:TextBox ID="txt_email" runat="server" Height="29px" Visible="False" Width="185px" ValidationGroup="emil"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter email" ValidationGroup="emil"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="emil"></asp:RegularExpressionValidator>
                    <br />
                    &nbsp;&nbsp;
                    <asp:Button ID="btn_emil_k" runat="server" OnClick="btn_emil_k_Click" Text="OK" Visible="False" ValidationGroup="emil" />
                &nbsp;&nbsp; <asp:Button ID="btn_emil_cancel" runat="server" OnClick="btn_emil_cancel_Click" Text="Cancel" Visible="False" />
                    <br />
                    <br />
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 274px; text-align: right">Address<br />
                    <asp:Button ID="btn_addrs" runat="server" Text="Change Address" OnClick="btn_addrs_Click" ValidationGroup="add" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="lbl_addrs" runat="server" Text="Label"></asp:Label>
                    <br />
                    &nbsp;
                    <asp:TextBox ID="txt_add" runat="server" Height="33px" Visible="False" Width="189px" ValidationGroup="add"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_add" ErrorMessage="*Please enter address" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    &nbsp;
                    <asp:Button ID="btn_addr_k" runat="server" OnClick="btn_addr_k_Click" Text="OK" Visible="False" ValidationGroup="add" />
                    &nbsp; <asp:Button ID="btn_add_cancel" runat="server" Text="Cancel" Visible="False" OnClick="btn_add_cancel_Click" />
                    <br />
                    <br />
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 274px; text-align: right">Password<br />
                    <asp:Button ID="btn_chng_pswd" runat="server" Text="Change Password" OnClick="btn_chng_pswd_Click" ValidationGroup="pswd" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;&nbsp;<asp:TextBox ID="txt_pswd" runat="server" Height="30px" Visible="False" Width="193px" ValidationGroup="pswd" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_pswd" ErrorMessage="*Please enter password" ValidationGroup="pswd"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    &nbsp;
                    <asp:TextBox ID="txt_pswd_cnfrm" runat="server" Height="30px" Visible="False" Width="192px" ValidationGroup="pswd" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_pswd_cnfrm" ErrorMessage="*Please enter confirm password" ValidationGroup="pswd"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pswd" ControlToValidate="txt_pswd_cnfrm" ErrorMessage="*Password does not match" ValidationGroup="pswd"></asp:CompareValidator>
                    <br />
                    &nbsp;&nbsp;
                    <asp:Button ID="btn_pswd_k" runat="server" OnClick="btn_pswd_k_Click" Text="OK" Visible="False" ValidationGroup="pswd" />
                &nbsp;<asp:Button ID="btn_pswd_cancel" runat="server" OnClick="btn_pswd_cancel_Click" Text="Cancel" Visible="False" />
                </td>
            </tr>
        </table>
   </asp:Content>