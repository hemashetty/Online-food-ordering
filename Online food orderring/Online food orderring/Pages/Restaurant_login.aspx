<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="Restaurant_login.aspx.cs" Inherits="Online_food_orderring.Pages.Restaurant_login" %>

<asp:Content ID="addrecp" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="home.aspx" >Home</a></li>|
                            <li ><a href="Login_restaurant.aspx" >Login</a></li>|
                            <li class="active"><a href="Edit.aspx">Registration</a></li>
                            
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
    <asp:Content ID="proff" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    <h1 style="color: #33CC33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Restaurant Registration</h1>
        <asp:Label ID="Label1" runat="server" Text="Create an account" Visible="False"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="width: 173px; height: 57px; text-align: right; font-size: medium; color: #000000; font-weight: normal;">
                    Username*</td>
                <td style="height: 57px">
                    <asp:TextBox ID="txtuser" runat="server" Height="37px" Width="247px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuser" ErrorMessage="*Please enter username"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 173px; font-size: medium; text-align: right; color: #000000; font-weight: normal;">Restaurant Name*</td>
                <td>
                    <asp:TextBox ID="txt_restaurant" runat="server" Height="37px" Width="247px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_restaurant" ErrorMessage="*Please enter restaurant"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 173px; height: 61px; font-size: medium; text-align: right; color: #000000; font-weight: normal;">Mobile*</td>
                <td style="height: 61px">
                    <asp:TextBox ID="txt_code" runat="server" ReadOnly="True" Height="37px" Width="22px">91</asp:TextBox>
                    <asp:TextBox ID="txt_mob_no" runat="server" Height="37px" Width="221px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_mob_no" ErrorMessage="*Please enter mobile"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 173px; font-size: medium; text-align: right; color: #000000; font-weight: normal;">Email*</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_email" runat="server" Height="37px" Width="247px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter email"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 173px; height: 49px; font-size: medium; text-align: right; color: #000000; font-weight: normal;">Address*</td>
                <td class="auto-style4" style="height: 49px">
                    <asp:TextBox ID="txt_address" runat="server" Height="37px" Width="247px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_address" ErrorMessage="*Please enter address"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 173px; height: 55px; font-size: medium; text-align: right; color: #000000; font-weight: normal;">Password*</td>
                <td class="auto-style4" style="height: 55px">
                    <asp:TextBox ID="txt_pswd" runat="server" TextMode="Password" Height="37px" Width="247px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_pswd" ErrorMessage="*Please enter password"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 173px; text-align: right; font-weight: normal;"><span style="font-size: medium; color: #000000;">Confirm Password*</span></td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_cnfrm_pswd" runat="server" TextMode="Password" Height="37px" Width="247px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Please enter confirm password"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pswd" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Password does not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 173px">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_join" runat="server" OnClick="btn_join_Click" Text="Register" Font-Bold="True" Height="34px" Width="95px" />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lbl_note" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
   </asp:Content>