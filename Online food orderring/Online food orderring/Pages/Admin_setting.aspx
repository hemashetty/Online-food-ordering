<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Admin_setting.aspx.cs" Inherits="Online_food_orderring.Pages.Admin_setting" %>

<asp:Content ID="admin" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li class="active"><a href="setting.aspx" >Setting</a></li>|
                      <li ><a href="Restaurants.aspx" >Restaurant detail</a></li>|
                            <li ><a href="Customer.aspx" >Customer detail</a></li>|
                            <li ><a href="Admin_order.aspx" >Order detail</a></li>|
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
<asp:Content ID="adcont" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 1302px; height: 254px"  rules="rows">
            <tr>
                <td class="auto-style1" style="text-align: right; width: 202px; height: 111px;"></td>
                <td style="width: 351px; height: 111px;" class="auto-style2">
                    SETTING</td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right; width: 202px; height: 182px;" >
                    <br />
                    &nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td style="width: 351px; height: 182px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp; Username:
                    <asp:Label ID="lbl_admin" runat="server" Text="Label"></asp:Label>
                    <br />
&nbsp;
                    <asp:Button ID="btn_chng_usernm" runat="server" Text="Change username" OnClick="btn_chng_usernm_Click" ValidationGroup="usr" />
                    <br />
                    <br />
&nbsp;
                    <asp:TextBox ID="txt_usernm" runat="server" Visible="False" Height="43px" ValidationGroup="usr" Width="260px"></asp:TextBox>
                    <br />
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_usernm" ErrorMessage="*Please enter username" ValidationGroup="usr"></asp:RequiredFieldValidator>
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_ok_usrnm" runat="server" Text="OK" OnClick="btn_ok_usrnm_Click" Visible="False" ValidationGroup="usr" />
                    <asp:Button ID="btn_user_cancel" runat="server" Text="Cancel" Visible="False" OnClick="btn_user_cancel_Click" />
                    <br />
&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: right; width: 202px;"><br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td style="width: 351px">
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_pswd" runat="server" Text="change Password" OnClick="btn_pswd_Click" ValidationGroup="pswd" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_pswd" runat="server" Visible="False" Height="43px" TextMode="Password" ValidationGroup="pswd" Width="260px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pswd" ErrorMessage="*Please enter password" ValidationGroup="pswd"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_cnfrm_pswd" runat="server" Visible="False" Height="43px" TextMode="Password" ValidationGroup="pswd" Width="260px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Please enter confirm password" ValidationGroup="pswd"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pswd" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Password does not match" ValidationGroup="pswd"></asp:CompareValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_k" runat="server" Text="OK" OnClick="btn_k_Click" Visible="False" ValidationGroup="pswd" />
                    &nbsp;<asp:Button ID="btn_pswd_cancel" runat="server" Text="Cancel" Visible="False" OnClick="btn_pswd_cancel_Click" />
                </td>
            </tr>
        </table>
    </asp:Content>