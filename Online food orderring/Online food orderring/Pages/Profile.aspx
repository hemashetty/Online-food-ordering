<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Profile.aspx.cs" Inherits="Online_food_orderring.Pages.Profile" %>


<asp:Content ID="prof" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li class="active"><a href="Profile.aspx" >Profile</a></li>|
                            <li ><a href="North_restaurant_selection.aspx">North Indian Food</a></li>|
                            <li><a href="south_restaurant_selection.aspx">South Indian Food</a></li>|
                            <li><a href="Western_restaurant_selection.aspx">Western Food</a></li>
                            <li><a href="Order.aspx">Selected Order</a></li>
                            <li><a href="History.aspx">History</a></li>
                            <li><a href="logout.aspx">Log Out</a></li>
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
<asp:Content ID="proff" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 789px; height: 656px; margin-right: 0px;" aria-multiline="False" aria-orientation="horizontal" border="0">
            <tr>
                <td class="auto-style2" style="width: 12%; height: 45px;">&nbsp;</td>
                <td class="auto-style2" style="font-size: xx-large; height: 45px; width: 748px;">
                    Profile</td>
            </tr>
            <tr>
                <td class="nav-justified" style="width: 12%; text-align: left; height: 73px;">Username:</td>
                <td class="carousel1" style="height: 73px; width: 748px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_usernm" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="nav-justified" style="width: 12%; text-align: left; height: 105px;">
                   
                        Email:<br />
                    <asp:Button ID="btn_email" runat="server" OnClick="btn_email_Click" Text="Change Email" Width="165px" ValidationGroup="emil" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
&nbsp;</td>
                <td class="auto-style4" style="height: 105px; width: 748px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_emil" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_email" runat="server" CssClass="auto-style9" Height="44px" Width="229px" Visible="False" style="margin-left: 0" ValidationGroup="emil"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter email id" ValidationGroup="emil"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter correct email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="emil"></asp:RegularExpressionValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_emil_ok" runat="server" OnClick="btn_emil_ok_Click" Text="OK" Visible="False" ValidationGroup="emil" />
&nbsp;<asp:Button ID="btn_cancel_emil" runat="server" OnClick="btn_cancel_emil_Click" Text="Cancel" Visible="False" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="nav-justified" style="width: 12%; text-align: left; height: 204px;">Address:<br />
                    <asp:Button ID="btn_add" runat="server" Text="Change Address" Width="164px" OnClick="btn_add_Click" ValidationGroup="add" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style6" style="height: 204px; width: 748px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_add" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_add" runat="server" Height="42px" Width="253px" Visible="False" ValidationGroup="add"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_add" ErrorMessage="*Please enter address" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_add_ok" runat="server" OnClick="btn_add_ok_Click" Text="OK" Visible="False" ValidationGroup="add" />
&nbsp;<asp:Button ID="btn_add_cancel" runat="server" OnClick="btn_add_cancel_Click" Text="Cancel" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="nav-justified" style="width: 12%; text-align: center; height: 231px;">Password:<br />
                    <asp:Button ID="Button1" runat="server" Text="Change Password" Width="163px" OnClick="Button1_Click" ValidationGroup="pswd" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style8" style="height: 231px; width: 748px;">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_pswd" runat="server" Height="35px" Width="253px" Visible="False" ValidationGroup="pswd" TextMode="Password" style="margin-top: 0"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_pswd" ErrorMessage="*Please enter password" ValidationGroup="pswd"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_pswd_cnfrm" runat="server" Height="39px" Visible="False" Width="252px" ValidationGroup="pswd" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_pswd_cnfrm" ErrorMessage="*Please enter confirm password" ValidationGroup="pswd"></asp:RequiredFieldValidator>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pswd" ControlToValidate="txt_pswd_cnfrm" ErrorMessage="*Password does not match" ValidationGroup="pswd"></asp:CompareValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_ok_pswd" runat="server" OnClick="btn_ok_pswd_Click" Text="OK" Visible="False" ValidationGroup="pswd" />
&nbsp;<asp:Button ID="btn_cancel_pswd" runat="server" Text="Cancel" Visible="False" OnClick="btn_cancel_pswd_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 12%"></td>
                <td style="width: 748px"></td>
            </tr>
        </table>
   
</asp:Content>